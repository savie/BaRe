#include <jni.h>
#define ZSTD_STATIC_LINKING_ONLY
#include <zstd.h>

#include <cstdint>
#include <cstring>
#include <limits>
#include <cerrno>
#include <unistd.h>
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
  if (level < 1 || level > 22) {
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

  unsigned long long output_bound = frame_size;
  if (frame_size == ZSTD_CONTENTSIZE_UNKNOWN) {
    output_bound = ZSTD_decompressBound(compressed.data(), compressed.size());
    if (output_bound == ZSTD_CONTENTSIZE_ERROR) {
      throwJava(env, "java/lang/IllegalArgumentException", "cannot determine Zstandard output bound");
      return nullptr;
    }
  }
  if (output_bound > static_cast<unsigned long long>(std::numeric_limits<jsize>::max())) {
    throwJava(env, "java/lang/IllegalArgumentException", "decompressed output exceeds Java array limit");
    return nullptr;
  }

  // Allocate one byte even for an empty frame so the C API receives a valid destination pointer.
  std::vector<std::uint8_t> output(static_cast<std::size_t>(output_bound == 0 ? 1 : output_bound));
  const std::size_t written = ZSTD_decompress(output.data(), output.size(), compressed.data(), compressed.size());
  if (ZSTD_isError(written)) {
    throwJava(env, "java/lang/IllegalArgumentException", ZSTD_getErrorName(written));
    return nullptr;
  }
  if (frame_size != ZSTD_CONTENTSIZE_UNKNOWN && written != frame_size) {
    throwJava(env, "java/lang/IllegalArgumentException", "Zstandard frame size mismatch");
    return nullptr;
  }
  return makeByteArray(env, output.data(), written);
}

extern "C" JNIEXPORT jlongArray JNICALL
Java_com_swiftapps_sba_SbaZstdNative_decompressZstdFdToFdRaw(
    JNIEnv* env, jobject /* self */, jint input_fd, jint output_fd, jlong /* expected_size */,
    jobject /* progress_listener */) {
  if (input_fd < 0 || output_fd < 0) {
    throwJava(env, "java/lang/IllegalArgumentException", "file descriptor must be valid");
    return nullptr;
  }

  ZSTD_DStream* stream = ZSTD_createDStream();
  if (stream == nullptr) {
    throwJava(env, "java/lang/OutOfMemoryError", "could not allocate Zstandard decompression stream");
    return nullptr;
  }
  const std::size_t init_result = ZSTD_initDStream(stream);
  if (ZSTD_isError(init_result)) {
    ZSTD_freeDStream(stream);
    throwJava(env, "java/lang/IllegalStateException", ZSTD_getErrorName(init_result));
    return nullptr;
  }

  constexpr std::size_t kInputChunk = 64 * 1024;
  constexpr std::size_t kOutputChunk = 64 * 1024;
  std::vector<std::uint8_t> input(kInputChunk);
  std::vector<std::uint8_t> output(kOutputChunk);
  std::uint64_t total_read = 0;
  std::uint64_t total_written = 0;
  std::size_t remaining = 1;
  bool saw_input = false;
  bool failed = false;
  std::string error_message;

  while (true) {
    ssize_t count;
    do {
      count = ::read(input_fd, input.data(), input.size());
    } while (count < 0 && errno == EINTR);

    if (count < 0) {
      error_message = std::string("read failed: ") + std::strerror(errno);
      failed = true;
      break;
    }
    if (count == 0) {
      if (!saw_input) {
        error_message = "input is not a Zstandard frame";
        failed = true;
      } else if (remaining != 0) {
        error_message = "truncated Zstandard frame";
        failed = true;
      }
      break;
    }

    saw_input = true;
    total_read += static_cast<std::uint64_t>(count);
    ZSTD_inBuffer in{input.data(), static_cast<std::size_t>(count), 0};
    while (in.pos < in.size) {
      ZSTD_outBuffer out{output.data(), output.size(), 0};
      remaining = ZSTD_decompressStream(stream, &out, &in);
      if (ZSTD_isError(remaining)) {
        error_message = ZSTD_getErrorName(remaining);
        failed = true;
        break;
      }

      std::size_t offset = 0;
      while (offset < out.pos) {
        ssize_t written;
        do {
          written = ::write(output_fd, output.data() + offset, out.pos - offset);
        } while (written < 0 && errno == EINTR);
        if (written <= 0) {
          error_message = std::string("write failed: ") + std::strerror(errno);
          failed = true;
          break;
        }
        offset += static_cast<std::size_t>(written);
        total_written += static_cast<std::uint64_t>(written);
      }
      if (failed) break;
      if (out.pos == 0 && in.pos == in.size && remaining != 0) break;
    }
    if (failed) break;
  }

  ZSTD_freeDStream(stream);
  if (failed) {
    throwJava(env, "java/io/IOException", error_message);
    return nullptr;
  }
  if (total_read > static_cast<std::uint64_t>(std::numeric_limits<jlong>::max()) ||
      total_written > static_cast<std::uint64_t>(std::numeric_limits<jlong>::max())) {
    throwJava(env, "java/lang/IllegalStateException", "stream byte count overflow");
    return nullptr;
  }

  jlong values[2] = {static_cast<jlong>(total_read), static_cast<jlong>(total_written)};
  jlongArray result = env->NewLongArray(2);
  if (result == nullptr) return nullptr;
  env->SetLongArrayRegion(result, 0, 2, values);
  return env->ExceptionCheck() ? nullptr : result;
}
