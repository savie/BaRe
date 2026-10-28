#include <jni.h>
#include <dlfcn.h>
#include <android/log.h>

namespace {
constexpr const char* kTag = "BaReSbaJniCompat";

template <typename T>
T resolve(JNIEnv* env, const char* symbol) {
    static void* library = dlopen("libsba_archive.so", RTLD_NOW);
    if (library == nullptr) {
        __android_log_print(ANDROID_LOG_ERROR, kTag, "Unable to open libsba_archive.so: %s", dlerror());
    }
    dlerror();
    void* address = library != nullptr ? dlsym(library, symbol) : nullptr;
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
    __android_log_print(ANDROID_LOG_INFO, kTag,
                        "Resolved legacy JNI export: %s", symbol);
    return reinterpret_cast<T>(address);
}
}

extern "C" JNIEXPORT jint JNICALL JNI_OnLoad(JavaVM*, void*) {
    __android_log_print(ANDROID_LOG_INFO, kTag,
                        "libsba_compat.so loaded; legacy SBA forwarding enabled");
    return JNI_VERSION_1_6;
}



extern "C" JNIEXPORT jlongArray JNICALL
Java_com_bareapps_sba_SbaArchiveNative_createArchive(
    JNIEnv* env, jobject self, jint mode, jstring outputPath, jbyteArray metadata,
    jobjectArray entryBytes, jobjectArray entryNames, jintArray entryFlags,
    jobjectArray entryOptions, jobjectArray entryMetadata,
    jint compression, jint compressionLevel, jint encryption, jint cipher,
    jint chunkSize, jint argonIterations, jint argonMemory, jint argonParallelism,
    jint argonOutputLength, jint flags, jbyteArray key, jbyteArray salt,
    jbyteArray nonce, jbyteArray extra, jobject progressListener) {
    using Fn = jlongArray (JNICALL *)(JNIEnv*, jobject, jint, jstring, jbyteArray,
        jobjectArray, jobjectArray, jintArray, jobjectArray, jobjectArray,
        jint, jint, jint, jint, jint, jint, jint, jint, jint, jint,
        jbyteArray, jbyteArray, jbyteArray, jbyteArray, jobject);
    Fn fn = resolve<Fn>(env,
        "Java_com_swiftapps_sba_SbaArchiveNative_createArchive");
    if (fn == nullptr) return nullptr;
    return fn(env, self, mode, outputPath, metadata, entryBytes, entryNames,
        entryFlags, entryOptions, entryMetadata, compression, compressionLevel,
        encryption, cipher, chunkSize, argonIterations, argonMemory,
        argonParallelism, argonOutputLength, flags, key, salt, nonce, extra,
        progressListener);
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_bareapps_sba_SbaRuntimeNative_version(JNIEnv* env, jobject self) {
    using Fn = jstring (JNICALL *)(JNIEnv*, jobject);
    Fn fn = resolve<Fn>(env, "Java_com_swiftapps_sba_SbaRuntimeNative_version");
    if (fn == nullptr) return nullptr;
    return fn(env, self);
}

extern "C" JNIEXPORT jbyteArray JNICALL
Java_com_bareapps_sba_SbaNativeCrypto_deriveArgon2id(
    JNIEnv* env, jobject self, jbyteArray password, jbyteArray salt,
    jint iterations, jint memoryCost, jint parallelism, jint outputLength) {
    using Fn = jbyteArray (JNICALL *)(JNIEnv*, jobject, jbyteArray, jbyteArray,
        jint, jint, jint, jint);
    Fn fn = resolve<Fn>(env,
        "Java_com_swiftapps_sba_SbaNativeCrypto_deriveArgon2id");
    if (fn == nullptr) return nullptr;
    return fn(env, self, password, salt, iterations, memoryCost,
              parallelism, outputLength);
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

extern "C" JNIEXPORT jbyteArray JNICALL
Java_com_bareapps_sba_SbaZstdNative_compressZstdBytes(
    JNIEnv* env, jobject self, jbyteArray input, jint level) {
    using Fn = jbyteArray (JNICALL *)(JNIEnv*, jobject, jbyteArray, jint);
    Fn fn = resolve<Fn>(env,
        "Java_com_swiftapps_sba_SbaZstdNative_compressZstdBytes");
    if (fn == nullptr) return nullptr;
    return fn(env, self, input, level);
}

extern "C" JNIEXPORT jbyteArray JNICALL
Java_com_bareapps_sba_SbaZstdNative_decompressZstdBytes(
    JNIEnv* env, jobject self, jbyteArray input) {
    using Fn = jbyteArray (JNICALL *)(JNIEnv*, jobject, jbyteArray);
    Fn fn = resolve<Fn>(env,
        "Java_com_swiftapps_sba_SbaZstdNative_decompressZstdBytes");
    if (fn == nullptr) return nullptr;
    return fn(env, self, input);
}

extern "C" JNIEXPORT jlongArray JNICALL
Java_com_bareapps_sba_SbaZstdNative_decompressZstdFdToFdRaw(
    JNIEnv* env, jobject self, jint inputFd, jint outputFd, jlong expectedSize,
    jobject progressListener) {
    using Fn = jlongArray (JNICALL *)(JNIEnv*, jobject, jint, jint, jlong, jobject);
    Fn fn = resolve<Fn>(env,
        "Java_com_swiftapps_sba_SbaZstdNative_decompressZstdFdToFdRaw");
    if (fn == nullptr) return nullptr;
    return fn(env, self, inputFd, outputFd, expectedSize, progressListener);
}

extern "C" JNIEXPORT jobjectArray JNICALL
Java_com_bareapps_sba_SbaBareTarNative_extractTarFromFdRaw(
    JNIEnv* env, jobject self, jint fd, jlong offset, jstring destination,
    jint flags, jobjectArray options, jobject progressListener) {
    using Fn = jobjectArray (JNICALL *)(JNIEnv*, jobject, jint, jlong, jstring,
        jint, jobjectArray, jobject);
    Fn fn = resolve<Fn>(env,
        "Java_com_swiftapps_sba_SbaSwiftTarNative_extractTarFromFdRaw");
    if (fn == nullptr) return nullptr;
    return fn(env, self, fd, offset, destination, flags, options, progressListener);
}

extern "C" JNIEXPORT jlongArray JNICALL
Java_com_bareapps_sba_SbaBareTarNative_extractTarFromFdWithStatsRaw(
    JNIEnv* env, jobject self, jint fd, jlong offset, jstring destination,
    jint flags, jobjectArray options, jobject progressListener) {
    using Fn = jlongArray (JNICALL *)(JNIEnv*, jobject, jint, jlong, jstring,
        jint, jobjectArray, jobject);
    Fn fn = resolve<Fn>(env,
        "Java_com_swiftapps_sba_SbaSwiftTarNative_extractTarFromFdWithStatsRaw");
    if (fn == nullptr) return nullptr;
    return fn(env, self, fd, offset, destination, flags, options, progressListener);
}

extern "C" JNIEXPORT jobjectArray JNICALL
Java_com_bareapps_sba_SbaBareTarNative_extractTarZstdFromFdRaw(
    JNIEnv* env, jobject self, jint fd, jlong offset, jlong compressedSize,
    jstring destination, jint flags, jobjectArray options, jobject progressListener) {
    using Fn = jobjectArray (JNICALL *)(JNIEnv*, jobject, jint, jlong, jlong,
        jstring, jint, jobjectArray, jobject);
    Fn fn = resolve<Fn>(env,
        "Java_com_swiftapps_sba_SbaSwiftTarNative_extractTarZstdFromFdRaw");
    if (fn == nullptr) return nullptr;
    return fn(env, self, fd, offset, compressedSize, destination, flags, options,
              progressListener);
}

extern "C" JNIEXPORT jobjectArray JNICALL
Java_com_bareapps_sba_SbaBareTarNative_listTarEntriesFromFdRaw(
    JNIEnv* env, jobject self, jint fd, jlong offset) {
    using Fn = jobjectArray (JNICALL *)(JNIEnv*, jobject, jint, jlong);
    Fn fn = resolve<Fn>(env,
        "Java_com_swiftapps_sba_SbaSwiftTarNative_listTarEntriesFromFdRaw");
    if (fn == nullptr) return nullptr;
    return fn(env, self, fd, offset);
}

extern "C" JNIEXPORT jobjectArray JNICALL
Java_com_bareapps_sba_SbaBareTarNative_listTarEntriesZstdFromFdRaw(
    JNIEnv* env, jobject self, jint fd, jlong offset, jlong compressedSize) {
    using Fn = jobjectArray (JNICALL *)(JNIEnv*, jobject, jint, jlong, jlong);
    Fn fn = resolve<Fn>(env,
        "Java_com_swiftapps_sba_SbaSwiftTarNative_listTarEntriesZstdFromFdRaw");
    if (fn == nullptr) return nullptr;
    return fn(env, self, fd, offset, compressedSize);
}

extern "C" JNIEXPORT jobjectArray JNICALL
Java_com_bareapps_sba_SbaBareTarNative_extractAegisArchiveEntry(
    JNIEnv* env, jobject self, jstring archivePath, jlong entryOffset,
    jlong plainSize, jlong cipherSize, jlong entrySize, jstring destination,
    jint flags, jobjectArray options, jint chunkSize, jint cipher,
    jbyteArray key, jbyteArray nonce, jbyteArray aad, jlong metadataOffset,
    jint metadataSize, jobject progressListener) {
    using Fn = jobjectArray (JNICALL *)(JNIEnv*, jobject, jstring, jlong, jlong,
        jlong, jlong, jstring, jint, jobjectArray, jint, jint, jbyteArray,
        jbyteArray, jbyteArray, jlong, jint, jobject);
    Fn fn = resolve<Fn>(env,
        "Java_com_swiftapps_sba_SbaSwiftTarNative_extractAegisArchiveEntry");
    if (fn == nullptr) return nullptr;
    return fn(env, self, archivePath, entryOffset, plainSize, cipherSize,
        entrySize, destination, flags, options, chunkSize, cipher, key, nonce,
        aad, metadataOffset, metadataSize, progressListener);
}

extern "C" JNIEXPORT jobjectArray JNICALL
Java_com_bareapps_sba_SbaBareTarNative_extractAegisArchiveEntryFused(
    JNIEnv* env, jobject self, jstring archivePath, jlong entryOffset,
    jlong plainSize, jlong cipherSize, jlong entrySize, jstring destination,
    jint flags, jobjectArray options, jint chunkSize, jint cipher,
    jbyteArray key, jbyteArray nonce, jbyteArray aad, jlong metadataOffset,
    jint metadataSize, jobject progressListener) {
    using Fn = jobjectArray (JNICALL *)(JNIEnv*, jobject, jstring, jlong, jlong,
        jlong, jlong, jstring, jint, jobjectArray, jint, jint, jbyteArray,
        jbyteArray, jbyteArray, jlong, jint, jobject);
    Fn fn = resolve<Fn>(env,
        "Java_com_swiftapps_sba_SbaSwiftTarNative_extractAegisArchiveEntryFused");
    if (fn == nullptr) return nullptr;
    return fn(env, self, archivePath, entryOffset, plainSize, cipherSize,
        entrySize, destination, flags, options, chunkSize, cipher, key, nonce,
        aad, metadataOffset, metadataSize, progressListener);
}

