#include <jni.h>
#include <algorithm>
#include <cerrno>
#include <cstdint>
#include <cstring>
#include <string>
#include <vector>
#include <unistd.h>

namespace {

jstring toJavaString(JNIEnv* env, const char* value) {
    return env->NewStringUTF(value);
}


struct TarHeader {
    char name[100]; char mode[8]; char uid[8]; char gid[8]; char size[12];
    char mtime[12]; char checksum[8]; char typeflag; char linkname[100];
    char magic[6]; char version[2]; char uname[32]; char gname[32];
    char devmajor[8]; char devminor[8]; char prefix[155]; char padding[12];
};

uint64_t parseOctal(const char* field, size_t length) {
    uint64_t value = 0;
    bool started = false;
    for (size_t i = 0; i < length && field[i] != '\\0'; ++i) {
        const unsigned char c = static_cast<unsigned char>(field[i]);
        if (c == ' ' || c == '\\0') { if (started) break; continue; }
        if (c < '0' || c > '7') return 0;
        started = true;
        value = (value << 3) + (c - '0');
    }
    return value;
}

bool readExactAt(int fd, void* out, size_t size, off_t offset) {
    auto* p = static_cast<unsigned char*>(out);
    size_t done = 0;
    while (done < size) {
        const ssize_t n = pread(fd, p + done, size - done, offset + static_cast<off_t>(done));
        if (n < 0 && errno == EINTR) continue;
        if (n <= 0) return false;
        done += static_cast<size_t>(n);
    }
    return true;
}

std::string tarName(const TarHeader& h) {
    const size_t n = strnlen(h.name, sizeof(h.name));
    const size_t p = strnlen(h.prefix, sizeof(h.prefix));
    if (p == 0) return std::string(h.name, n);
    return std::string(h.prefix, p) + "/" + std::string(h.name, n);
}

jobjectArray listTar(JNIEnv* env, int fd, jlong startOffset) {
    if (startOffset < 0) {
        jclass e = env->FindClass("java/lang/IllegalArgumentException");
        if (e) env->ThrowNew(e, "TAR offset must be non-negative");
        return nullptr;
    }
    jclass entryClass = env->FindClass("com/bareapps/barebackup/sba/internal/tar/SbaTarEntryInfo");
    if (!entryClass) return nullptr;
    jmethodID ctor = env->GetMethodID(entryClass, "<init>",
        "(Ljava/lang/String;ILjava/lang/String;IJJJZ[Ljava/lang/String;)V");
    if (!ctor) return nullptr;
    std::vector<jobject> entries;
    off_t offset = static_cast<off_t>(startOffset);
    for (size_t count = 0; count < 1000000; ++count) {
        TarHeader h{};
        if (!readExactAt(fd, &h, sizeof(h), offset)) break;
        bool zero = true;
        const auto* bytes = reinterpret_cast<const unsigned char*>(&h);
        for (size_t i = 0; i < sizeof(h); ++i) if (bytes[i] != 0) { zero = false; break; }
        if (zero) break;
        const uint64_t size = parseOctal(h.size, sizeof(h.size));
        const uint64_t mtime = parseOctal(h.mtime, sizeof(h.mtime));
        std::string name = tarName(h);
        if (name.empty()) break;
        std::string link(h.linkname, strnlen(h.linkname, sizeof(h.linkname)));
        jint type = 1;
        switch (h.typeflag) {
            case '5': type = 2; break;
            case '2': type = 3; break;
            case '1': type = 4; break;
            case '6': type = 5; break;
            case '3': type = 6; break;
            case '4': type = 7; break;
            default: type = (h.typeflag == 0 || h.typeflag == '0' || h.typeflag == '7') ? 1 : 99; break;
        }
        jstring jname = env->NewStringUTF(name.c_str());
        jstring jlink = link.empty() ? nullptr : env->NewStringUTF(link.c_str());
        jstring empty = env->NewStringUTF("");
        jobjectArray xattrs = env->NewObjectArray(0, env->FindClass("java/lang/String"), empty);
        jobject entry = env->NewObject(entryClass, ctor, jname, type, jlink,
            static_cast<jint>(parseOctal(h.mode, sizeof(h.mode))),
            static_cast<jlong>(size), static_cast<jlong>(size),
            static_cast<jlong>(mtime * 1000ULL), JNI_FALSE, xattrs);
        if (jname) env->DeleteLocalRef(jname);
        if (jlink) env->DeleteLocalRef(jlink);
        if (empty) env->DeleteLocalRef(empty);
        if (xattrs) env->DeleteLocalRef(xattrs);
        if (!entry) return nullptr;
        entries.push_back(entry);
        const uint64_t blocks = (size + 511ULL) / 512ULL;
        if (blocks > (static_cast<uint64_t>(INT64_MAX) / 512ULL)) break;
        const uint64_t step = 512ULL + blocks * 512ULL;
        if (step > static_cast<uint64_t>(INT64_MAX - offset)) break;
        offset += static_cast<off_t>(step);
    }
    jobjectArray result = env->NewObjectArray(static_cast<jsize>(entries.size()), entryClass, nullptr);
    if (result) {
        for (jsize i = 0; i < static_cast<jsize>(entries.size()); ++i) {
            env->SetObjectArrayElement(result, i, entries[static_cast<size_t>(i)]);
            env->DeleteLocalRef(entries[static_cast<size_t>(i)]);
        }
    } else {
        for (jobject entry : entries) env->DeleteLocalRef(entry);
    }
    return result;
}

void throwUnsupported(JNIEnv* env, const char* operation) {
    jclass exception = env->FindClass("java/lang/UnsupportedOperationException");
    if (exception != nullptr) {
        std::string message = std::string("BΛR☰ SBA native operation is not implemented yet: ") + operation;
        env->ThrowNew(exception, message.c_str());
    }
}

}  // namespace

// This is BΛR☰'s independent JNI library, not the reference SwiftBackup binary.
// Keep the runtime probe functional so packaging/loader checks can be verified
// separately from the archive algorithms.
extern "C" JNIEXPORT jstring JNICALL
Java_com_bareapps_barebackup_sba_SbaRuntimeNative_version(JNIEnv* env, jobject) {
    return toJavaString(env, "bare-sba-native/0.1.0 (algorithms pending)");
}

extern "C" JNIEXPORT jboolean JNICALL
Java_com_bareapps_barebackup_sba_SbaLibaegisCryptoNative_isAvailable(JNIEnv*, jobject) {
    // Do not advertise cryptographic support until an audited AEGIS implementation
    // is linked and test vectors pass.
    return JNI_FALSE;
}

extern "C" JNIEXPORT jbyteArray JNICALL
Java_com_bareapps_barebackup_sba_SbaNativeCrypto_deriveArgon2id(
    JNIEnv* env, jobject, jbyteArray, jbyteArray, jint, jint, jint, jint) {
    throwUnsupported(env, "Argon2id KDF");
    return nullptr;
}

extern "C" JNIEXPORT jbyteArray JNICALL
Java_com_bareapps_barebackup_sba_SbaZstdNative_compressZstdBytes(
    JNIEnv* env, jobject, jbyteArray, jint) {
    throwUnsupported(env, "Zstandard compression");
    return nullptr;
}

extern "C" JNIEXPORT jbyteArray JNICALL
Java_com_bareapps_barebackup_sba_SbaZstdNative_decompressZstdBytes(
    JNIEnv* env, jobject, jbyteArray) {
    throwUnsupported(env, "Zstandard decompression");
    return nullptr;
}

extern "C" JNIEXPORT jlongArray JNICALL
Java_com_bareapps_barebackup_sba_SbaArchiveNative_createArchive(
    JNIEnv* env, jobject, jint, jstring, jbyteArray, jobjectArray, jobjectArray,
    jintArray, jobjectArray, jobjectArray, jint, jint, jint, jint, jint, jint,
    jint, jint, jint, jint, jbyteArray, jbyteArray, jbyteArray, jbyteArray, jobject) {
    throwUnsupported(env, "SBA archive creation");
    return nullptr;
}

extern "C" JNIEXPORT jlongArray JNICALL
Java_com_bareapps_barebackup_sba_SbaLibaegisCryptoNative_decryptAegis128X2ChunkedEntryFdRaw(
    JNIEnv* env, jobject, jint, jlong, jint, jbyteArray, jbyteArray, jbyteArray,
    jlong, jlong, jint, jobject) {
    throwUnsupported(env, "AEGIS-128X2 chunk decryption");
    return nullptr;
}

extern "C" JNIEXPORT jlongArray JNICALL
Java_com_bareapps_barebackup_sba_SbaLibaegisCryptoNative_decryptAegis256ChunkedEntryFdRaw(
    JNIEnv* env, jobject, jint, jlong, jint, jbyteArray, jbyteArray, jbyteArray,
    jlong, jlong, jint, jobject) {
    throwUnsupported(env, "AEGIS-256 chunk decryption");
    return nullptr;
}

extern "C" JNIEXPORT jlongArray JNICALL
Java_com_bareapps_barebackup_sba_SbaLibaegisCryptoNative_encryptAegis256ChunkedEntryFdRaw(
    JNIEnv* env, jobject, jint, jlong, jint, jbyteArray, jbyteArray, jbyteArray,
    jlong, jlong, jint, jobject) {
    throwUnsupported(env, "AEGIS-256 chunk encryption");
    return nullptr;
}

extern "C" JNIEXPORT jobjectArray JNICALL
Java_com_bareapps_barebackup_sba_SbaSwiftTarNative_listTarEntriesFromFdRaw(
    JNIEnv* env, jobject, jint fd, jlong offset) {
    return listTar(env, fd, offset);
}

extern "C" JNIEXPORT jobjectArray JNICALL
Java_com_bareapps_barebackup_sba_SbaSwiftTarNative_listTarEntriesZstdFromFdRaw(
    JNIEnv* env, jobject, jint, jlong, jlong) {
    throwUnsupported(env, "Zstandard TAR listing requires the Zstandard decoder");
    return nullptr;
}

extern "C" JNIEXPORT jobjectArray JNICALL
Java_com_bareapps_barebackup_sba_SbaSwiftTarNative_extractTarFromFdRaw(
    JNIEnv* env, jobject, jint, jlong, jstring, jint, jobjectArray, jobject) {
    throwUnsupported(env, "TAR extraction");
    return nullptr;
}

extern "C" JNIEXPORT jlongArray JNICALL
Java_com_bareapps_barebackup_sba_SbaSwiftTarNative_extractTarFromFdWithStatsRaw(
    JNIEnv* env, jobject, jint, jlong, jstring, jint, jobjectArray, jobject) {
    throwUnsupported(env, "TAR extraction with statistics");
    return nullptr;
}

extern "C" JNIEXPORT jobjectArray JNICALL
Java_com_bareapps_barebackup_sba_SbaSwiftTarNative_extractTarZstdFromFdRaw(
    JNIEnv* env, jobject, jint, jlong, jlong, jstring, jint, jobjectArray, jobject) {
    throwUnsupported(env, "Zstandard TAR extraction");
    return nullptr;
}

extern "C" JNIEXPORT jobjectArray JNICALL
Java_com_bareapps_barebackup_sba_SbaSwiftTarNative_extractAegisArchiveEntry(
    JNIEnv* env, jobject, jstring, jlong, jlong, jlong, jlong, jstring, jint,
    jobjectArray, jint, jint, jbyteArray, jbyteArray, jbyteArray, jlong, jint, jobject) {
    throwUnsupported(env, "AEGIS archive entry extraction");
    return nullptr;
}

extern "C" JNIEXPORT jobjectArray JNICALL
Java_com_bareapps_barebackup_sba_SbaSwiftTarNative_extractAegisArchiveEntryFused(
    JNIEnv* env, jobject, jstring, jlong, jlong, jlong, jlong, jstring, jint,
    jobjectArray, jint, jint, jbyteArray, jbyteArray, jbyteArray, jlong, jint, jobject) {
    throwUnsupported(env, "fused AEGIS archive entry extraction");
    return nullptr;
}

extern "C" JNIEXPORT jlongArray JNICALL
Java_com_bareapps_barebackup_sba_SbaZstdNative_decompressZstdFdToFdRaw(
    JNIEnv* env, jobject, jint, jint, jlong, jobject) {
    throwUnsupported(env, "file-descriptor Zstandard decompression");
    return nullptr;
}

/*
 * The reference arm64-v8a ELF exports these additional JNI names even though
 * the corresponding declarations are absent from the decompiled Java classes.
 * Preserve their symbol inventory for audit visibility; signatures/semantics
 * cannot be inferred from ELF export names alone, and calls fail closed.
 */
extern "C" JNIEXPORT jlongArray JNICALL
Java_com_bareapps_barebackup_sba_SbaSwiftTarNative_createTarToFdWithWriteStatsRaw(
    JNIEnv* env, jobject, ...) {
    throwUnsupported(env, "TAR creation to file descriptor");
    return nullptr;
}

extern "C" JNIEXPORT jlongArray JNICALL
Java_com_bareapps_barebackup_sba_SbaZstdNative_compressZstdFdToFdRaw(
    JNIEnv* env, jobject, ...) {
    throwUnsupported(env, "Zstandard FD-to-FD compression");
    return nullptr;
}

extern "C" JNIEXPORT jlongArray JNICALL
Java_com_bareapps_barebackup_sba_SbaZstdNative_compressZstdFileToFdRaw(
    JNIEnv* env, jobject, ...) {
    throwUnsupported(env, "Zstandard file-to-FD compression");
    return nullptr;
}
