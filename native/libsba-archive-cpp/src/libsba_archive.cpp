#include <jni.h>
#include <zstd.h>

#include <cstdint>
#include <limits>
#include <string>
#include <vector>

namespace {

void throwJava(JNIEnv* env, const char* class_name, const std::string& message) {
  jclass type = env->FindClass(class_name);
  if (type != nullptr) {
    env->ThrowNew(type, message.c_str());
    env->DeleteLocalRef(type);
  }
}

bool copyInput(JNIEnv* env, jbyteArray input, std::vector<std::uint8_t>& bytes) {
  if (input == nullptr) {
    throwJava(env, "java/lang/IllegalArgumentException", "input must not be null");
    return false;
  }
  const jsize length = env->GetArrayLength(input);
  bytes.resize(static_cast<std::size_t>(length));
  if (length != 0) {
    env->GetByteArrayRegion(input, 0, length, reinterpret_cast<jbyte*>(bytes.data()));
    if (env->ExceptionCheck()) return false;
  }
  return true;
}

jbyteArray makeByteArray(JNIEnv* env, const std::uint8_t* bytes, std::size_t size) {
  if (size > static_cast<std::size_t>(std::numeric_limits<jsize>::max())) {
    throwJava(env, "java/lang/IllegalArgumentException", "output exceeds Java array limit");
    return nullptr;
  }
  jbyteArray output = env->NewByteArray(static_cast<jsize>(size));
  if (output == nullptr) return nullptr;
  if (size != 0) {
    env->SetByteArrayRegion(output, 0, static_cast<jsize>(size), reinterpret_cast<const jbyte*>(bytes));
    if (env->ExceptionCheck()) return nullptr;
  }
  return output;
}

}  // namespace

extern "C" JNIEXPORT jbyteArray JNICALL
Java_com_swiftapps_sba_SbaZstdNative_compressZstdBytes(JNIEnv* env, jobject /* self */, jbyteArray input, jint level) {
  std::vector<std::uint8_t> source;
  if (!copyInput(env, input, source)) return nullptr;
  if (level < ZSTD_minCLevel() || level > ZSTD_maxCLevel()) {
    throwJava(env, "java/lang/IllegalArgumentException", "invalid Zstandard compression level");
    return nullptr;
  }
  const std::size_t capacity = ZSTD_compressBound(source.size());
  if (ZSTD_isError(capacity)) {
    throwJava(env, "java/lang/IllegalStateException", ZSTD_getErrorName(capacity));
    return nullptr;
  }
  std::vector<std::uint8_t> compressed(capacity);
  const std::size_t written = ZSTD_compress(compressed.data(), compressed.size(), source.data(), source.size(), level);
  if (ZSTD_isError(written)) {
    throwJava(env, "java/lang/IllegalArgumentException", ZSTD_getErrorName(written));
    return nullptr;
  }
  return makeByteArray(env, compressed.data(), written);
}

extern "C" JNIEXPORT jbyteArray JNICALL
Java_com_swiftapps_sba_SbaZstdNative_decompressZstdBytes(JNIEnv* env, jobject /* self */, jbyteArray input) {
  std::vector<std::uint8_t> compressed;
  if (!copyInput(env, input, compressed)) return nullptr;
  if (compressed.empty()) {
    throwJava(env, "java/lang/IllegalArgumentException", "input is not a Zstandard frame");
    return nullptr;
  }
  const unsigned long long frame_size = ZSTD_getFrameContentSize(compressed.data(), compressed.size());
  if (frame_size == ZSTD_CONTENTSIZE_ERROR) {
    throwJava(env, "java/lang/IllegalArgumentException", "invalid Zstandard frame");
    return nullptr;
  }
  if (frame_size == ZSTD_CONTENTSIZE_UNKNOWN || frame_size > static_cast<unsigned long long>(std::numeric_limits<jsize>::max())) {
    throwJava(env, "java/lang/IllegalArgumentException", "frame size is unknown or exceeds Java array limit");
    return nullptr;
  }
  std::vector<std::uint8_t> output(static_cast<std::size_t>(frame_size));
  const std::size_t written = ZSTD_decompress(output.data(), output.size(), compressed.data(), compressed.size());
  if (ZSTD_isError(written)) {
    throwJava(env, "java/lang/IllegalArgumentException", ZSTD_getErrorName(written));
    return nullptr;
  }
  if (written != output.size()) {
    throwJava(env, "java/lang/IllegalArgumentException", "Zstandard frame size mismatch");
    return nullptr;
  }
  return makeByteArray(env, output.data(), written);
}
