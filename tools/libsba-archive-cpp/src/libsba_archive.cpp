#include <jni.h>
#define ZSTD_STATIC_LINKING_ONLY
#include <zstd.h>
#include <argon2.h>
#include <aegis.h>

#include <cstdint>
#include <chrono>
#include <algorithm>
#include <cstring>
#include <cstdio>
#include <cstdlib>
#include <cmath>
#include <limits>
#include <cerrno>
#include <unistd.h>
#include <fcntl.h>
#include <sys/stat.h>
#include <sys/types.h>
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

bool notifyProgress(JNIEnv* env, jobject listener, jlong completed, jlong total) {
  if (listener == nullptr) return true;
  jclass type = env->GetObjectClass(listener);
  if (type == nullptr) return false;
  jmethodID cancelled = env->GetMethodID(type, "isCancellationRequested", "()Z");
  jmethodID progress = env->GetMethodID(type, "onProgress", "(JJ)V");
  env->DeleteLocalRef(type);
  if (cancelled == nullptr || progress == nullptr) return false;
  if (env->CallBooleanMethod(listener, cancelled) == JNI_TRUE) {
    throwJava(env, "java/util/concurrent/CancellationException", "Zstandard decompression cancelled");
    return false;
  }
  if (env->ExceptionCheck()) return false;
  env->CallVoidMethod(listener, progress, completed, total);
  return !env->ExceptionCheck();
}

struct WipeVectorOnExit {
  std::vector<std::uint8_t>& bytes;
  ~WipeVectorOnExit() {
    volatile std::uint8_t* data = bytes.data();
    for (std::size_t i = 0; i < bytes.size(); ++i) data[i] = 0;
  }
};

jstring newJavaStringUtf8(JNIEnv* env, const std::string& input) {
  std::vector<jchar> utf16;
  utf16.reserve(input.size());
  for (std::size_t i = 0; i < input.size();) {
    const auto first = static_cast<std::uint8_t>(input[i]);
    std::uint32_t cp = 0;
    std::size_t count = 0;
    if (first <= 0x7f) {
      cp = first;
      count = 1;
    } else if (first >= 0xc2 && first <= 0xdf) {
      cp = first & 0x1f;
      count = 2;
    } else if (first >= 0xe0 && first <= 0xef) {
      cp = first & 0x0f;
      count = 3;
    } else if (first >= 0xf0 && first <= 0xf4) {
      cp = first & 0x07;
      count = 4;
    } else {
      throwJava(env, "java/io/IOException", "TAR path contains invalid UTF-8");
      return nullptr;
    }
    if (count > input.size() - i) {
      throwJava(env, "java/io/IOException", "TAR path contains truncated UTF-8");
      return nullptr;
    }
    for (std::size_t j = 1; j < count; ++j) {
      const auto next = static_cast<std::uint8_t>(input[i + j]);
      if ((next & 0xc0) != 0x80) {
        throwJava(env, "java/io/IOException", "TAR path contains invalid UTF-8 continuation");
        return nullptr;
      }
      cp = (cp << 6) | (next & 0x3f);
    }
    if (cp == 0) {
      throwJava(env, "java/io/IOException", "TAR path contains a NUL character");
      return nullptr;
    }
    if ((count == 2 && cp < 0x80) || (count == 3 && cp < 0x800) ||
        (count == 4 && cp < 0x10000) || cp > 0x10ffff ||
        (cp >= 0xd800 && cp <= 0xdfff)) {
      throwJava(env, "java/io/IOException", "TAR path contains non-canonical UTF-8");
      return nullptr;
    }
    if (cp <= 0xffff) {
      utf16.push_back(static_cast<jchar>(cp));
    } else {
      cp -= 0x10000;
      utf16.push_back(static_cast<jchar>(0xd800 + (cp >> 10)));
      utf16.push_back(static_cast<jchar>(0xdc00 + (cp & 0x3ff)));
    }
    i += count;
  }
  if (utf16.size() > static_cast<std::size_t>(std::numeric_limits<jsize>::max())) {
    throwJava(env, "java/lang/IllegalArgumentException", "TAR path exceeds Java string limit");
    return nullptr;
  }
  const jchar empty = 0;
  return env->NewString(utf16.empty() ? &empty : utf16.data(), static_cast<jsize>(utf16.size()));
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


bool readExact(int fd, void* destination, std::size_t size, std::size_t* received) {
  auto* out = static_cast<std::uint8_t*>(destination);
  std::size_t offset = 0;
  while (offset < size) {
    ssize_t n;
    do { n = ::read(fd, out + offset, size - offset); } while (n < 0 && errno == EINTR);
    if (n < 0) return false;
    if (n == 0) break;
    offset += static_cast<std::size_t>(n);
  }
  if (received != nullptr) *received = offset;
  return true;
}

std::string tarString(const std::uint8_t* p, std::size_t n) {
  std::size_t length = 0;
  while (length < n && p[length] != 0) ++length;
  return std::string(reinterpret_cast<const char*>(p), length);
}

bool tarNumber(const std::uint8_t* p, std::size_t n, std::uint64_t* value) {
  if (n == 0 || value == nullptr) return false;
  if ((p[0] & 0x80u) != 0) {
    // GNU/POSIX base-256 positive values. Signed negative values are not valid for size/mode.
    if ((p[0] & 0x40u) != 0 || n > 9) return false;
    std::uint64_t result = p[0] & 0x3fu;
    for (std::size_t i = 1; i < n; ++i) {
      if (result > (std::numeric_limits<std::uint64_t>::max() - p[i]) / 256) return false;
      result = result * 256 + p[i];
    }
    *value = result;
    return true;
  }
  std::size_t i = 0;
  while (i < n && (p[i] == 0 || p[i] == ' ')) ++i;
  std::uint64_t result = 0;
  bool digit = false;
  for (; i < n && p[i] != 0 && p[i] != ' '; ++i) {
    if (p[i] < '0' || p[i] > '7') return false;
    digit = true;
    if (result > (std::numeric_limits<std::uint64_t>::max() - (p[i] - '0')) / 8) return false;
    result = result * 8 + (p[i] - '0');
  }
  *value = digit ? result : 0;
  return true;
}

bool validTarChecksum(const std::uint8_t* h) {
  std::uint64_t stored = 0;
  if (!tarNumber(h + 148, 8, &stored)) return false;
  std::uint64_t sum = 0;
  for (std::size_t i = 0; i < 512; ++i) sum += (i >= 148 && i < 156) ? 32 : h[i];
  return sum == stored;
}

bool ensureTarParentDirectories(const std::string& root, const std::string& full_path) {
  std::size_t pos = root.size() + (root == "/" ? 0 : 1);
  while ((pos = full_path.find('/', pos)) != std::string::npos) {
    const std::string parent = full_path.substr(0, pos);
    if (::mkdir(parent.c_str(), 0700) != 0 && errno != EEXIST) return false;
    struct stat st {};
    if (::lstat(parent.c_str(), &st) != 0 || !S_ISDIR(st.st_mode)) return false;
    ++pos;
  }
  return true;
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
    JNIEnv* env, jobject /* self */, jint input_fd, jint output_fd, jlong expected_size,
    jobject progress_listener) {
  if (input_fd < 0 || output_fd < 0 || expected_size < -1) {
    throwJava(env, "java/lang/IllegalArgumentException",
        "invalid file descriptor or expected decompressed size");
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
    if (total_read > static_cast<std::uint64_t>(std::numeric_limits<jlong>::max()) ||
        total_written > static_cast<std::uint64_t>(std::numeric_limits<jlong>::max())) {
      error_message = "stream byte count overflow";
      failed = true;
      break;
    }
    if (!notifyProgress(env, progress_listener, static_cast<jlong>(total_written), expected_size)) {
      if (!env->ExceptionCheck()) {
        error_message = "progress callback failed";
        failed = true;
      }
      if (env->ExceptionCheck()) {
        ZSTD_freeDStream(stream);
        return nullptr;
      }
      failed = true;
      break;
    }
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
        if (total_written > static_cast<std::uint64_t>(std::numeric_limits<jlong>::max())) {
          error_message = "stream byte count overflow";
          failed = true;
          break;
        }
        if (expected_size >= 0 && total_written > static_cast<std::uint64_t>(expected_size)) {
          error_message = "decompressed output exceeds expected size";
          failed = true;
          break;
        }
      }
      if (failed) break;
      if (!notifyProgress(env, progress_listener, static_cast<jlong>(total_written), expected_size)) {
        if (env->ExceptionCheck()) {
          ZSTD_freeDStream(stream);
          return nullptr;
        }
        error_message = "progress callback failed";
        failed = true;
        break;
      }
      if (out.pos == 0 && in.pos == in.size && remaining != 0) break;
    }
    if (failed) break;
  }

  ZSTD_freeDStream(stream);
  if (!failed && expected_size >= 0 && total_written != static_cast<std::uint64_t>(expected_size)) {
    error_message = "decompressed output size does not match expected size";
    failed = true;
  }
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

extern "C" JNIEXPORT jobjectArray JNICALL
Java_com_swiftapps_sba_SbaSwiftTarNative_listTarEntriesFromFdRaw(
    JNIEnv* env, jobject /* self */, jint input_fd, jlong max_bytes) {
  if (input_fd < 0 || max_bytes < 0) {
    throwJava(env, "java/lang/IllegalArgumentException", "invalid file descriptor or TAR length");
    return nullptr;
  }

  constexpr std::size_t kBlock = 512;
  std::vector<jobject> entries;
  std::uint64_t consumed = 0;
  std::uint8_t header[kBlock];
  bool ended = false;
  std::string pending_name;
  std::string pending_link;
  std::string global_name;
  std::string global_link;
  bool global_name_set = false;
  bool global_link_set = false;
  bool pending_mtime_set = false;
  bool global_mtime_set = false;
  jlong pending_mtime_ms = 0;
  jlong global_mtime_ms = 0;
  bool pending_size_set = false;
  bool global_size_set = false;
  std::uint64_t pending_size = 0;
  std::uint64_t global_size = 0;

  while (consumed < static_cast<std::uint64_t>(max_bytes)) {
    if (static_cast<std::uint64_t>(max_bytes) - consumed < kBlock) {
      throwJava(env, "java/io/IOException", "TAR data ends in a partial header");
      goto tar_error;
    }
    {
      std::size_t got = 0;
      if (!readExact(input_fd, header, kBlock, &got)) {
        throwJava(env, "java/io/IOException", std::string("TAR read failed: ") + std::strerror(errno));
        goto tar_error;
      }
      if (got == 0) {
        if (consumed < static_cast<std::uint64_t>(max_bytes)) {
          throwJava(env, "java/io/IOException", "TAR ended before supplied data length");
          goto tar_error;
        }
        break;
      }
      if (got != kBlock) {
        throwJava(env, "java/io/IOException", "truncated TAR header");
        goto tar_error;
      }
    }
    consumed += kBlock;
    bool zero = true;
    for (std::uint8_t byte : header) if (byte != 0) { zero = false; break; }
    if (zero) { ended = true; break; }
    if (!validTarChecksum(header)) {
      throwJava(env, "java/io/IOException", "invalid TAR header checksum");
      goto tar_error;
    }

    std::uint64_t size = 0, mode = 0, mtime = 0;
    if (!tarNumber(header + 124, 12, &size) ||
        !tarNumber(header + 100, 8, &mode) ||
        !tarNumber(header + 136, 12, &mtime)) {
      throwJava(env, "java/io/IOException", "unsupported or invalid TAR numeric field");
      goto tar_error;
    }
    char typeflag = static_cast<char>(header[156]);
    const bool is_extension = typeflag == 'x' || typeflag == 'g' || typeflag == 'L' || typeflag == 'K';
    if (!is_extension) {
      if (global_size_set) size = global_size;
      if (pending_size_set) size = pending_size;
      pending_size_set = false;
      pending_size = 0;
    }
    if (size > static_cast<std::uint64_t>(max_bytes) - consumed) {
      throwJava(env, "java/io/IOException", "TAR entry exceeds supplied data length");
      goto tar_error;
    }
    std::uint64_t padded = (size + 511u) & ~std::uint64_t(511u);
    if (padded < size || padded > static_cast<std::uint64_t>(max_bytes) - consumed) {
      throwJava(env, "java/io/IOException", "TAR entry payload exceeds supplied data length");
      goto tar_error;
    }
    if (typeflag == 'x' || typeflag == 'g' || typeflag == 'L' || typeflag == 'K') {
      constexpr std::uint64_t kMaxExtensionSize = 1024 * 1024;
      if (size > kMaxExtensionSize) {
        throwJava(env, "java/io/IOException", "TAR extension metadata exceeds 1 MiB safety limit");
        goto tar_error;
      }
      std::string metadata(static_cast<std::size_t>(size), '\0');
      if (size > 0) {
        std::size_t got = 0;
        if (!readExact(input_fd, metadata.data(), static_cast<std::size_t>(size), &got) || got != size) {
          throwJava(env, "java/io/IOException", "truncated TAR extension metadata");
          goto tar_error;
        }
      }
      std::uint64_t pad = padded - size;
      std::uint8_t discard[512];
      if (pad > 0) {
        std::size_t got = 0;
        if (!readExact(input_fd, discard, static_cast<std::size_t>(pad), &got) || got != pad) {
          throwJava(env, "java/io/IOException", "truncated TAR extension padding");
          goto tar_error;
        }
      }
      consumed += padded;
      if (typeflag == 'L' || typeflag == 'K') {
        while (!metadata.empty() && (metadata.back() == '\0' || metadata.back() == '\n')) metadata.pop_back();
        if (typeflag == 'L') pending_name = metadata;
        else pending_link = metadata;
      } else {
        std::size_t pos = 0;
        while (pos < metadata.size()) {
          std::size_t space = metadata.find(' ', pos);
          if (space == std::string::npos || space == pos) {
            throwJava(env, "java/io/IOException", "malformed PAX record length");
            goto tar_error;
          }
          char* end = nullptr;
          unsigned long long record_len = std::strtoull(metadata.c_str() + pos, &end, 10);
          if (end == metadata.c_str() + pos || *end != ' ' || record_len == 0 ||
              record_len > metadata.size() - pos) {
            throwJava(env, "java/io/IOException", "invalid PAX record length");
            goto tar_error;
          }
          std::size_t record_end = pos + static_cast<std::size_t>(record_len);
          if (record_end > metadata.size() || metadata[record_end - 1] != '\n') {
            throwJava(env, "java/io/IOException", "truncated PAX record");
            goto tar_error;
          }
          std::size_t key_start = static_cast<std::size_t>(end - metadata.c_str()) + 1;
          std::size_t equal = metadata.find('=', key_start);
          if (equal == std::string::npos || equal >= record_end - 1 || equal < key_start) {
            throwJava(env, "java/io/IOException", "PAX record has no key/value separator");
            goto tar_error;
          }
          {
            std::string key = metadata.substr(key_start, equal - key_start);
            std::string value = metadata.substr(equal + 1, record_end - equal - 2);
            if (key == "path") {
              if (typeflag == 'g' && value.empty()) {
                global_name.clear();
                global_name_set = false;
              } else if (typeflag == 'g') {
                global_name = value;
                global_name_set = true;
              } else {
                pending_name = value;
              }
            } else if (key == "linkpath") {
              if (typeflag == 'g' && value.empty()) {
                global_link.clear();
                global_link_set = false;
              } else if (typeflag == 'g') {
                global_link = value;
                global_link_set = true;
              } else {
                pending_link = value;
              }
            } else if (key == "size") {
              if (typeflag == 'g' && value.empty()) {
                global_size = 0;
                global_size_set = false;
              } else {
                if (value.empty() || value[0] < '0' || value[0] > '9') {
                  throwJava(env, "java/io/IOException", "invalid PAX size value");
                  goto tar_error;
                }
                errno = 0;
                char* size_end = nullptr;
                unsigned long long parsed_size = std::strtoull(value.c_str(), &size_end, 10);
                if (errno == ERANGE || size_end == value.c_str() || *size_end != '\0') {
                  throwJava(env, "java/io/IOException", "invalid PAX size value");
                  goto tar_error;
                }
                if (typeflag == 'g') {
                  global_size = static_cast<std::uint64_t>(parsed_size);
                  global_size_set = true;
                } else {
                  pending_size = static_cast<std::uint64_t>(parsed_size);
                  pending_size_set = true;
                }
              }
            } else if (key == "mtime") {
              if (typeflag == 'g' && value.empty()) {
                global_mtime_ms = 0;
                global_mtime_set = false;
              } else {
                char* mtime_end = nullptr;
                long double seconds = std::strtold(value.c_str(), &mtime_end);
                if (mtime_end == value.c_str() || *mtime_end != '\0' || !std::isfinite(seconds)) {
                  throwJava(env, "java/io/IOException", "invalid PAX mtime value");
                  goto tar_error;
                }
                long double millis = seconds * 1000.0L;
                jlong converted = millis > static_cast<long double>(std::numeric_limits<jlong>::max())
                    ? std::numeric_limits<jlong>::max()
                    : (millis < static_cast<long double>(std::numeric_limits<jlong>::min())
                        ? std::numeric_limits<jlong>::min() : static_cast<jlong>(millis));
                if (typeflag == 'g') {
                  global_mtime_ms = converted;
                  global_mtime_set = true;
                } else {
                  pending_mtime_ms = converted;
                  pending_mtime_set = true;
                }
              }
            }
          }
          pos = record_end;
        }
      }
      continue;
    }

    std::string name = tarString(header, 100);
    std::string prefix = tarString(header + 345, 155);
    if (!prefix.empty()) name = prefix + "/" + name;
    std::string link = tarString(header + 157, 100);
    if (global_name_set) name = global_name;
    if (global_link_set) link = global_link;
    if (!pending_name.empty()) name = pending_name;
    if (!pending_link.empty()) link = pending_link;
    pending_name.clear();
    pending_link.clear();
    jint type = 99;
    switch (typeflag) {
      case 0: case '0': type = 1; break;
      case '5': type = 2; break;
      case '2': type = 3; break;
      case '1': type = 4; break;
      case '6': type = 5; break;
      case '3': type = 6; break;
      case '4': type = 7; break;
      default: type = 99; break;
    }
    if (type == 1 && !link.empty()) link.clear();
    jclass string_class = env->FindClass("java/lang/String");
    jclass info_class = env->FindClass("com/swiftapps/sba/internal/tar/SbaTarEntryInfo");
    if (string_class == nullptr || info_class == nullptr) {
      if (string_class != nullptr) env->DeleteLocalRef(string_class);
      if (info_class != nullptr) env->DeleteLocalRef(info_class);
      goto tar_error;
    }
    jmethodID ctor = env->GetMethodID(info_class, "<init>", "(Ljava/lang/String;ILjava/lang/String;IJJJZ[Ljava/lang/String;)V");
    if (ctor == nullptr) {
      env->DeleteLocalRef(string_class); env->DeleteLocalRef(info_class);
      goto tar_error;
    }
    jstring jname = newJavaStringUtf8(env, name);
    jstring jlink = link.empty() ? nullptr : newJavaStringUtf8(env, link);
    jobjectArray xattrs = env->NewObjectArray(0, string_class, nullptr);
    jlong real_size = static_cast<jlong>(size);
    jlong mtime_ms = mtime > static_cast<std::uint64_t>(std::numeric_limits<jlong>::max() / 1000)
        ? std::numeric_limits<jlong>::max() : static_cast<jlong>(mtime * 1000);
    if (global_mtime_set) mtime_ms = global_mtime_ms;
    if (pending_mtime_set) mtime_ms = pending_mtime_ms;
    pending_mtime_set = false;
    pending_mtime_ms = 0;
    jobject entry = nullptr;
    if (jname != nullptr && xattrs != nullptr && !env->ExceptionCheck()) {
      entry = env->NewObject(info_class, ctor, jname, type, jlink,
          static_cast<jint>(mode), static_cast<jlong>(size), real_size, mtime_ms,
          JNI_FALSE, xattrs);
    }
    if (jname != nullptr) env->DeleteLocalRef(jname);
    if (jlink != nullptr) env->DeleteLocalRef(jlink);
    if (xattrs != nullptr) env->DeleteLocalRef(xattrs);
    env->DeleteLocalRef(string_class); env->DeleteLocalRef(info_class);
    if (entry == nullptr || env->ExceptionCheck()) {
      if (entry != nullptr) env->DeleteLocalRef(entry);
      goto tar_error;
    }
    jobject global_entry = env->NewGlobalRef(entry);
    if (global_entry == nullptr) {
      env->DeleteLocalRef(entry);
      goto tar_error;
    }
    entries.push_back(global_entry);
    env->DeleteLocalRef(entry);

    std::uint64_t to_skip = padded;
    std::uint8_t discard[8192];
    while (to_skip > 0) {
      std::size_t want = static_cast<std::size_t>(to_skip < sizeof(discard) ? to_skip : sizeof(discard));
      std::size_t got = 0;
      if (!readExact(input_fd, discard, want, &got) || got != want) {
        throwJava(env, "java/io/IOException", "truncated TAR entry payload");
        goto tar_error;
      }
      to_skip -= got;
    }
    consumed += padded;
  }

  {
    jclass info_class = env->FindClass("com/swiftapps/sba/internal/tar/SbaTarEntryInfo");
    if (info_class == nullptr) goto tar_error;
    jobjectArray result = env->NewObjectArray(static_cast<jsize>(entries.size()), info_class, nullptr);
    env->DeleteLocalRef(info_class);
    if (result == nullptr) goto tar_error;
    for (std::size_t i = 0; i < entries.size(); ++i) {
      env->SetObjectArrayElement(result, static_cast<jsize>(i), entries[i]);
      env->DeleteGlobalRef(entries[i]);
      if (env->ExceptionCheck()) return nullptr;
    }
    (void)ended;
    return result;
  }

tar_error:
  for (jobject entry : entries) env->DeleteGlobalRef(entry);
  return nullptr;
}





extern "C" JNIEXPORT jobjectArray JNICALL
Java_com_swiftapps_sba_SbaSwiftTarNative_listTarEntriesZstdFromFdRaw(
    JNIEnv* env, jobject self, jint input_fd, jlong input_offset, jlong compressed_size) {
  if (input_fd < 0 || input_offset < 0 || compressed_size <= 0 ||
      input_offset > static_cast<jlong>(std::numeric_limits<off_t>::max()) ||
      compressed_size > static_cast<jlong>(std::numeric_limits<off_t>::max()) - input_offset) {
    throwJava(env, "java/lang/IllegalArgumentException",
        "invalid file descriptor or compressed TAR range");
    return nullptr;
  }

  // The API takes a byte range within a seekable archive descriptor. Use pread
  // so parsing does not depend on (or mutate) the shared descriptor position.
  std::FILE* temporary = std::tmpfile();
  if (temporary == nullptr) {
    throwJava(env, "java/io/IOException",
        std::string("could not create temporary TAR listing stream: ") + std::strerror(errno));
    return nullptr;
  }
  const int temporary_fd = ::fileno(temporary);
  ZSTD_DStream* stream = ZSTD_createDStream();
  if (stream == nullptr) {
    std::fclose(temporary);
    throwJava(env, "java/lang/OutOfMemoryError", "could not allocate Zstandard listing stream");
    return nullptr;
  }
  std::size_t zrc = ZSTD_initDStream(stream);
  if (ZSTD_isError(zrc)) {
    ZSTD_freeDStream(stream);
    std::fclose(temporary);
    throwJava(env, "java/lang/IllegalStateException", ZSTD_getErrorName(zrc));
    return nullptr;
  }

  constexpr std::size_t kChunk = 64 * 1024;
  std::vector<std::uint8_t> input(kChunk);
  std::vector<std::uint8_t> output(kChunk);
  std::uint64_t total_input = 0;
  std::uint64_t total_output = 0;
  std::size_t remaining = 1;
  std::string error;
  bool failed = false;

  while (total_input < static_cast<std::uint64_t>(compressed_size)) {
    const std::size_t want = static_cast<std::size_t>(
        std::min<std::uint64_t>(input.size(),
            static_cast<std::uint64_t>(compressed_size) - total_input));
    ssize_t got;
    do {
      got = ::pread(input_fd, input.data(), want,
          static_cast<off_t>(input_offset + static_cast<jlong>(total_input)));
    } while (got < 0 && errno == EINTR);
    if (got < 0) {
      error = std::string("failed to read compressed TAR range: ") + std::strerror(errno);
      failed = true;
      break;
    }
    if (got == 0) {
      error = "compressed TAR range is truncated";
      failed = true;
      break;
    }
    total_input += static_cast<std::uint64_t>(got);
    ZSTD_inBuffer in{input.data(), static_cast<std::size_t>(got), 0};
    while (in.pos < in.size) {
      ZSTD_outBuffer out{output.data(), output.size(), 0};
      zrc = ZSTD_decompressStream(stream, &out, &in);
      if (ZSTD_isError(zrc)) {
        error = std::string("invalid Zstandard TAR stream: ") + ZSTD_getErrorName(zrc);
        failed = true;
        break;
      }
      if (out.pos != 0) {
        std::size_t written = 0;
        while (written < out.pos) {
          ssize_t n;
          do {
            n = ::write(temporary_fd, output.data() + written, out.pos - written);
          } while (n < 0 && errno == EINTR);
          if (n <= 0) {
            error = std::string("failed to spool decompressed TAR: ") + std::strerror(errno);
            failed = true;
            break;
          }
          written += static_cast<std::size_t>(n);
        }
        if (failed) break;
        if (total_output > std::numeric_limits<std::uint64_t>::max() - out.pos) {
          error = "decompressed TAR size overflow";
          failed = true;
          break;
        }
        total_output += out.pos;
      }
      remaining = zrc;
      if (in.pos == 0 && out.pos == 0) {
        error = "Zstandard TAR stream made no progress";
        failed = true;
        break;
      }
    }
    if (failed) break;
  }

  ZSTD_freeDStream(stream);
  if (!failed && (total_input != static_cast<std::uint64_t>(compressed_size) ||
                  remaining != 0 || total_output < 512)) {
    error = "truncated or empty Zstandard TAR stream";
    failed = true;
  }
  if (!failed && ::lseek(temporary_fd, 0, SEEK_SET) < 0) {
    error = std::string("failed to rewind decompressed TAR: ") + std::strerror(errno);
    failed = true;
  }

  jobjectArray result = nullptr;
  if (failed) {
    throwJava(env, "java/io/IOException", error);
  } else if (total_output > static_cast<std::uint64_t>(std::numeric_limits<jlong>::max())) {
    throwJava(env, "java/lang/IllegalArgumentException", "decompressed TAR exceeds supported length");
  } else {
    result = Java_com_swiftapps_sba_SbaSwiftTarNative_listTarEntriesFromFdRaw(
        env, self, temporary_fd, static_cast<jlong>(total_output));
  }
  std::fclose(temporary);
  return result;
}


extern "C" JNIEXPORT jbyteArray JNICALL
Java_com_swiftapps_sba_SbaNativeCrypto_deriveArgon2id(
    JNIEnv* env, jobject /* self */, jbyteArray password, jbyteArray salt,
    jint iterations, jint memory_kib, jint parallelism, jint output_bytes) {
  std::vector<std::uint8_t> password_bytes;
  WipeVectorOnExit wipe_password{password_bytes};
  std::vector<std::uint8_t> salt_bytes;
  if (!copyInput(env, password, password_bytes) ||
      !copyInput(env, salt, salt_bytes)) return nullptr;

  if (password_bytes.empty()) {
    throwJava(env, "java/lang/IllegalArgumentException", "SBA encryption password must not be empty");
    return nullptr;
  }
  if (salt_bytes.size() != 16) {
    throwJava(env, "java/lang/IllegalArgumentException", "SBA Argon2id salt must be 16 bytes");
    return nullptr;
  }
  if (iterations < 1 || iterations > 100) {
    throwJava(env, "java/lang/IllegalArgumentException", "SBA Argon2id iterations out of range");
    return nullptr;
  }
  if (memory_kib < 16384 || memory_kib > 65536) {
    throwJava(env, "java/lang/IllegalArgumentException", "SBA Argon2id memoryKiB out of range");
    return nullptr;
  }
  if (parallelism < 1 || parallelism > 8) {
    throwJava(env, "java/lang/IllegalArgumentException", "SBA Argon2id parallelism out of range");
    return nullptr;
  }
  if (output_bytes < 1) {
    throwJava(env, "java/lang/IllegalArgumentException", "SBA Argon2id output length must be positive");
    return nullptr;
  }

  std::vector<std::uint8_t> output(static_cast<std::size_t>(output_bytes));
  const int rc = argon2id_hash_raw(
      static_cast<std::uint32_t>(iterations),
      static_cast<std::uint32_t>(memory_kib),
      static_cast<std::uint32_t>(parallelism),
      password_bytes.data(), password_bytes.size(),
      salt_bytes.data(), salt_bytes.size(),
      output.data(), output.size());

  // Best-effort wipe of the copied password before releasing its storage.
  volatile std::uint8_t* password_ptr = password_bytes.data();
  for (std::size_t i = 0; i < password_bytes.size(); ++i) password_ptr[i] = 0;
  if (rc != ARGON2_OK) {
    std::fill(output.begin(), output.end(), 0);
    throwJava(env, "java/lang/IllegalStateException", argon2_error_message(rc));
    return nullptr;
  }
  jbyteArray result = makeByteArray(env, output.data(), output.size());
  volatile std::uint8_t* output_ptr = output.data();
  for (std::size_t i = 0; i < output.size(); ++i) output_ptr[i] = 0;
  return result;
}


// Verified from the original x86_64 libsba_archive.so disassembly: version() returns "SwiftTar".
extern "C" JNIEXPORT jstring JNICALL
Java_com_swiftapps_sba_SbaRuntimeNative_version(JNIEnv* env, jobject /* self */) {
  return env->NewStringUTF("SwiftTar");
}


// The original x86_64 binary returns JNI_TRUE unconditionally from this method.
// Actual AEGIS operations remain gated on implementing the original chunk format.
extern "C" JNIEXPORT jboolean JNICALL
Java_com_swiftapps_sba_SbaLibaegisCryptoNative_isAvailable(JNIEnv* /* env */, jobject /* self */) {
  return JNI_TRUE;
}


// Export-parity phase: keep every original JNI entry point discoverable while
// the corresponding archive operation is implemented and tested incrementally.
// These fail closed rather than returning fabricated success metadata.
#define SBA_UNIMPLEMENTED_LONG_ARRAY(symbol, description) \
  extern "C" JNIEXPORT jlongArray JNICALL symbol(JNIEnv* env, jobject /* self */) { \
    throwJava(env, "java/lang/UnsupportedOperationException", description " is not implemented in the C++ candidate yet"); \
    return nullptr; \
  }

#define SBA_UNIMPLEMENTED_OBJECT_ARRAY(symbol, description) \
  extern "C" JNIEXPORT jobjectArray JNICALL symbol(JNIEnv* env, jobject /* self */) { \
    throwJava(env, "java/lang/UnsupportedOperationException", description " is not implemented in the C++ candidate yet"); \
    return nullptr; \
  }

SBA_UNIMPLEMENTED_LONG_ARRAY(
    Java_com_swiftapps_sba_SbaArchiveNative_createArchive,
    "SBA archive creation")

SBA_UNIMPLEMENTED_LONG_ARRAY(
    Java_com_swiftapps_sba_SbaLibaegisCryptoNative_decryptAegis128X2ChunkedEntryFdRaw,
    "AEGIS-128X2 chunk decryption")

SBA_UNIMPLEMENTED_LONG_ARRAY(
    Java_com_swiftapps_sba_SbaLibaegisCryptoNative_decryptAegis256ChunkedEntryFdRaw,
    "AEGIS-256 chunk decryption")

SBA_UNIMPLEMENTED_LONG_ARRAY(
    Java_com_swiftapps_sba_SbaLibaegisCryptoNative_encryptAegis256ChunkedEntryFdRaw,
    "legacy AEGIS-256 chunk encryption")

SBA_UNIMPLEMENTED_LONG_ARRAY(
    Java_com_swiftapps_sba_SbaSwiftTarNative_createTarToFdWithWriteStatsRaw,
    "legacy TAR creation with write statistics")

SBA_UNIMPLEMENTED_OBJECT_ARRAY(
    Java_com_swiftapps_sba_SbaSwiftTarNative_extractAegisArchiveEntry,
    "AEGIS archive-entry extraction")

SBA_UNIMPLEMENTED_OBJECT_ARRAY(
    Java_com_swiftapps_sba_SbaSwiftTarNative_extractAegisArchiveEntryFused,
    "fused AEGIS archive-entry extraction")

extern "C" JNIEXPORT jobjectArray JNICALL
Java_com_swiftapps_sba_SbaSwiftTarNative_extractTarFromFdRaw(
    JNIEnv* env, jobject /* self */, jint input_fd, jlong tar_bytes,
    jstring destination, jint /* options */, jobjectArray /* filters */,
    jobject progress_listener) {
  if (input_fd < 0 || tar_bytes < 0 || destination == nullptr) {
    throwJava(env, "java/lang/IllegalArgumentException", "invalid TAR extraction arguments");
    return nullptr;
  }
  const char* destination_utf = env->GetStringUTFChars(destination, nullptr);
  if (destination_utf == nullptr) return nullptr;
  std::string root(destination_utf);
  env->ReleaseStringUTFChars(destination, destination_utf);
  if (root.empty()) {
    throwJava(env, "java/lang/IllegalArgumentException", "destination path must not be empty");
    return nullptr;
  }
  while (root.size() > 1 && root.back() == '/') root.pop_back();
  if (::mkdir(root.c_str(), 0700) != 0 && errno != EEXIST) {
    throwJava(env, "java/io/IOException",
        std::string("cannot create extraction directory: ") + std::strerror(errno));
    return nullptr;
  }
  struct stat root_stat {};
  if (::stat(root.c_str(), &root_stat) != 0 || !S_ISDIR(root_stat.st_mode)) {
    throwJava(env, "java/io/IOException", "extraction destination is not a directory");
    return nullptr;
  }

  std::vector<std::string> extracted;
  std::uint64_t consumed = 0;
  std::string global_name;
  std::string pending_name;
  bool global_name_set = false;
  bool pending_name_set = false;
  constexpr std::size_t kBlock = 512;
  std::uint8_t header[kBlock];
  while (consumed < static_cast<std::uint64_t>(tar_bytes)) {
    std::size_t got = 0;
    if (static_cast<std::uint64_t>(tar_bytes) - consumed < kBlock ||
        !readExact(input_fd, header, kBlock, &got) || got != kBlock) {
      throwJava(env, "java/io/IOException", "truncated TAR header");
      return nullptr;
    }
    consumed += kBlock;
    bool zero = true;
    for (std::uint8_t b : header) if (b != 0) { zero = false; break; }
    if (zero) break;
    if (!validTarChecksum(header)) {
      throwJava(env, "java/io/IOException", "invalid TAR header checksum");
      return nullptr;
    }
    std::uint64_t size = 0, mode = 0;
    if (!tarNumber(header + 124, 12, &size) || !tarNumber(header + 100, 8, &mode)) {
      throwJava(env, "java/io/IOException", "invalid TAR size or mode");
      return nullptr;
    }
    std::string name = tarString(header, 100);
    const std::string prefix = tarString(header + 345, 155);
    if (!prefix.empty()) name = prefix + "/" + name;
    const char type = static_cast<char>(header[156]);
    const std::uint64_t padded = (size + 511u) & ~std::uint64_t(511u);
    if (padded < size || padded > static_cast<std::uint64_t>(tar_bytes) - consumed) {
      throwJava(env, "java/io/IOException", "TAR entry exceeds supplied byte range");
      return nullptr;
    }

    // Consume GNU long-name and POSIX PAX path metadata before handling the
    // following real entry. Metadata is bounded to avoid attacker-controlled
    // allocations from malformed archives.
    if (type == 'L' || type == 'x' || type == 'g') {
      constexpr std::uint64_t kMaxMetadata = 1024 * 1024;
      if (size > kMaxMetadata) {
        throwJava(env, "java/io/IOException", "TAR path metadata exceeds 1 MiB safety limit");
        return nullptr;
      }
      std::string metadata(static_cast<std::size_t>(size), '\0');
      if (size > 0) {
        got = 0;
        if (!readExact(input_fd, metadata.data(), static_cast<std::size_t>(size), &got) || got != size) {
          throwJava(env, "java/io/IOException", "truncated TAR path metadata");
          return nullptr;
        }
      }
      const std::uint64_t padding = padded - size;
      if (padding > 0) {
        std::uint8_t pad[512];
        got = 0;
        if (!readExact(input_fd, pad, static_cast<std::size_t>(padding), &got) || got != padding) {
          throwJava(env, "java/io/IOException", "truncated TAR metadata padding");
          return nullptr;
        }
      }
      consumed += padded;
      if (type == 'L') {
        while (!metadata.empty() && (metadata.back() == '\0' || metadata.back() == '\n')) metadata.pop_back();
        pending_name = metadata;
        pending_name_set = true;
      } else {
        std::size_t pos = 0;
        while (pos < metadata.size()) {
          const std::size_t space = metadata.find(' ', pos);
          if (space == std::string::npos || space == pos) {
            throwJava(env, "java/io/IOException", "malformed PAX record length");
            return nullptr;
          }
          char* end = nullptr;
          const unsigned long long record_len = std::strtoull(metadata.c_str() + pos, &end, 10);
          if (end == metadata.c_str() + pos || *end != ' ' || record_len == 0 ||
              record_len > metadata.size() - pos) {
            throwJava(env, "java/io/IOException", "invalid PAX record length");
            return nullptr;
          }
          const std::size_t record_end = pos + static_cast<std::size_t>(record_len);
          if (record_end > metadata.size() || metadata[record_end - 1] != '\n') {
            throwJava(env, "java/io/IOException", "truncated PAX record");
            return nullptr;
          }
          const std::size_t key_start = static_cast<std::size_t>(end - metadata.c_str()) + 1;
          const std::size_t equal = metadata.find('=', key_start);
          if (equal == std::string::npos || equal >= record_end - 1 || equal < key_start) {
            throwJava(env, "java/io/IOException", "PAX record has no key/value separator");
            return nullptr;
          }
          const std::string key = metadata.substr(key_start, equal - key_start);
          const std::string value = metadata.substr(equal + 1, record_end - equal - 2);
          if (key == "path") {
            if (type == 'g') {
              global_name = value;
              global_name_set = !value.empty();
            } else {
              pending_name = value;
              pending_name_set = !value.empty();
            }
          }
          pos = record_end;
        }
      }
      continue;
    }
    if (pending_name_set) {
      name = pending_name;
      pending_name.clear();
      pending_name_set = false;
    } else if (global_name_set) {
      name = global_name;
    }

    // Reject absolute paths, drive-like paths, NULs, and traversal before touching disk.
    bool safe = !name.empty() && name[0] != '/' && name.find('\0') == std::string::npos;
    std::size_t begin = 0;
    while (safe && begin <= name.size()) {
      const std::size_t end = name.find('/', begin);
      const std::string component = name.substr(begin, end == std::string::npos ? std::string::npos : end - begin);
      if (component == ".." || component == "." || component.find(':') != std::string::npos) safe = false;
      if (end == std::string::npos) break;
      begin = end + 1;
    }
    if (!safe) {
      throwJava(env, "java/io/IOException", "unsafe TAR path rejected");
      return nullptr;
    }
    const std::string full_path = root == "/" ? root + name : root + "/" + name;
    if (type == '5') {
      if (!ensureTarParentDirectories(root, full_path) && errno != EEXIST) {
        throwJava(env, "java/io/IOException", "cannot create TAR directory parent");
        return nullptr;
      }
      if (::mkdir(full_path.c_str(), 0700) != 0 && errno != EEXIST) {
        throwJava(env, "java/io/IOException",
            std::string("cannot create TAR directory: ") + std::strerror(errno));
        return nullptr;
      }
      struct stat st {};
      if (::lstat(full_path.c_str(), &st) != 0 || !S_ISDIR(st.st_mode)) {
        throwJava(env, "java/io/IOException", "TAR directory conflicts with non-directory path");
        return nullptr;
      }
      extracted.push_back(full_path);
      std::uint8_t discard[8192];
      std::uint64_t skip = padded;
      while (skip > 0) {
        const std::size_t want = static_cast<std::size_t>(std::min<std::uint64_t>(skip, sizeof(discard)));
        got = 0;
        if (!readExact(input_fd, discard, want, &got) || got != want) {
          throwJava(env, "java/io/IOException", "truncated TAR directory payload");
          return nullptr;
        }
        skip -= got;
      }
      consumed += padded;
    } else if (type == 0 || type == '0') {
      if (!ensureTarParentDirectories(root, full_path)) {
        throwJava(env, "java/io/IOException", "cannot create TAR file parent directory");
        return nullptr;
      }
      int out_fd = ::open(full_path.c_str(), O_WRONLY | O_CREAT | O_TRUNC | O_CLOEXEC | O_NOFOLLOW, 0600);
      if (out_fd < 0) {
        throwJava(env, "java/io/IOException",
            std::string("cannot create extracted file: ") + std::strerror(errno));
        return nullptr;
      }
      std::uint64_t remaining = size;
      std::uint8_t buffer[64 * 1024];
      bool write_failed = false;
      while (remaining > 0) {
        const std::size_t want = static_cast<std::size_t>(
            std::min<std::uint64_t>(remaining, sizeof(buffer)));
        got = 0;
        if (!readExact(input_fd, buffer, want, &got) || got != want) {
          write_failed = true;
          break;
        }
        std::size_t offset = 0;
        while (offset < got) {
          ssize_t n;
          do { n = ::write(out_fd, buffer + offset, got - offset); }
          while (n < 0 && errno == EINTR);
          if (n <= 0) { write_failed = true; break; }
          offset += static_cast<std::size_t>(n);
        }
        if (write_failed) break;
        remaining -= got;
        consumed += got;
        if (!notifyProgress(env, progress_listener,
              static_cast<jlong>(consumed), tar_bytes)) {
          ::close(out_fd);
          if (env->ExceptionCheck()) return nullptr;
          throwJava(env, "java/io/IOException", "TAR extraction progress callback failed");
          return nullptr;
        }
      }
      if (!write_failed && padded > size) {
        std::uint8_t padding[512];
        const std::size_t pad = static_cast<std::size_t>(padded - size);
        got = 0;
        if (!readExact(input_fd, padding, pad, &got) || got != pad) write_failed = true;
        else consumed += pad;
      }
      if (::close(out_fd) != 0) write_failed = true;
      if (write_failed) {
        throwJava(env, "java/io/IOException", "failed while writing extracted TAR file");
        return nullptr;
      }
      if (::chmod(full_path.c_str(), static_cast<mode_t>(mode & 0777u)) != 0) {
        throwJava(env, "java/io/IOException", "cannot apply extracted file mode");
        return nullptr;
      }
      extracted.push_back(full_path);
      continue;
    } else {
      // Do not create device nodes, links, FIFOs, or unknown entry types.
      std::uint8_t discard[8192];
      std::uint64_t skip = padded;
      while (skip > 0) {
        const std::size_t want = static_cast<std::size_t>(std::min<std::uint64_t>(skip, sizeof(discard)));
        got = 0;
        if (!readExact(input_fd, discard, want, &got) || got != want) {
          throwJava(env, "java/io/IOException", "truncated unsupported TAR entry");
          return nullptr;
        }
        skip -= got;
      }
      consumed += padded;
    }
  }

  jclass string_class = env->FindClass("java/lang/String");
  if (string_class == nullptr) return nullptr;
  jobjectArray result = env->NewObjectArray(static_cast<jsize>(extracted.size()), string_class, nullptr);
  env->DeleteLocalRef(string_class);
  if (result == nullptr) return nullptr;
  for (std::size_t i = 0; i < extracted.size(); ++i) {
    jstring path = newJavaStringUtf8(env, extracted[i]);
    if (path == nullptr) return nullptr;
    env->SetObjectArrayElement(result, static_cast<jsize>(i), path);
    env->DeleteLocalRef(path);
    if (env->ExceptionCheck()) return nullptr;
  }
  return result;
}

extern "C" JNIEXPORT jlongArray JNICALL
Java_com_swiftapps_sba_SbaSwiftTarNative_extractTarFromFdWithStatsRaw(
    JNIEnv* env, jobject self, jint input_fd, jlong tar_bytes,
    jstring destination, jint options, jobjectArray filters,
    jobject progress_listener) {
  const auto started = std::chrono::steady_clock::now();
  jobjectArray paths = Java_com_swiftapps_sba_SbaSwiftTarNative_extractTarFromFdRaw(
      env, self, input_fd, tar_bytes, destination, options, filters, progress_listener);
  if (paths == nullptr || env->ExceptionCheck()) return nullptr;

  // Match the 20-field SbaSwiftTarExtractStats contract used by the Java
  // wrapper. Populate values we can measure reliably from this implementation;
  // optimized-I/O counters remain zero because this path uses read/write.
  jlong values[20] = {};
  values[0] = tar_bytes;
  values[1] = static_cast<jlong>(env->GetArrayLength(paths));
  jclass file_class = env->FindClass("java/io/File");
  if (file_class == nullptr) return nullptr;
  jmethodID ctor = env->GetMethodID(file_class, "<init>", "(Ljava/lang/String;)V");
  jmethodID is_dir = env->GetMethodID(file_class, "isDirectory", "()Z");
  jmethodID length = env->GetMethodID(file_class, "length", "()J");
  if (ctor == nullptr || is_dir == nullptr || length == nullptr) {
    env->DeleteLocalRef(file_class);
    return nullptr;
  }
  for (jsize i = 0; i < env->GetArrayLength(paths); ++i) {
    auto path = static_cast<jstring>(env->GetObjectArrayElement(paths, i));
    if (path == nullptr) continue;
    jobject file = env->NewObject(file_class, ctor, path);
    env->DeleteLocalRef(path);
    if (file == nullptr || env->ExceptionCheck()) {
      if (file != nullptr) env->DeleteLocalRef(file);
      env->DeleteLocalRef(file_class);
      return nullptr;
    }
    if (env->CallBooleanMethod(file, is_dir) == JNI_TRUE) {
      ++values[3];
    } else {
      ++values[2];
      const jlong bytes = env->CallLongMethod(file, length);
      if (bytes > 0 && values[8] <= std::numeric_limits<jlong>::max() - bytes) {
        values[8] += bytes;
      }
    }
    env->DeleteLocalRef(file);
    if (env->ExceptionCheck()) {
      env->DeleteLocalRef(file_class);
      return nullptr;
    }
  }
  env->DeleteLocalRef(file_class);
  const auto elapsed = std::chrono::duration_cast<std::chrono::milliseconds>(
      std::chrono::steady_clock::now() - started).count();
  values[16] = static_cast<jlong>(elapsed);
  jlongArray result = env->NewLongArray(20);
  if (result == nullptr) return nullptr;
  env->SetLongArrayRegion(result, 0, 20, values);
  return env->ExceptionCheck() ? nullptr : result;
}

extern "C" JNIEXPORT jobjectArray JNICALL
Java_com_swiftapps_sba_SbaSwiftTarNative_extractTarZstdFromFdRaw(
    JNIEnv* env, jobject self, jint input_fd, jlong input_offset,
    jlong compressed_size, jstring destination, jint options,
    jobjectArray filters, jobject progress_listener) {
  if (input_fd < 0 || input_offset < 0 || compressed_size <= 0 ||
      input_offset > static_cast<jlong>(std::numeric_limits<off_t>::max()) ||
      compressed_size > static_cast<jlong>(std::numeric_limits<off_t>::max()) - input_offset) {
    throwJava(env, "java/lang/IllegalArgumentException", "invalid compressed TAR range");
    return nullptr;
  }
  std::FILE* temporary = std::tmpfile();
  if (temporary == nullptr) {
    throwJava(env, "java/io/IOException",
        std::string("cannot create temporary TAR stream: ") + std::strerror(errno));
    return nullptr;
  }
  const int temporary_fd = ::fileno(temporary);
  ZSTD_DStream* stream = ZSTD_createDStream();
  if (stream == nullptr) {
    std::fclose(temporary);
    throwJava(env, "java/lang/OutOfMemoryError", "cannot allocate Zstandard stream");
    return nullptr;
  }
  std::size_t zr = ZSTD_initDStream(stream);
  if (ZSTD_isError(zr)) {
    ZSTD_freeDStream(stream);
    std::fclose(temporary);
    throwJava(env, "java/lang/IllegalStateException", ZSTD_getErrorName(zr));
    return nullptr;
  }
  constexpr std::size_t kChunk = 64 * 1024;
  std::vector<std::uint8_t> input(kChunk), output(kChunk);
  std::uint64_t total_input = 0, total_output = 0;
  std::size_t remaining = 1;
  std::string error;
  bool failed = false;
  while (total_input < static_cast<std::uint64_t>(compressed_size)) {
    const std::size_t want = static_cast<std::size_t>(std::min<std::uint64_t>(
        input.size(), static_cast<std::uint64_t>(compressed_size) - total_input));
    ssize_t n;
    do { n = ::pread(input_fd, input.data(), want,
        static_cast<off_t>(input_offset + static_cast<jlong>(total_input))); }
    while (n < 0 && errno == EINTR);
    if (n <= 0) {
      error = n < 0 ? std::string("read compressed TAR failed: ") + std::strerror(errno)
                    : "compressed TAR range is truncated";
      failed = true;
      break;
    }
    total_input += static_cast<std::uint64_t>(n);
    ZSTD_inBuffer in{input.data(), static_cast<std::size_t>(n), 0};
    while (in.pos < in.size) {
      ZSTD_outBuffer out{output.data(), output.size(), 0};
      remaining = ZSTD_decompressStream(stream, &out, &in);
      if (ZSTD_isError(remaining)) {
        error = std::string("invalid Zstandard TAR: ") + ZSTD_getErrorName(remaining);
        failed = true;
        break;
      }
      std::size_t off = 0;
      while (off < out.pos) {
        ssize_t written;
        do { written = ::write(temporary_fd, output.data() + off, out.pos - off); }
        while (written < 0 && errno == EINTR);
        if (written <= 0) {
          error = std::string("write temporary TAR failed: ") + std::strerror(errno);
          failed = true;
          break;
        }
        off += static_cast<std::size_t>(written);
      }
      if (failed) break;
      total_output += out.pos;
      if (total_output > static_cast<std::uint64_t>(std::numeric_limits<jlong>::max())) {
        error = "decompressed TAR size exceeds supported range";
        failed = true;
        break;
      }
    }
    if (failed) break;
  }
  ZSTD_freeDStream(stream);
  if (!failed && (total_input != static_cast<std::uint64_t>(compressed_size) ||
                  remaining != 0 || total_output == 0)) {
    error = "truncated or empty Zstandard TAR stream";
    failed = true;
  }
  if (!failed && ::lseek(temporary_fd, 0, SEEK_SET) < 0) {
    error = std::string("rewind temporary TAR failed: ") + std::strerror(errno);
    failed = true;
  }
  jobjectArray result = nullptr;
  if (failed) {
    throwJava(env, "java/io/IOException", error);
  } else {
    result = Java_com_swiftapps_sba_SbaSwiftTarNative_extractTarFromFdRaw(
        env, self, temporary_fd, static_cast<jlong>(total_output),
        destination, options, filters, progress_listener);
  }
  std::fclose(temporary);
  return result;
}

extern "C" JNIEXPORT jlongArray JNICALL
Java_com_swiftapps_sba_SbaZstdNative_compressZstdFdToFdRaw(
    JNIEnv* env, jobject /* self */, jint input_fd, jint output_fd,
    jlong expected_size, jobject progress_listener) {
  if (input_fd < 0 || output_fd < 0 || input_fd == output_fd || expected_size < -1) {
    throwJava(env, "java/lang/IllegalArgumentException",
        "invalid file descriptor or expected input size");
    return nullptr;
  }

  ZSTD_CStream* stream = ZSTD_createCStream();
  if (stream == nullptr) {
    throwJava(env, "java/lang/OutOfMemoryError", "could not allocate Zstandard compression stream");
    return nullptr;
  }
  const std::size_t init_result = ZSTD_initCStream(stream, ZSTD_CLEVEL_DEFAULT);
  if (ZSTD_isError(init_result)) {
    ZSTD_freeCStream(stream);
    throwJava(env, "java/lang/IllegalStateException", ZSTD_getErrorName(init_result));
    return nullptr;
  }

  constexpr std::size_t kChunk = 64 * 1024;
  std::vector<std::uint8_t> input(kChunk);
  std::vector<std::uint8_t> output(ZSTD_CStreamOutSize());
  std::uint64_t total_read = 0;
  std::uint64_t total_written = 0;
  bool failed = false;
  std::string error_message;

  while (true) {
    ssize_t count;
    do { count = ::read(input_fd, input.data(), input.size()); }
    while (count < 0 && errno == EINTR);
    if (count < 0) {
      error_message = std::string("read failed: ") + std::strerror(errno);
      failed = true;
      break;
    }
    if (count == 0) {
      if (expected_size >= 0 && total_read != static_cast<std::uint64_t>(expected_size)) {
        error_message = "input size does not match expected size";
        failed = true;
      }
      ZSTD_inBuffer in{nullptr, 0, 0};
      std::size_t remaining = 1;
      while (!failed && remaining != 0) {
        ZSTD_outBuffer out{output.data(), output.size(), 0};
        remaining = ZSTD_compressStream2(stream, &out, &in, ZSTD_e_end);
        if (ZSTD_isError(remaining)) {
          error_message = ZSTD_getErrorName(remaining);
          failed = true;
          break;
        }
        std::size_t offset = 0;
        while (offset < out.pos) {
          ssize_t n;
          do { n = ::write(output_fd, output.data() + offset, out.pos - offset); }
          while (n < 0 && errno == EINTR);
          if (n <= 0) {
            error_message = std::string("write failed: ") + std::strerror(errno);
            failed = true;
            break;
          }
          offset += static_cast<std::size_t>(n);
          total_written += static_cast<std::uint64_t>(n);
        }
      }
      break;
    }

    total_read += static_cast<std::uint64_t>(count);
    if (total_read > static_cast<std::uint64_t>(std::numeric_limits<jlong>::max())) {
      error_message = "stream byte count overflow";
      failed = true;
      break;
    }
    if (!notifyProgress(env, progress_listener, static_cast<jlong>(total_read), expected_size)) {
      if (env->ExceptionCheck()) {
        ZSTD_freeCStream(stream);
        return nullptr;
      }
      error_message = "progress callback failed";
      failed = true;
      break;
    }

    ZSTD_inBuffer in{input.data(), static_cast<std::size_t>(count), 0};
    while (in.pos < in.size) {
      ZSTD_outBuffer out{output.data(), output.size(), 0};
      const std::size_t remaining = ZSTD_compressStream2(stream, &out, &in, ZSTD_e_continue);
      if (ZSTD_isError(remaining)) {
        error_message = ZSTD_getErrorName(remaining);
        failed = true;
        break;
      }
      std::size_t offset = 0;
      while (offset < out.pos) {
        ssize_t n;
        do { n = ::write(output_fd, output.data() + offset, out.pos - offset); }
        while (n < 0 && errno == EINTR);
        if (n <= 0) {
          error_message = std::string("write failed: ") + std::strerror(errno);
          failed = true;
          break;
        }
        offset += static_cast<std::size_t>(n);
        total_written += static_cast<std::uint64_t>(n);
        if (total_written > static_cast<std::uint64_t>(std::numeric_limits<jlong>::max())) {
          error_message = "stream byte count overflow";
          failed = true;
          break;
        }
      }
      if (failed) break;
    }
    if (failed) break;
  }

  ZSTD_freeCStream(stream);
  if (failed) {
    throwJava(env, "java/io/IOException", error_message);
    return nullptr;
  }
  jlong values[2] = {static_cast<jlong>(total_read), static_cast<jlong>(total_written)};
  jlongArray result = env->NewLongArray(2);
  if (result == nullptr) return nullptr;
  env->SetLongArrayRegion(result, 0, 2, values);
  return env->ExceptionCheck() ? nullptr : result;
}

// This legacy export is present in the original ELF symbol inventory, but no
// matching declaration was found in the current or historical Java/Smali
// wrappers inspected so far. Keep it fail-closed until its exact descriptor,
// path/FD contract, and progress-listener type are recovered from evidence.
SBA_UNIMPLEMENTED_LONG_ARRAY(
    Java_com_swiftapps_sba_SbaZstdNative_compressZstdFileToFdRaw,
    "legacy Zstandard file-to-fd compression")

#undef SBA_UNIMPLEMENTED_LONG_ARRAY
#undef SBA_UNIMPLEMENTED_OBJECT_ARRAY
