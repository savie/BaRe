#include <jni.h>

#include <dlfcn.h>
#include <fcntl.h>
#include <netdb.h>
#include <netinet/in.h>
#include <poll.h>
#include <sys/socket.h>
#include <unistd.h>

#include <cerrno>
#include <cstdio>
#include <string>

namespace {

// SwiftBackup 5.1.0 (620) XOR-encodes these constants with 0x2e.
constexpr unsigned char kAndroidClientId[] = {
    0x1f, 0x1e, 0x1c, 0x17, 0x16, 0x1f, 0x1f, 0x18, 0x1d, 0x1a, 0x1a, 0x19,
    0x1c, 0x03, 0x4c, 0x1f, 0x1e, 0x4d, 0x4a, 0x44, 0x1e, 0x5f, 0x5f, 0x4b,
    0x4f, 0x48, 0x42, 0x4c, 0x47, 0x5c, 0x4b, 0x5e, 0x42, 0x44, 0x43, 0x5d,
    0x1b, 0x48, 0x4d, 0x19, 0x5b, 0x4d, 0x4c, 0x5d, 0x4a, 0x19, 0x00, 0x4f,
    0x5e, 0x5e, 0x5d, 0x00, 0x49, 0x41, 0x41, 0x49, 0x42, 0x4b, 0x5b, 0x5d,
    0x4b, 0x5c, 0x4d, 0x41, 0x40, 0x5a, 0x4b, 0x40, 0x5a, 0x00, 0x4d, 0x41,
    0x43
};

constexpr unsigned char kWebClientId[] = {
    0x1f, 0x1e, 0x1c, 0x17, 0x16, 0x1f, 0x1f, 0x18, 0x1d, 0x1a, 0x1a, 0x19,
    0x1c, 0x03, 0x43, 0x41, 0x1a, 0x1c, 0x44, 0x19, 0x1d, 0x58, 0x1b, 0x4c,
    0x1f, 0x5b, 0x1c, 0x1d, 0x4c, 0x41, 0x5a, 0x18, 0x48, 0x42, 0x4c, 0x41,
    0x4a, 0x42, 0x17, 0x5f, 0x4a, 0x17, 0x45, 0x4c, 0x41, 0x45, 0x00, 0x4f,
    0x5e, 0x5e, 0x5d, 0x00, 0x49, 0x41, 0x41, 0x49, 0x42, 0x4b, 0x5b, 0x5d,
    0x4b, 0x5c, 0x4d, 0x41, 0x40, 0x5a, 0x4b, 0x40, 0x5a, 0x00, 0x4d, 0x41,
    0x43
};

std::string decodeClientId(const unsigned char* encoded, size_t length) {
    std::string decoded;
    decoded.reserve(length);
    for (size_t i = 0; i < length; ++i) {
        decoded.push_back(static_cast<char>(encoded[i] ^ 0x2e));
    }
    return decoded;
}

using GetNetworkBlockedReason = int (*)(int socket_fd);

GetNetworkBlockedReason getNetworkBlockedReasonFunction() {
    static void* const android_handle = dlopen("libandroid.so", RTLD_NOW);
    static auto const function =
        android_handle == nullptr
            ? nullptr
            : reinterpret_cast<GetNetworkBlockedReason>(
                  dlsym(android_handle, "android_getnetworkblockedreason"));
    return function;
}

bool isBlockedByAndroidNetworkPolicy(int socket_fd) {
    const auto function = getNetworkBlockedReasonFunction();
    return function != nullptr && function(socket_fd) == 1;
}

bool isReferenceRetryErrno(int error) {
    // Reconstructed from arm64-v8a disassembly: errno 110, 114, 115, 13 and 1.
    return error == ETIMEDOUT || error == EALREADY || error == EINPROGRESS ||
           error == EACCES || error == EPERM;
}

int clampReferenceTimeout(int timeout_ms) {
    if (timeout_ms < 50) return 50;
    if (timeout_ms > 2000) return 2000;
    return timeout_ms;
}

}  // namespace

extern "C" JNIEXPORT jstring JNICALL
Java_com_bareapps_barebackup_BareApp_getGoogleAuthAndroidClientId(JNIEnv* env, jobject) {
    const std::string client_id =
        decodeClientId(kAndroidClientId, sizeof(kAndroidClientId));
    return env->NewStringUTF(client_id.c_str());
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_bareapps_barebackup_BareApp_getGoogleAuthWebClientId(JNIEnv* env, jobject) {
    const std::string client_id = decodeClientId(kWebClientId, sizeof(kWebClientId));
    return env->NewStringUTF(client_id.c_str());
}

extern "C" JNIEXPORT jboolean JNICALL
Java_com_bareapps_barebackup_BareApp_isLocalNetworkTcpBlockedByPermission(
    JNIEnv* env, jobject, jstring host, jint port, jint timeout_ms) {
    if (host == nullptr || port < 1 || port > 65535) {
        return JNI_FALSE;
    }

    const char* host_chars = env->GetStringUTFChars(host, nullptr);
    if (host_chars == nullptr) {
        return JNI_FALSE;
    }

    char service[16];
    std::snprintf(service, sizeof(service), "%d", static_cast<int>(port));

    addrinfo hints{};
    hints.ai_socktype = SOCK_STREAM;
    hints.ai_protocol = IPPROTO_TCP;
    addrinfo* addresses = nullptr;
    const int resolve_result = getaddrinfo(host_chars, service, &hints, &addresses);
    env->ReleaseStringUTFChars(host, host_chars);
    if (resolve_result != 0 || addresses == nullptr) {
        if (addresses != nullptr) freeaddrinfo(addresses);
        return JNI_FALSE;
    }

    bool blocked = false;
    for (addrinfo* address = addresses; address != nullptr; address = address->ai_next) {
        const int socket_fd =
            socket(address->ai_family, address->ai_socktype, address->ai_protocol);
        if (socket_fd < 0) continue;

        const int flags = fcntl(socket_fd, F_GETFL, 0);
        if (flags < 0 || fcntl(socket_fd, F_SETFL, flags | O_NONBLOCK) < 0) {
            close(socket_fd);
            continue;
        }

        const int connect_result =
            connect(socket_fd, address->ai_addr, address->ai_addrlen);
        if (connect_result == 0) {
            blocked = isBlockedByAndroidNetworkPolicy(socket_fd);
            close(socket_fd);
            break;
        }

        const int connect_error = errno;
        if (!isReferenceRetryErrno(connect_error)) {
            close(socket_fd);
            continue;
        }

        if (isBlockedByAndroidNetworkPolicy(socket_fd)) {
            blocked = true;
            close(socket_fd);
            break;
        }

        pollfd descriptor{};
        descriptor.fd = socket_fd;
        descriptor.events = POLLOUT;
        (void)poll(&descriptor, 1, clampReferenceTimeout(timeout_ms));

        if (isBlockedByAndroidNetworkPolicy(socket_fd)) {
            blocked = true;
            close(socket_fd);
            break;
        }

        int socket_error = 0;
        socklen_t socket_error_length = sizeof(socket_error);
        if (getsockopt(socket_fd, SOL_SOCKET, SO_ERROR, &socket_error,
                       &socket_error_length) != 0) {
            close(socket_fd);
            continue;
        }

        if (isReferenceRetryErrno(socket_error)) {
            blocked = isBlockedByAndroidNetworkPolicy(socket_fd);
            close(socket_fd);
            break;
        }

        close(socket_fd);
    }

    freeaddrinfo(addresses);
    return blocked ? JNI_TRUE : JNI_FALSE;
}
