#include <jni.h>
#include <dlfcn.h>
#include <android/log.h>

namespace {
constexpr const char* kTag = "BaReSbaJniCompat";

template <typename T>
T resolve(JNIEnv* env, const char* symbol) {
    dlerror();
    void* address = dlsym(RTLD_DEFAULT, symbol);
    const char* error = dlerror();
    if (error != nullptr || address == nullptr) {
        __android_log_print(ANDROID_LOG_ERROR, kTag,
                            "Missing legacy JNI export %s: %s",
                            symbol, error != nullptr ? error : "symbol not found");
        jclass errorClass = env->FindClass("java/lang/UnsatisfiedLinkError");
        if (errorClass != nullptr) {
            env->ThrowNew(errorClass, symbol);
        }
        return nullptr;
    }
    return reinterpret_cast<T>(address);
}
}

extern "C" JNIEXPORT jboolean JNICALL
Java_com_bareapps_sba_SbaLibaegisCryptoNative_isAvailable(
    JNIEnv* env, jobject self) {
    using Fn = jboolean (JNICALL *)(JNIEnv*, jobject);
    Fn fn = resolve<Fn>(env,
        "Java_com_swiftapps_sba_SbaLibaegisCryptoNative_isAvailable");
    if (fn == nullptr) return JNI_FALSE;
    return fn(env, self);
}

extern "C" JNIEXPORT jlongArray JNICALL
Java_com_bareapps_sba_SbaLibaegisCryptoNative_decryptAegis128X2ChunkedEntryFdRaw(
    JNIEnv* env, jobject self, jint fd, jlong entryOffset, jint chunkSize,
    jbyteArray key, jbyteArray nonce, jbyteArray aad, jlong plainSize,
    jlong cipherSize, jint flags, jobject progressListener) {
    using Fn = jlongArray (JNICALL *)(JNIEnv*, jobject, jint, jlong, jint,
        jbyteArray, jbyteArray, jbyteArray, jlong, jlong, jint, jobject);
    Fn fn = resolve<Fn>(env,
        "Java_com_swiftapps_sba_SbaLibaegisCryptoNative_decryptAegis128X2ChunkedEntryFdRaw");
    if (fn == nullptr) return nullptr;
    return fn(env, self, fd, entryOffset, chunkSize, key, nonce, aad,
              plainSize, cipherSize, flags, progressListener);
}

extern "C" JNIEXPORT jlongArray JNICALL
Java_com_bareapps_sba_SbaLibaegisCryptoNative_decryptAegis256ChunkedEntryFdRaw(
    JNIEnv* env, jobject self, jint fd, jlong entryOffset, jint chunkSize,
    jbyteArray key, jbyteArray nonce, jbyteArray aad, jlong plainSize,
    jlong cipherSize, jint flags, jobject progressListener) {
    using Fn = jlongArray (JNICALL *)(JNIEnv*, jobject, jint, jlong, jint,
        jbyteArray, jbyteArray, jbyteArray, jlong, jlong, jint, jobject);
    Fn fn = resolve<Fn>(env,
        "Java_com_swiftapps_sba_SbaLibaegisCryptoNative_decryptAegis256ChunkedEntryFdRaw");
    if (fn == nullptr) return nullptr;
    return fn(env, self, fd, entryOffset, chunkSize, key, nonce, aad,
              plainSize, cipherSize, flags, progressListener);
}
