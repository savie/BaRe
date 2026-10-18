#include <jni.h>
#include <string>

namespace {

jstring toJavaString(JNIEnv* env, const char* value) {
    return env->NewStringUTF(value);
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
    JNIEnv* env, jobject, jint, jlong) {
    throwUnsupported(env, "TAR entry listing");
    return nullptr;
}

extern "C" JNIEXPORT jobjectArray JNICALL
Java_com_bareapps_barebackup_sba_SbaSwiftTarNative_listTarEntriesZstdFromFdRaw(
    JNIEnv* env, jobject, jint, jlong, jlong) {
    throwUnsupported(env, "Zstandard TAR entry listing");
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
