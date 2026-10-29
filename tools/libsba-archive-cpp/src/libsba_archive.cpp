#include <jni.h>
#define ZSTD_STATIC_LINKING_ONLY
#include <zstd.h>
#include <argon2.h>
#include <aegis.h>
#include "sba1_format.h"

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
#include <dirent.h>
#include <fnmatch.h>
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


namespace {
bool writeFullyFd(int fd, const std::uint8_t* data, std::size_t size, std::string* error) {
  std::size_t offset = 0;
  while (offset < size) {
    ssize_t n;
    do { n = ::write(fd, data + offset, size - offset); } while (n < 0 && errno == EINTR);
    if (n <= 0) { if (error) *error = std::string("write failed: ") + std::strerror(errno); return false; }
    offset += static_cast<std::size_t>(n);
  }
  return true;
}
void makeChunkNonce128(const std::vector<std::uint8_t>& seed, std::uint64_t entry, std::uint64_t chunk, std::uint8_t nonce[16]) {
  std::memcpy(nonce, seed.data(), 16);
  const std::uint64_t counter = ((entry & 0xffffffffULL) << 32) | (chunk & 0xffffffffULL);
  for (int i = 0; i < 8; ++i) nonce[15-i] ^= static_cast<std::uint8_t>(counter >> (i*8));
}
void makeChunkNonce256(const std::vector<std::uint8_t>& seed, std::uint64_t entry, std::uint64_t chunk, std::uint8_t nonce[32]) {
  std::memcpy(nonce, seed.data(), 16);
  for (int i = 0; i < 8; ++i) {
    nonce[23-i] = static_cast<std::uint8_t>(entry >> (i*8));
    nonce[31-i] = static_cast<std::uint8_t>(chunk >> (i*8));
  }
}
jlongArray decryptAegisChunks(JNIEnv* env, jint input_fd, jlong stored_size, jint output_fd,
                              jbyteArray key_array, jbyteArray nonce_array, jbyteArray aad_array,
                              jlong entry_index, jlong plain_size, jint chunk_size,
                              jobject progress_listener, bool aegis128x2) {
  if (input_fd < 0 || output_fd < 0 || stored_size < 0 || plain_size < 0 || entry_index < 0 ||
      chunk_size < 4096 || chunk_size > 16777216) {
    throwJava(env, "java/lang/IllegalArgumentException", "invalid SBA AEGIS chunk parameters"); return nullptr;
  }
  std::vector<std::uint8_t> key, nonce_seed, aad;
  WipeVectorOnExit wipe_key{key};
  if (!copyInput(env,key_array,key) || !copyInput(env,nonce_array,nonce_seed) || !copyInput(env,aad_array,aad)) return nullptr;
  if (key.size() < (aegis128x2 ? 16u : 32u) || nonce_seed.size() != 16) {
    throwJava(env, "java/lang/IllegalArgumentException", "invalid SBA AEGIS key or nonce-seed length"); return nullptr;
  }
  const std::uint64_t plain=static_cast<std::uint64_t>(plain_size), chunk=static_cast<std::uint64_t>(chunk_size);
  const std::uint64_t chunks=plain==0?0:1+((plain-1)/chunk);
  if (chunks>std::numeric_limits<std::uint64_t>::max()/16 || plain>std::numeric_limits<std::uint64_t>::max()-chunks*16 ||
      plain+chunks*16!=static_cast<std::uint64_t>(stored_size)) {
    throwJava(env,"java/io/IOException","SBA AEGIS stored/plain size mismatch"); return nullptr;
  }
  std::vector<std::uint8_t> cipher_buffer(static_cast<std::size_t>(chunk_size)), plain_buffer(static_cast<std::size_t>(chunk_size));
  std::uint8_t tag[16]{};
  std::uint64_t remaining=plain, consumed=0, produced=0, chunk_index=0;
  while (remaining) {
    const std::size_t n=static_cast<std::size_t>(std::min<std::uint64_t>(remaining,chunk));
    std::size_t got=0;
    if (!readExact(input_fd,cipher_buffer.data(),n,&got)||got!=n) { throwJava(env,"java/io/EOFException","truncated SBA AEGIS ciphertext chunk"); return nullptr; }
    consumed+=n; got=0;
    if (!readExact(input_fd,tag,sizeof(tag),&got)||got!=sizeof(tag)) { throwJava(env,"java/io/EOFException","truncated SBA AEGIS authentication tag"); return nullptr; }
    consumed+=sizeof(tag);
    int rc=-1;
    if (aegis128x2) {
      std::uint8_t nonce[16]{}; makeChunkNonce128(nonce_seed,static_cast<std::uint64_t>(entry_index),chunk_index,nonce);
      rc=aegis128x2_decrypt_detached(plain_buffer.data(),cipher_buffer.data(),n,tag,sizeof(tag),aad.empty()?nullptr:aad.data(),aad.size(),nonce,key.data());
      std::fill(nonce,nonce+sizeof(nonce),0);
    } else {
      std::uint8_t nonce[32]{}; makeChunkNonce256(nonce_seed,static_cast<std::uint64_t>(entry_index),chunk_index,nonce);
      rc=aegis256_decrypt_detached(plain_buffer.data(),cipher_buffer.data(),n,tag,sizeof(tag),aad.empty()?nullptr:aad.data(),aad.size(),nonce,key.data());
      std::fill(nonce,nonce+sizeof(nonce),0);
    }
    if (rc!=0) { std::fill(plain_buffer.begin(),plain_buffer.end(),0); throwJava(env,"java/io/IOException","SBA AEGIS authentication failed"); return nullptr; }
    std::string error;
    if (!writeFullyFd(output_fd,plain_buffer.data(),n,&error)) { std::fill(plain_buffer.begin(),plain_buffer.end(),0); throwJava(env,"java/io/IOException",error); return nullptr; }
    produced+=n; remaining-=n; ++chunk_index;
    if (!notifyProgress(env,progress_listener,static_cast<jlong>(produced),plain_size)) { std::fill(plain_buffer.begin(),plain_buffer.end(),0); return nullptr; }
  }
  std::fill(cipher_buffer.begin(),cipher_buffer.end(),0); std::fill(plain_buffer.begin(),plain_buffer.end(),0); std::fill(tag,tag+sizeof(tag),0);
  jlong values[2]={static_cast<jlong>(consumed),static_cast<jlong>(produced)};
  jlongArray result=env->NewLongArray(2); if (!result) return nullptr;
  env->SetLongArrayRegion(result,0,2,values); return env->ExceptionCheck()?nullptr:result;
}

jlongArray encryptAegis256Chunks(JNIEnv* env,jint input_fd,jlong plain_size,jint output_fd,
                                 jbyteArray key_array,jbyteArray nonce_array,jbyteArray aad_array,
                                 jlong entry_index,jlong stored_size,jint chunk_size,jobject progress_listener) {
  if(input_fd<0||output_fd<0||plain_size<0||stored_size<0||entry_index<0||chunk_size<4096||chunk_size>16777216) {
    throwJava(env,"java/lang/IllegalArgumentException","invalid SBA AEGIS encryption parameters");return nullptr;
  }
  std::vector<std::uint8_t> key,nonce_seed,aad;WipeVectorOnExit wipe_key{key};
  if(!copyInput(env,key_array,key)||!copyInput(env,nonce_array,nonce_seed)||!copyInput(env,aad_array,aad))return nullptr;
  if(key.size()!=32||nonce_seed.size()!=16){throwJava(env,"java/lang/IllegalArgumentException","invalid SBA AEGIS-256 key or nonce seed");return nullptr;}
  const std::uint64_t plain=static_cast<std::uint64_t>(plain_size),chunk=static_cast<std::uint64_t>(chunk_size);
  const std::uint64_t chunks=plain==0?0:1+((plain-1)/chunk);
  if(chunks>std::numeric_limits<std::uint64_t>::max()/16||plain>std::numeric_limits<std::uint64_t>::max()-chunks*16||plain+chunks*16!=static_cast<std::uint64_t>(stored_size)){
    throwJava(env,"java/io/IOException","SBA AEGIS expected stored/plain size mismatch");return nullptr;
  }
  std::vector<std::uint8_t> plain_buffer(static_cast<std::size_t>(chunk_size)),cipher_buffer(static_cast<std::size_t>(chunk_size));
  std::uint8_t tag[16]{};std::uint64_t remaining=plain,read_total=0,written_total=0,chunk_index=0;
  while(remaining) {
    const std::size_t n=static_cast<std::size_t>(std::min<std::uint64_t>(remaining,chunk));std::size_t got=0;
    if(!readExact(input_fd,plain_buffer.data(),n,&got)||got!=n){throwJava(env,"java/io/EOFException","truncated SBA AEGIS plaintext chunk");return nullptr;}
    read_total+=n;std::uint8_t nonce[32]{};makeChunkNonce256(nonce_seed,static_cast<std::uint64_t>(entry_index),chunk_index,nonce);
    const int rc=aegis256_encrypt_detached(cipher_buffer.data(),tag,sizeof(tag),plain_buffer.data(),n,
      aad.empty()?nullptr:aad.data(),aad.size(),nonce,key.data());
    std::fill(nonce,nonce+sizeof(nonce),0);
    std::string error;
    if(rc!=0||!writeFullyFd(output_fd,cipher_buffer.data(),n,&error)||!writeFullyFd(output_fd,tag,sizeof(tag),&error)){
      std::fill(plain_buffer.begin(),plain_buffer.end(),0);std::fill(cipher_buffer.begin(),cipher_buffer.end(),0);
      throwJava(env,"java/io/IOException",error.empty()?"SBA AEGIS encryption failed":error);return nullptr;
    }
    written_total+=n+sizeof(tag);remaining-=n;++chunk_index;
    if(!notifyProgress(env,progress_listener,static_cast<jlong>(read_total),plain_size)){std::fill(plain_buffer.begin(),plain_buffer.end(),0);return nullptr;}
  }
  std::fill(plain_buffer.begin(),plain_buffer.end(),0);std::fill(cipher_buffer.begin(),cipher_buffer.end(),0);std::fill(tag,tag+sizeof(tag),0);
  jlong values[2]={static_cast<jlong>(read_total),static_cast<jlong>(written_total)};
  jlongArray result=env->NewLongArray(2);if(!result)return nullptr;env->SetLongArrayRegion(result,0,2,values);return env->ExceptionCheck()?nullptr:result;
}

}  // namespace

// Export-parity phase: keep every original JNI entry point discoverable while
// corresponding archive operations are implemented and tested incrementally.
// Methods whose Java/Smali descriptors are recovered use exact JNI prototypes
// even while fail-closed. Legacy-only exports with unknown descriptors remain
// generic fail-closed stubs until primary evidence is recovered.
#define SBA_UNIMPLEMENTED_LONG_ARRAY(symbol, description) \
  extern "C" JNIEXPORT jlongArray JNICALL symbol(JNIEnv* env, jobject /* self */) { \
    throwJava(env, "java/lang/UnsupportedOperationException", description " is not implemented in the C++ candidate yet"); \
    return nullptr; \
  }


namespace {
void putU16(std::vector<std::uint8_t>& out, std::uint16_t v) {
  out.push_back(static_cast<std::uint8_t>(v >> 8)); out.push_back(static_cast<std::uint8_t>(v));
}
void putU32(std::vector<std::uint8_t>& out, std::uint32_t v) {
  for (int i=3;i>=0;--i) out.push_back(static_cast<std::uint8_t>(v >> (i*8)));
}
void putU64(std::vector<std::uint8_t>& out, std::uint64_t v) {
  for (int i=7;i>=0;--i) out.push_back(static_cast<std::uint8_t>(v >> (i*8)));
}
bool writeVectorFd(int fd, const std::vector<std::uint8_t>& v, std::string* error) {
  return writeFullyFd(fd,v.data(),v.size(),error);
}
bool writeOctal(char* dst, std::size_t width, std::uint64_t value) {
  if (width < 2) return false;
  char tmp[32];
  std::snprintf(tmp,sizeof(tmp),"%llo",static_cast<unsigned long long>(value));
  const std::size_t n=std::strlen(tmp);
  if (n > width-1) return false;
  std::memset(dst,'0',width);
  std::memcpy(dst+width-1-n,tmp,n);
  dst[width-1]='\0';
  return true;
}
bool setTarPath(std::uint8_t header[512], const std::string& path) {
  if (path.size()<=100) { std::memcpy(header,path.data(),path.size()); return true; }
  for (std::size_t slash=path.rfind('/'); slash!=std::string::npos; slash=slash==0?std::string::npos:path.rfind('/',slash-1)) {
    const std::string prefix=path.substr(0,slash), base=path.substr(slash+1);
    if (prefix.size()<=155 && base.size()<=100 && !base.empty()) {
      std::memcpy(header,base.data(),base.size());
      std::memcpy(header+345,prefix.data(),prefix.size());
      return true;
    }
  }
  return false;
}
struct TarStats { std::uint64_t entries=0, files=0, dirs=0, bytes=0; };
struct ArchiveIndexRecord { std::vector<std::uint8_t> name; std::uint64_t header_offset=0,payload_offset=0,stored=0,compressed=0,tar=0; std::uint32_t flags=0; TarStats stats; };
bool tarHeader(FILE* out,const std::string& name,const struct stat& st,char type,
               const std::string& link,std::uint64_t size,std::string* error) {
  if (name.empty() || name.size()>255 || link.size()>100) {
    if(error)*error="TAR path or link target exceeds supported USTAR limits: "+name;
    return false;
  }
  std::uint8_t h[512]{};
  if(!setTarPath(h,name)) { if(error)*error="TAR path cannot be represented in USTAR header: "+name; return false; }
  if(!writeOctal(reinterpret_cast<char*>(h+100),8,static_cast<std::uint64_t>(st.st_mode&07777)) ||
     !writeOctal(reinterpret_cast<char*>(h+108),8,static_cast<std::uint64_t>(st.st_uid)) ||
     !writeOctal(reinterpret_cast<char*>(h+116),8,static_cast<std::uint64_t>(st.st_gid)) ||
     !writeOctal(reinterpret_cast<char*>(h+124),12,size) ||
     !writeOctal(reinterpret_cast<char*>(h+136),12,st.st_mtime<0?0:static_cast<std::uint64_t>(st.st_mtime))) {
    if(error)*error="TAR numeric field overflow: "+name; return false;
  }
  std::memset(h+148,' ',8);
  h[156]=static_cast<std::uint8_t>(type);
  if(!link.empty())std::memcpy(h+157,link.data(),link.size());
  std::memcpy(h+257,"ustar",5); h[262]=0; std::memcpy(h+263,"00",2);
  std::uint64_t sum=0; for(std::uint8_t b:h)sum+=b;
  char checksum[8]; std::snprintf(checksum,sizeof(checksum),"%06llo",static_cast<unsigned long long>(sum));
  std::memcpy(h+148,checksum,6); h[154]=0; h[155]=' ';
  if(std::fwrite(h,1,sizeof(h),out)!=sizeof(h)) { if(error)*error=std::string("TAR header write failed: ")+std::strerror(errno); return false; }
  return true;
}
bool pathMatches(const std::string& path,const std::string& pattern) {
  if(pattern.empty())return false;
  if(fnmatch(pattern.c_str(),path.c_str(),FNM_PATHNAME)==0)return true;
  if(path==pattern)return true;
  return path.size()>pattern.size() && path.compare(0,pattern.size(),pattern)==0 &&
         (pattern.back()=='/' || path[pattern.size()]=='/');
}
bool selectedPath(const std::string& path,const std::vector<std::string>& include,
                  const std::vector<std::string>& exclude) {
  for(const auto& p:exclude)if(pathMatches(path,p))return false;
  if(include.empty())return true;
  for(const auto& p:include)if(pathMatches(path,p))return true;
  return false;
}
bool mayContainSelected(const std::string& path,const std::vector<std::string>& include) {
  if(include.empty())return true;
  for(const auto& p:include) {
    if(path.empty() || p==path || (p.size()>path.size() && p.compare(0,path.size(),path)==0 &&
       (path.empty() || path.back()=='/' || p[path.size()]=='/')))return true;
    if(path.size()>p.size() && path.compare(0,p.size(),p)==0 && (p.back()=='/' || path[p.size()]=='/'))return true;
  }
  return false;
}
bool copyFileBytes(FILE* out,const std::string& path,std::uint64_t size,std::string* error) {
  int fd=::open(path.c_str(),O_RDONLY|O_CLOEXEC|O_NOFOLLOW);
  if(fd<0){if(error)*error=std::string("cannot open TAR source: ")+path+": "+std::strerror(errno);return false;}
  std::uint8_t buf[64*1024]; std::uint64_t remain=size;
  while(remain) {
    const std::size_t want=static_cast<std::size_t>(std::min<std::uint64_t>(remain,sizeof(buf)));
    ssize_t n; do{n=::read(fd,buf,want);}while(n<0&&errno==EINTR);
    if(n<=0){::close(fd);if(error)*error="TAR source changed or became unreadable: "+path;return false;}
    if(std::fwrite(buf,1,static_cast<std::size_t>(n),out)!=static_cast<std::size_t>(n)){::close(fd);if(error)*error="TAR output write failed";return false;}
    remain-=static_cast<std::uint64_t>(n);
  }
  ::close(fd);
  const std::size_t pad=static_cast<std::size_t>((512-(size%512))%512);
  const std::uint8_t zeros[512]{};
  if(pad&&std::fwrite(zeros,1,pad,out)!=pad){if(error)*error="TAR padding write failed";return false;}
  return true;
}
bool tarWalk(FILE* out,const std::string& full,const std::string& filter_rel,
             const std::string& tar_rel,const std::vector<std::string>& include,
             const std::vector<std::string>& exclude,TarStats* stats,std::string* error) {
  struct stat st{};
  if(::lstat(full.c_str(),&st)!=0){if(error)*error=std::string("cannot stat TAR source ")+full+": "+std::strerror(errno);return false;}
  const bool selected=selectedPath(filter_rel,include,exclude);
  const bool traverse=S_ISDIR(st.st_mode)&&mayContainSelected(filter_rel,include);
  if(S_ISDIR(st.st_mode)) {
    if(selected && !tar_rel.empty()) {
      std::string name=tar_rel; if(name.back()!='/')name.push_back('/');
      if(!tarHeader(out,name,st,'5',"",0,error))return false;
      ++stats->entries;++stats->dirs;
    }
    if(!traverse)return true;
    DIR* dir=::opendir(full.c_str());
    if(!dir){if(error)*error=std::string("cannot open TAR directory ")+full+": "+std::strerror(errno);return false;}
    std::vector<std::string> names;
    while(dirent* ent=::readdir(dir)) { std::string n=ent->d_name; if(n!="."&&n!="..")names.push_back(n); }
    ::closedir(dir);
    std::sort(names.begin(),names.end());
    for(const auto& child:names) {
      const std::string child_full=full+"/"+child;
      const std::string child_filter=filter_rel.empty()?child:filter_rel+"/"+child;
      const std::string child_tar=tar_rel.empty()?child:tar_rel+"/"+child;
      if(!tarWalk(out,child_full,child_filter,child_tar,include,exclude,stats,error))return false;
    }
    return true;
  }
  if(!selected)return true;
  if(S_ISREG(st.st_mode)) {
    const std::uint64_t size=st.st_size<0?0:static_cast<std::uint64_t>(st.st_size);
    if(!tarHeader(out,tar_rel,st,'0',"",size,error)||!copyFileBytes(out,full,size,error))return false;
    ++stats->entries;++stats->files;
    if(stats->bytes<=std::numeric_limits<std::uint64_t>::max()-size)stats->bytes+=size;
    return true;
  }
  if(S_ISLNK(st.st_mode)) {
    char target[4096]; const ssize_t n=::readlink(full.c_str(),target,sizeof(target)-1);
    if(n<0){if(error)*error=std::string("cannot read symlink ")+full+": "+std::strerror(errno);return false;}
    target[n]=0;
    if(!tarHeader(out,tar_rel,st,'2',target,0,error))return false;
    ++stats->entries;
    return true;
  }
  if(error)*error="unsupported special file in TAR source: "+full;
  return false;
}
bool readNestedStringArray(JNIEnv* env,jobjectArray outer,jsize index,std::vector<std::string>* out) {
  if(!outer)return true;
  jobject nested=env->GetObjectArrayElement(outer,index);
  if(!nested)return !env->ExceptionCheck();
  jobjectArray values=static_cast<jobjectArray>(nested);
  const jsize n=env->GetArrayLength(values);
  for(jsize i=0;i<n;++i) {
    jstring value=static_cast<jstring>(env->GetObjectArrayElement(values,i));
    if(!value){env->DeleteLocalRef(values);return false;}
    const char* utf=env->GetStringUTFChars(value,nullptr);
    if(!utf){env->DeleteLocalRef(value);env->DeleteLocalRef(values);return false;}
    out->emplace_back(utf);
    env->ReleaseStringUTFChars(value,utf);
    env->DeleteLocalRef(value);
  }
  env->DeleteLocalRef(values);
  return !env->ExceptionCheck();
}
bool compressFdToFd(int input_fd,int output_fd,int level,std::uint64_t* in_count,
                    std::uint64_t* out_count,std::string* error) {
  if(::lseek(input_fd,0,SEEK_SET)<0||::lseek(output_fd,0,SEEK_SET)<0){if(error)*error="cannot rewind compression streams";return false;}
  ZSTD_CStream* stream=ZSTD_createCStream(); if(!stream){if(error)*error="cannot allocate Zstandard compression stream";return false;}
  std::size_t zr=ZSTD_initCStream(stream,level);
  if(ZSTD_isError(zr)){if(error)*error=ZSTD_getErrorName(zr);ZSTD_freeCStream(stream);return false;}
  std::vector<std::uint8_t> input(64*1024),output(ZSTD_CStreamOutSize());
  std::uint64_t read_total=0,written_total=0; bool failed=false;
  while(true) {
    ssize_t got; do{got=::read(input_fd,input.data(),input.size());}while(got<0&&errno==EINTR);
    if(got<0){if(error)*error=std::string("compression input read failed: ")+std::strerror(errno);failed=true;break;}
    read_total+=static_cast<std::uint64_t>(got);
    ZSTD_inBuffer in{input.data(),static_cast<std::size_t>(got),0};
    const ZSTD_EndDirective directive=got==0?ZSTD_e_end:ZSTD_e_continue;
    std::size_t remaining=1;
    do {
      ZSTD_outBuffer out{output.data(),output.size(),0};
      remaining=ZSTD_compressStream2(stream,&out,&in,directive);
      if(ZSTD_isError(remaining)){if(error)*error=ZSTD_getErrorName(remaining);failed=true;break;}
      if(out.pos&&!writeFullyFd(output_fd,output.data(),out.pos,error)){failed=true;break;}
      written_total+=out.pos;
    } while(!failed && (in.pos<in.size || (directive==ZSTD_e_end && remaining!=0)));
    if(failed||got==0)break;
  }
  ZSTD_freeCStream(stream);
  if(failed)return false;
  *in_count=read_total;*out_count=written_total;return true;
}
bool getJavaDigest(JNIEnv* env,const std::vector<std::uint8_t>& input,std::vector<std::uint8_t>* output) {
  jclass cls=env->FindClass("java/security/MessageDigest"); if(!cls)return false;
  jmethodID get=env->GetStaticMethodID(cls,"getInstance","(Ljava/lang/String;)Ljava/security/MessageDigest;");
  jmethodID digest=env->GetMethodID(cls,"digest","([B)[B");
  jstring alg=env->NewStringUTF("SHA-256"); jobject md=get?env->CallStaticObjectMethod(cls,get,alg):nullptr;
  jbyteArray data=env->NewByteArray(static_cast<jsize>(input.size()));
  if(data&& !input.empty())env->SetByteArrayRegion(data,0,static_cast<jsize>(input.size()),reinterpret_cast<const jbyte*>(input.data()));
  jbyteArray result=(md&&digest&&data&&!env->ExceptionCheck())?static_cast<jbyteArray>(env->CallObjectMethod(md,digest,data)):nullptr;
  if(result) { jsize n=env->GetArrayLength(result); output->resize(static_cast<std::size_t>(n)); env->GetByteArrayRegion(result,0,n,reinterpret_cast<jbyte*>(output->data())); }
  if(result)env->DeleteLocalRef(result);if(data)env->DeleteLocalRef(data);if(md)env->DeleteLocalRef(md);if(alg)env->DeleteLocalRef(alg);env->DeleteLocalRef(cls);
  return !env->ExceptionCheck()&&!output->empty();
}
bool getJavaHmac(JNIEnv* env,const std::vector<std::uint8_t>& key,const std::vector<std::uint8_t>& input,std::vector<std::uint8_t>* output) {
  jclass mac_cls=env->FindClass("javax/crypto/Mac"); jclass key_cls=env->FindClass("javax/crypto/spec/SecretKeySpec"); jclass java_key_cls=env->FindClass("java/security/Key");
  if(!mac_cls||!key_cls||!java_key_cls)return false;
  jmethodID get=env->GetStaticMethodID(mac_cls,"getInstance","(Ljava/lang/String;)Ljavax/crypto/Mac;");
  jmethodID init=env->GetMethodID(mac_cls,"init","(Ljava/security/Key;)V");
  jmethodID finish=env->GetMethodID(mac_cls,"doFinal","([B)[B");
  jmethodID ctor=env->GetMethodID(key_cls,"<init>","([BLjava/lang/String;)V");
  jstring alg=env->NewStringUTF("HmacSHA256");
  jbyteArray key_bytes=env->NewByteArray(static_cast<jsize>(key.size()));
  if(key_bytes&&!key.empty())env->SetByteArrayRegion(key_bytes,0,static_cast<jsize>(key.size()),reinterpret_cast<const jbyte*>(key.data()));
  jstring key_alg=env->NewStringUTF("HmacSHA256");
  jobject key_obj=(ctor&&key_bytes&&key_alg&&!env->ExceptionCheck())?env->NewObject(key_cls,ctor,key_bytes,key_alg):nullptr;
  jobject mac=(get&&alg&&!env->ExceptionCheck())?env->CallStaticObjectMethod(mac_cls,get,alg):nullptr;
  if(mac&&init&&key_obj&&!env->ExceptionCheck())env->CallVoidMethod(mac,init,key_obj);
  jbyteArray data=env->NewByteArray(static_cast<jsize>(input.size()));
  if(data&&!input.empty())env->SetByteArrayRegion(data,0,static_cast<jsize>(input.size()),reinterpret_cast<const jbyte*>(input.data()));
  jbyteArray result=(mac&&finish&&data&&!env->ExceptionCheck())?static_cast<jbyteArray>(env->CallObjectMethod(mac,finish,data)):nullptr;
  if(result){jsize n=env->GetArrayLength(result);output->resize(static_cast<std::size_t>(n));env->GetByteArrayRegion(result,0,n,reinterpret_cast<jbyte*>(output->data()));}
  if(result)env->DeleteLocalRef(result);if(data)env->DeleteLocalRef(data);if(mac)env->DeleteLocalRef(mac);if(key_obj)env->DeleteLocalRef(key_obj);if(key_alg)env->DeleteLocalRef(key_alg);if(key_bytes)env->DeleteLocalRef(key_bytes);if(alg)env->DeleteLocalRef(alg);env->DeleteLocalRef(java_key_cls);env->DeleteLocalRef(key_cls);env->DeleteLocalRef(mac_cls);
  return !env->ExceptionCheck()&&!output->empty();
}
}

extern "C" JNIEXPORT jlongArray JNICALL
Java_com_swiftapps_sba_SbaArchiveNative_createArchive(
    JNIEnv* env, jobject /* self */, jint mode, jstring output_path,
    jbyteArray metadata_array, jobjectArray entry_name_bytes,
    jobjectArray source_paths, jintArray source_flags,
    jobjectArray include_paths, jobjectArray exclude_paths,
    jint compression, jint compression_level, jint encryption_method,
    jint kdf_method, jint kdf_iterations, jint kdf_memory_kib,
    jint kdf_parallelism, jint chunk_size, jint extension_flags,
    jint key_length, jbyteArray key_array, jbyteArray key_check_array,
    jbyteArray salt_array, jbyteArray nonce_seed_array, jobject progress_listener) {
  if ((mode!=1 && mode!=2) || output_path==nullptr || source_paths==nullptr ||
      entry_name_bytes==nullptr || source_flags==nullptr ||
      (compression!=0 && compression!=1) ||
      (compression==0 && compression_level!=0) ||
      (compression==1 && (compression_level<1 || compression_level>22)) ||
      (encryption_method!=0 && encryption_method!=4 && encryption_method!=5) ||
      (mode==1 && encryption_method!=0) || (mode==2 && encryption_method==0)) {
    throwJava(env,"java/lang/IllegalArgumentException","invalid SBA archive creation settings"); return nullptr;
  }
  const jsize count=env->GetArrayLength(source_paths);
  if(count<=0 || env->GetArrayLength(entry_name_bytes)!=count || env->GetArrayLength(source_flags)!=count ||
     (include_paths && env->GetArrayLength(include_paths)!=count) ||
     (exclude_paths && env->GetArrayLength(exclude_paths)!=count)) {
    throwJava(env,"java/lang/IllegalArgumentException","SBA entry arrays have inconsistent lengths"); return nullptr;
  }
  std::vector<std::uint8_t> metadata,key,key_check,salt,nonce_seed;
  WipeVectorOnExit wipe_key{key};
  if(!copyInput(env,metadata_array,metadata))return nullptr;
  if(metadata.size()>1048576){throwJava(env,"java/lang/IllegalArgumentException","SBA archive metadata exceeds 1 MiB");return nullptr;}
  auto optionalBytes=[&](jbyteArray a,std::vector<std::uint8_t>* out)->bool{
    if(a==nullptr){out->clear();return true;}return copyInput(env,a,*out);
  };
  if(!optionalBytes(key_array,&key)||!optionalBytes(key_check_array,&key_check)||
     !optionalBytes(salt_array,&salt)||!optionalBytes(nonce_seed_array,&nonce_seed))return nullptr;
  if(encryption_method!=0) {
    if(mode!=2 || kdf_method!=1 || kdf_iterations<1 || kdf_iterations>100 ||
       kdf_memory_kib<16384 || kdf_memory_kib>65536 || kdf_parallelism<1 || kdf_parallelism>8 ||
       chunk_size<4096 || chunk_size>16777216 || key_length!=32 ||
       key.size()!=32 || key_check.size()!=16 || salt.size()!=16 || nonce_seed.size()!=16) {
      throwJava(env,"java/lang/IllegalArgumentException","invalid SBA AEGIS key/KDF/header parameters");return nullptr;
    }
  } else if(kdf_method!=0||kdf_iterations!=0||kdf_memory_kib!=0||kdf_parallelism!=0||
            chunk_size!=0||key_length!=0||!key.empty()||!key_check.empty()||!salt.empty()||!nonce_seed.empty()) {
    throwJava(env,"java/lang/IllegalArgumentException","unexpected encryption parameters for unencrypted SBA archive");return nullptr;
  }

  const char* output_utf=env->GetStringUTFChars(output_path,nullptr);
  if(!output_utf)return nullptr;
  const std::string output_name(output_utf);
  env->ReleaseStringUTFChars(output_path,output_utf);
  const int out_fd=::open(output_name.c_str(),O_WRONLY|O_CREAT|O_TRUNC|O_CLOEXEC|O_NOFOLLOW,0600);
  if(out_fd<0){throwJava(env,"java/io/IOException",std::string("cannot open SBA output: ")+std::strerror(errno));return nullptr;}

  const auto started=std::chrono::steady_clock::now();
  const std::size_t header_size=mode==1?96u:144u;
  std::vector<std::uint8_t> header;
  header.insert(header.end(),{'S','B','A','1'});putU16(header,static_cast<std::uint16_t>(mode));putU16(header,static_cast<std::uint16_t>(header_size));
  putU32(header,(compression?1u:0u)|(encryption_method?2u:0u));
  const auto now=std::chrono::duration_cast<std::chrono::milliseconds>(std::chrono::system_clock::now().time_since_epoch()).count();
  putU64(header,static_cast<std::uint64_t>(now));
  putU16(header,static_cast<std::uint16_t>(compression));putU16(header,static_cast<std::uint16_t>(compression_level));
  putU16(header,static_cast<std::uint16_t>(encryption_method));putU16(header,static_cast<std::uint16_t>(kdf_method));
  putU16(header,static_cast<std::uint16_t>(kdf_iterations));putU16(header,encryption_method?16:0);
  putU16(header,encryption_method?16:0);putU16(header,encryption_method?16:0);
  if(encryption_method){header.insert(header.end(),key_check.begin(),key_check.end());header.insert(header.end(),salt.begin(),salt.end());header.insert(header.end(),nonce_seed.begin(),nonce_seed.end());}
  else header.insert(header.end(),48,0);
  putU16(header,0);putU16(header,0);putU32(header,static_cast<std::uint32_t>(chunk_size));
  if(mode==1)header.insert(header.end(),4,0);
  else {
    putU32(header,static_cast<std::uint32_t>(kdf_memory_kib));
    putU16(header,static_cast<std::uint16_t>(kdf_parallelism));
    putU16(header,static_cast<std::uint16_t>(extension_flags));
    putU16(header,static_cast<std::uint16_t>(key_length));
    putU16(header,1);
    header.insert(header.end(),32,0);header.insert(header.end(),8,0);
  }
  if(header.size()!=header_size){::close(out_fd);throwJava(env,"java/lang/IllegalStateException","internal SBA header size mismatch");return nullptr;}
  std::string io_error;
  if(!writeVectorFd(out_fd,header,&io_error)){::close(out_fd);throwJava(env,"java/io/IOException",io_error);return nullptr;}

  std::vector<ArchiveIndexRecord> records;records.reserve(static_cast<std::size_t>(count));
  std::uint64_t total_tar=0,total_compressed=0,total_stored=0,total_source=0;
  for(jsize i=0;i<count;++i) {
    jobject name_obj=env->GetObjectArrayElement(entry_name_bytes,i);
    jobject path_obj=env->GetObjectArrayElement(source_paths,i);
    if(!name_obj||!path_obj){if(name_obj)env->DeleteLocalRef(name_obj);if(path_obj)env->DeleteLocalRef(path_obj);::close(out_fd);throwJava(env,"java/lang/IllegalArgumentException","null SBA entry name or source path");return nullptr;}
    std::vector<std::uint8_t> name_bytes;
    if(!copyInput(env,static_cast<jbyteArray>(name_obj),name_bytes)){env->DeleteLocalRef(name_obj);env->DeleteLocalRef(path_obj);::close(out_fd);return nullptr;}
    const char* path_utf=env->GetStringUTFChars(static_cast<jstring>(path_obj),nullptr);
    if(!path_utf){env->DeleteLocalRef(name_obj);env->DeleteLocalRef(path_obj);::close(out_fd);return nullptr;}
    const std::string path(path_utf);env->ReleaseStringUTFChars(static_cast<jstring>(path_obj),path_utf);
    env->DeleteLocalRef(name_obj);env->DeleteLocalRef(path_obj);
    if(name_bytes.empty()||name_bytes.size()>65535||std::find(name_bytes.begin(),name_bytes.end(),0)!=name_bytes.end()) {
      ::close(out_fd);throwJava(env,"java/lang/IllegalArgumentException","invalid SBA entry name length or NUL byte");return nullptr;
    }
    jint flags_value=0;env->GetIntArrayRegion(source_flags,i,1,&flags_value);
    if(env->ExceptionCheck()){::close(out_fd);return nullptr;}
    std::vector<std::string> includes,excludes;
    if(!readNestedStringArray(env,include_paths,i,&includes)||!readNestedStringArray(env,exclude_paths,i,&excludes)){::close(out_fd);return nullptr;}
    std::FILE* tar_file=std::tmpfile();
    if(!tar_file){::close(out_fd);throwJava(env,"java/io/IOException",std::string("cannot create TAR temporary: ")+std::strerror(errno));return nullptr;}
    TarStats stats;
    struct stat root_st{};
    if(::lstat(path.c_str(),&root_st)!=0){std::fclose(tar_file);::close(out_fd);throwJava(env,"java/io/IOException",std::string("cannot stat SBA source: ")+path+": "+std::strerror(errno));return nullptr;}
    const std::size_t slash=path.find_last_of('/');
    std::string root_name=slash==std::string::npos?path:path.substr(slash+1);
    if(root_name.empty())root_name="root";
    const bool include_root=(flags_value&8)!=0;
    bool tar_ok=true;
    if(S_ISDIR(root_st.st_mode)) {
      if(include_root)tar_ok=tarWalk(tar_file,path,"",root_name,includes,excludes,&stats,&io_error);
      else {
        DIR* root_dir=::opendir(path.c_str());
        if(!root_dir){tar_ok=false;io_error=std::string("cannot open SBA source directory: ")+std::strerror(errno);}
        else {
          std::vector<std::string> names;
          while(dirent* ent=::readdir(root_dir)){std::string n=ent->d_name;if(n!="."&&n!="..")names.push_back(n);}
          ::closedir(root_dir);std::sort(names.begin(),names.end());
          for(const auto& child:names) {
            const std::string full=path+"/"+child;
            if(!tarWalk(tar_file,full,child,child,includes,excludes,&stats,&io_error)){tar_ok=false;break;}
          }
        }
      }
    } else {
      tar_ok=tarWalk(tar_file,path,root_name,root_name,includes,excludes,&stats,&io_error);
    }
    if(!tar_ok){std::fclose(tar_file);::close(out_fd);throwJava(env,"java/io/IOException",io_error);return nullptr;}
    const std::uint8_t zeros[1024]{};
    if(std::fwrite(zeros,1,sizeof(zeros),tar_file)!=sizeof(zeros)||std::fflush(tar_file)!=0){std::fclose(tar_file);::close(out_fd);throwJava(env,"java/io/IOException","failed to finalize SBA TAR payload");return nullptr;}
    struct stat tar_st{};if(::fstat(::fileno(tar_file),&tar_st)!=0||tar_st.st_size<1024||tar_st.st_size%512!=0){std::fclose(tar_file);::close(out_fd);throwJava(env,"java/io/IOException","invalid generated SBA TAR size");return nullptr;}
    const std::uint64_t tar_size=static_cast<std::uint64_t>(tar_st.st_size);
    std::FILE* compressed_file=tar_file;
    if(compression) {
      std::FILE* ztmp=std::tmpfile();
      if(!ztmp){std::fclose(tar_file);::close(out_fd);throwJava(env,"java/io/IOException","cannot create Zstandard temporary");return nullptr;}
      std::uint64_t read_n=0,written_n=0;
      if(!compressFdToFd(::fileno(tar_file),::fileno(ztmp),compression_level,&read_n,&written_n,&io_error)) {
        std::fclose(ztmp);std::fclose(tar_file);::close(out_fd);throwJava(env,"java/io/IOException",io_error);return nullptr;
      }
      std::fclose(tar_file);compressed_file=ztmp;
    } else if(::lseek(::fileno(tar_file),0,SEEK_SET)<0) {
      std::fclose(tar_file);::close(out_fd);throwJava(env,"java/io/IOException","cannot rewind SBA TAR temporary");return nullptr;
    }
    struct stat comp_st{};if(::fstat(::fileno(compressed_file),&comp_st)!=0||comp_st.st_size<0){std::fclose(compressed_file);::close(out_fd);throwJava(env,"java/io/IOException","cannot determine SBA compressed size");return nullptr;}
    const std::uint64_t comp_size=static_cast<std::uint64_t>(comp_st.st_size);
    const std::uint64_t chunks=comp_size==0?0:1+(comp_size-1)/static_cast<std::uint64_t>(chunk_size>0?chunk_size:1);
    const std::uint64_t stored_size=comp_size+(encryption_method?chunks*16:0);
    off_t current=::lseek(out_fd,0,SEEK_CUR);
    if(current<0){std::fclose(compressed_file);::close(out_fd);throwJava(env,"java/io/IOException","cannot determine SBA output offset");return nullptr;}
    ArchiveIndexRecord rec;rec.name=std::move(name_bytes);rec.header_offset=static_cast<std::uint64_t>(current);
    rec.payload_offset=rec.header_offset+24+rec.name.size();rec.stored=stored_size;rec.compressed=comp_size;rec.tar=tar_size;
    rec.flags=static_cast<std::uint32_t>((compression?3:1)|(encryption_method?20:0));rec.stats=stats;
    std::vector<std::uint8_t> eh;eh.insert(eh.end(),{'S','A','E','1'});putU16(eh,24);putU16(eh,0);putU32(eh,rec.flags);putU16(eh,static_cast<std::uint16_t>(rec.name.size()));putU32(eh,0);eh.insert(eh.end(),6,0);eh.insert(eh.end(),rec.name.begin(),rec.name.end());
    if(!writeVectorFd(out_fd,eh,&io_error)){std::fclose(compressed_file);::close(out_fd);throwJava(env,"java/io/IOException",io_error);return nullptr;}
    if(::lseek(::fileno(compressed_file),0,SEEK_SET)<0){std::fclose(compressed_file);::close(out_fd);throwJava(env,"java/io/IOException","cannot rewind SBA payload");return nullptr;}
    if(!encryption_method) {
      std::uint8_t buf[64*1024];std::uint64_t left=comp_size;
      while(left){std::size_t want=static_cast<std::size_t>(std::min<std::uint64_t>(left,sizeof(buf)));std::size_t got=0;
        if(!readExact(::fileno(compressed_file),buf,want,&got)||got!=want||!writeFullyFd(out_fd,buf,want,&io_error)){std::fclose(compressed_file);::close(out_fd);throwJava(env,"java/io/IOException",io_error.empty()?"short SBA payload read":io_error);return nullptr;}left-=want;}
    } else {
      std::vector<std::uint8_t> plain_buf(static_cast<std::size_t>(chunk_size)),cipher_buf(static_cast<std::size_t>(chunk_size));
      std::uint8_t tag[16]{};std::uint64_t left=comp_size,chunk_index=0;
      while(left){const std::size_t n=static_cast<std::size_t>(std::min<std::uint64_t>(left,static_cast<std::uint64_t>(chunk_size)));std::size_t got=0;
        if(!readExact(::fileno(compressed_file),plain_buf.data(),n,&got)||got!=n){std::fclose(compressed_file);::close(out_fd);throwJava(env,"java/io/IOException","short SBA plaintext read");return nullptr;}
        int rc=-1;
        if(encryption_method==5){std::uint8_t nonce[16]{};makeChunkNonce128(nonce_seed,static_cast<std::uint64_t>(i),chunk_index,nonce);
          rc=aegis128x2_encrypt_detached(cipher_buf.data(),tag,sizeof(tag),plain_buf.data(),n,rec.name.data(),rec.name.size(),nonce,key.data());std::fill(nonce,nonce+sizeof(nonce),0);}
        else {std::uint8_t nonce[32]{};makeChunkNonce256(nonce_seed,static_cast<std::uint64_t>(i),chunk_index,nonce);
          rc=aegis256_encrypt_detached(cipher_buf.data(),tag,sizeof(tag),plain_buf.data(),n,rec.name.data(),rec.name.size(),nonce,key.data());std::fill(nonce,nonce+sizeof(nonce),0);}
        if(rc!=0||!writeFullyFd(out_fd,cipher_buf.data(),n,&io_error)||!writeFullyFd(out_fd,tag,sizeof(tag),&io_error)){
          std::fill(plain_buf.begin(),plain_buf.end(),0);std::fill(cipher_buf.begin(),cipher_buf.end(),0);std::fclose(compressed_file);::close(out_fd);
          throwJava(env,"java/io/IOException",io_error.empty()?"SBA AEGIS encryption failed":io_error);return nullptr;}
        left-=n;++chunk_index;
        if(!notifyProgress(env,progress_listener,static_cast<jlong>(comp_size-left),static_cast<jlong>(comp_size))){std::fclose(compressed_file);::close(out_fd);return nullptr;}
      }
      std::fill(plain_buf.begin(),plain_buf.end(),0);std::fill(cipher_buf.begin(),cipher_buf.end(),0);std::fill(tag,tag+sizeof(tag),0);
    }
    std::fclose(compressed_file);
    records.push_back(std::move(rec));
    total_tar+=tar_size;total_compressed+=comp_size;total_stored+=stored_size;total_source+=stats.bytes;
    if(!notifyProgress(env,progress_listener,static_cast<jlong>(i+1),count)){::close(out_fd);return nullptr;}
  }

  off_t index_off=::lseek(out_fd,0,SEEK_CUR);
  if(index_off<0){::close(out_fd);throwJava(env,"java/io/IOException","cannot determine SBA index offset");return nullptr;}
  std::vector<std::uint8_t> index;index.insert(index.end(),{'S','A','I','1'});putU16(index,16);putU16(index,static_cast<std::uint16_t>(mode));putU32(index,static_cast<std::uint32_t>(records.size()));putU32(index,static_cast<std::uint32_t>(metadata.size()));index.insert(index.end(),metadata.begin(),metadata.end());
  for(const auto& rec:records) {
    putU64(index,rec.header_offset);putU64(index,rec.payload_offset);putU64(index,rec.stored);putU64(index,rec.compressed);putU64(index,rec.tar);
    putU32(index,rec.flags);putU16(index,static_cast<std::uint16_t>(rec.name.size()));putU32(index,0);putU16(index,0);index.insert(index.end(),32,0);
    if(mode==2){putU64(index,rec.stats.entries);putU64(index,rec.stats.files);putU64(index,rec.stats.dirs);}
    index.insert(index.end(),rec.name.begin(),rec.name.end());
  }
  if(index.size()>67108864){::close(out_fd);throwJava(env,"java/lang/IllegalArgumentException","SBA index exceeds 64 MiB");return nullptr;}
  const std::uint32_t index_crc=sba1::crc32(index.data(),index.size());
  if(!writeVectorFd(out_fd,index,&io_error)){::close(out_fd);throwJava(env,"java/io/IOException",io_error);return nullptr;}
  const std::uint64_t index_size=index.size();
  std::vector<std::uint8_t> footer;footer.insert(footer.end(),{'S','A','F','1'});putU16(footer,32);putU16(footer,static_cast<std::uint16_t>(mode));putU64(footer,static_cast<std::uint64_t>(index_off));putU64(footer,index_size);putU32(footer,index_crc);putU32(footer,sba1::crc32(footer.data(),footer.size()));
  if(!writeVectorFd(out_fd,footer,&io_error)){::close(out_fd);throwJava(env,"java/io/IOException",io_error);return nullptr;}

  if(mode==2&&encryption_method) {
    std::vector<std::uint8_t> mac_key_input;
    const std::string key_label="SBA2-index-mac-key-v1";
    mac_key_input.insert(mac_key_input.end(),key_label.begin(),key_label.end());mac_key_input.insert(mac_key_input.end(),salt.begin(),salt.end());mac_key_input.insert(mac_key_input.end(),nonce_seed.begin(),nonce_seed.end());mac_key_input.insert(mac_key_input.end(),key.begin(),key.end());
    std::vector<std::uint8_t> mac_key;
    if(!getJavaDigest(env,mac_key_input,&mac_key)){::close(out_fd);return nullptr;}
    std::fill(mac_key_input.begin(),mac_key_input.end(),0);
    std::vector<std::uint8_t> mac_input;
    const std::string mac_label="SBA2-index-metadata-mac-v1";mac_input.insert(mac_input.end(),mac_label.begin(),mac_label.end());
    mac_input.insert(mac_input.end(),header.begin(),header.end());
    putU64(mac_input,static_cast<std::uint64_t>(index_off));putU64(mac_input,index_size);putU32(mac_input,index_crc);mac_input.insert(mac_input.end(),index.begin(),index.end());
    std::vector<std::uint8_t> mac;
    if(!getJavaHmac(env,mac_key,mac_input,&mac)||mac.size()!=32){std::fill(mac_key.begin(),mac_key.end(),0);::close(out_fd);return nullptr;}
    std::fill(mac_key.begin(),mac_key.end(),0);std::fill(mac_input.begin(),mac_input.end(),0);
    std::copy(mac.begin(),mac.end(),header.begin()+104);std::fill(mac.begin(),mac.end(),0);
    if(::lseek(out_fd,0,SEEK_SET)<0||!writeVectorFd(out_fd,header,&io_error)){::close(out_fd);throwJava(env,"java/io/IOException",io_error.empty()?"cannot finalize SBA header MAC":io_error);return nullptr;}
  }
  if(::fsync(out_fd)!=0){const std::string message=std::string("cannot sync SBA archive: ")+std::strerror(errno);::close(out_fd);throwJava(env,"java/io/IOException",message);return nullptr;}
  struct stat output_st{};if(::fstat(out_fd,&output_st)!=0){::close(out_fd);throwJava(env,"java/io/IOException","cannot stat completed SBA archive");return nullptr;}
  ::close(out_fd);
  const auto elapsed=std::chrono::duration_cast<std::chrono::milliseconds>(std::chrono::steady_clock::now()-started).count();
  jlong values[9]={static_cast<jlong>(total_source),static_cast<jlong>(total_tar),static_cast<jlong>(total_compressed),static_cast<jlong>(total_stored),static_cast<jlong>(records.size()),static_cast<jlong>(count),static_cast<jlong>(output_st.st_size),static_cast<jlong>(index_size),static_cast<jlong>(elapsed)};
  jlongArray result=env->NewLongArray(9);if(!result)return nullptr;env->SetLongArrayRegion(result,0,9,values);return env->ExceptionCheck()?nullptr:result;
}

extern "C" JNIEXPORT jlongArray JNICALL
Java_com_swiftapps_sba_SbaLibaegisCryptoNative_decryptAegis128X2ChunkedEntryFdRaw(
    JNIEnv* env, jobject /* self */, jint input_fd, jlong stored_size, jint output_fd,
    jbyteArray key, jbyteArray nonce_seed, jbyteArray aad, jlong entry_index,
    jlong plain_size, jint chunk_size, jobject progress_listener) {
  return decryptAegisChunks(env,input_fd,stored_size,output_fd,key,nonce_seed,aad,entry_index,plain_size,chunk_size,progress_listener,true);
}

extern "C" JNIEXPORT jlongArray JNICALL
Java_com_swiftapps_sba_SbaLibaegisCryptoNative_decryptAegis256ChunkedEntryFdRaw(
    JNIEnv* env, jobject /* self */, jint input_fd, jlong stored_size, jint output_fd,
    jbyteArray key, jbyteArray nonce_seed, jbyteArray aad, jlong entry_index,
    jlong plain_size, jint chunk_size, jobject progress_listener) {
  return decryptAegisChunks(env,input_fd,stored_size,output_fd,key,nonce_seed,aad,entry_index,plain_size,chunk_size,progress_listener,false);
}

extern "C" JNIEXPORT jlongArray JNICALL
Java_com_swiftapps_sba_SbaLibaegisCryptoNative_encryptAegis256ChunkedEntryFdRaw(
    JNIEnv* env,jobject /* self */,jint input_fd,jlong plain_size,jint output_fd,
    jbyteArray key,jbyteArray nonce_seed,jbyteArray aad,jlong entry_index,
    jlong stored_size,jint chunk_size,jobject progress_listener) {
  return encryptAegis256Chunks(env,input_fd,plain_size,output_fd,key,nonce_seed,aad,
                               entry_index,stored_size,chunk_size,progress_listener);
}

SBA_UNIMPLEMENTED_LONG_ARRAY(
    Java_com_swiftapps_sba_SbaSwiftTarNative_createTarToFdWithWriteStatsRaw,
    "legacy TAR creation with write statistics")

extern "C" JNIEXPORT jobjectArray JNICALL
Java_com_swiftapps_sba_SbaSwiftTarNative_extractTarFromFdRaw(JNIEnv*, jobject, jint, jlong, jstring, jint, jobjectArray, jobject);
extern "C" JNIEXPORT jobjectArray JNICALL
Java_com_swiftapps_sba_SbaSwiftTarNative_extractTarZstdFromFdRaw(JNIEnv*, jobject, jint, jlong, jlong, jstring, jint, jobjectArray, jobject);

namespace {
bool decompressZstdToTemporary(int input_fd,std::uint64_t compressed_size,
                               std::uint64_t expected_tar_size,FILE** output_file,
                               std::string* error) {
  *output_file=nullptr;
  std::FILE* out=std::tmpfile();
  if(!out){if(error)*error=std::string("cannot create decompressed TAR temporary: ")+std::strerror(errno);return false;}
  ZSTD_DStream* stream=ZSTD_createDStream();
  if(!stream){std::fclose(out);if(error)*error="cannot allocate Zstandard decompression stream";return false;}
  std::size_t zr=ZSTD_initDStream(stream);
  if(ZSTD_isError(zr)){if(error)*error=ZSTD_getErrorName(zr);ZSTD_freeDStream(stream);std::fclose(out);return false;}
  std::vector<std::uint8_t> input(64*1024),output(ZSTD_DStreamOutSize());
  std::uint64_t remaining=compressed_size,produced=0;
  bool frame_finished=false,failed=false;
  while(remaining&&!failed) {
    const std::size_t want=static_cast<std::size_t>(std::min<std::uint64_t>(remaining,input.size()));
    std::size_t got=0;
    if(!readExact(input_fd,input.data(),want,&got)||got!=want){if(error)*error="truncated compressed SBA payload";failed=true;break;}
    remaining-=got;
    ZSTD_inBuffer in{input.data(),got,0};
    while(in.pos<in.size) {
      ZSTD_outBuffer out_buf{output.data(),output.size(),0};
      zr=ZSTD_decompressStream(stream,&out_buf,&in);
      if(ZSTD_isError(zr)){if(error)*error=ZSTD_getErrorName(zr);failed=true;break;}
      if(out_buf.pos) {
        if(produced>expected_tar_size-out_buf.pos){if(error)*error="decompressed SBA TAR exceeds indexed size";failed=true;break;}
        if(std::fwrite(output.data(),1,out_buf.pos,out)!=out_buf.pos){if(error)*error="failed writing decompressed SBA TAR";failed=true;break;}
        produced+=out_buf.pos;
      }
      if(zr==0)frame_finished=true;
    }
  }
  if(!failed&&(!frame_finished||remaining!=0||produced!=expected_tar_size)) {
    if(error)*error="decompressed SBA TAR size/frame mismatch";failed=true;
  }
  ZSTD_freeDStream(stream);
  if(failed){std::fclose(out);return false;}
  if(std::fflush(out)!=0||::lseek(::fileno(out),0,SEEK_SET)<0){if(error)*error="cannot rewind decompressed SBA TAR";std::fclose(out);return false;}
  *output_file=out;return true;
}

jobjectArray extractAegisArchiveEntryImpl(
    JNIEnv* env, jobject self, jstring archive_path, jlong entry_offset,
    jlong stored_size, jlong compressed_size, jlong tar_size, jstring destination,
    jint flags, jobjectArray options, jint compression_method, jint encryption_method,
    jbyteArray key, jbyteArray nonce_seed, jbyteArray aad, jlong entry_index,
    jint chunk_size, jobject progress_listener) {
  if (archive_path == nullptr || destination == nullptr || entry_offset < 0 ||
      stored_size < 0 || compressed_size < 0 || tar_size < 0 ||
      (compression_method != 0 && compression_method != 1) ||
      (encryption_method != 4 && encryption_method != 5)) {
    throwJava(env,"java/lang/IllegalArgumentException","invalid SBA AEGIS extraction arguments");
    return nullptr;
  }
  const char* path_utf=env->GetStringUTFChars(archive_path,nullptr);
  if (!path_utf) return nullptr;
  const int archive_fd=::open(path_utf,O_RDONLY|O_CLOEXEC);
  const std::string path(path_utf);
  env->ReleaseStringUTFChars(archive_path,path_utf);
  if (archive_fd<0) { throwJava(env,"java/io/IOException",std::string("cannot open SBA archive: ")+std::strerror(errno)); return nullptr; }
  if (::lseek(archive_fd,static_cast<off_t>(entry_offset),SEEK_SET)<0) {
    const std::string message=std::string("cannot seek SBA archive payload: ")+std::strerror(errno);
    ::close(archive_fd); throwJava(env,"java/io/IOException",message); return nullptr;
  }
  std::FILE* temporary=std::tmpfile();
  if (!temporary) {
    const std::string message=std::string("cannot create SBA decrypt temporary: ")+std::strerror(errno);
    ::close(archive_fd); throwJava(env,"java/io/IOException",message); return nullptr;
  }
  const int temporary_fd=::fileno(temporary);
  jlongArray stats=decryptAegisChunks(env,archive_fd,stored_size,temporary_fd,key,nonce_seed,aad,
                                      entry_index,compressed_size,chunk_size,progress_listener,
                                      encryption_method==5);
  ::close(archive_fd);
  if (!stats || env->ExceptionCheck()) { std::fclose(temporary); return nullptr; }
  if (::lseek(temporary_fd,0,SEEK_SET)<0) {
    const std::string message=std::string("cannot rewind decrypted SBA payload: ")+std::strerror(errno);
    std::fclose(temporary); throwJava(env,"java/io/IOException",message); return nullptr;
  }
  int tar_fd=temporary_fd;
  std::FILE* decompressed_tar=nullptr;
  if (compression_method==0) {
    struct stat payload_st{};
    if(::fstat(temporary_fd,&payload_st)!=0||payload_st.st_size<0||
       static_cast<std::uint64_t>(payload_st.st_size)!=static_cast<std::uint64_t>(tar_size)) {
      std::fclose(temporary);
      throwJava(env,"java/io/IOException","decrypted SBA TAR size does not match index");
      return nullptr;
    }
  } else {
    std::string error;
    if(!decompressZstdToTemporary(temporary_fd,static_cast<std::uint64_t>(compressed_size),
                                  static_cast<std::uint64_t>(tar_size),&decompressed_tar,&error)) {
      std::fclose(temporary);
      throwJava(env,"java/io/IOException",error);
      return nullptr;
    }
    tar_fd=::fileno(decompressed_tar);
    std::fclose(temporary);
  }
  jobjectArray result=Java_com_swiftapps_sba_SbaSwiftTarNative_extractTarFromFdRaw(
      env,self,tar_fd,tar_size,destination,flags,options,progress_listener);
  if(decompressed_tar)std::fclose(decompressed_tar);
  else std::fclose(temporary);
  return result;
}
}  // namespace

extern "C" JNIEXPORT jobjectArray JNICALL
Java_com_swiftapps_sba_SbaSwiftTarNative_extractAegisArchiveEntry(
    JNIEnv* env, jobject self, jstring archive_path, jlong entry_offset,
    jlong stored_size, jlong compressed_size, jlong tar_size, jstring destination,
    jint flags, jobjectArray options, jint compression_method, jint encryption_method,
    jbyteArray key, jbyteArray nonce_seed, jbyteArray aad, jlong entry_index,
    jint chunk_size, jobject progress_listener) {
  return extractAegisArchiveEntryImpl(env,self,archive_path,entry_offset,stored_size,compressed_size,
      tar_size,destination,flags,options,compression_method,encryption_method,key,nonce_seed,aad,
      entry_index,chunk_size,progress_listener);
}

extern "C" JNIEXPORT jobjectArray JNICALL
Java_com_swiftapps_sba_SbaSwiftTarNative_extractAegisArchiveEntryFused(
    JNIEnv* env, jobject self, jstring archive_path, jlong entry_offset,
    jlong stored_size, jlong compressed_size, jlong tar_size, jstring destination,
    jint flags, jobjectArray options, jint compression_method, jint encryption_method,
    jbyteArray key, jbyteArray nonce_seed, jbyteArray aad, jlong entry_index,
    jint chunk_size, jobject progress_listener) {
  // The fused entry point currently shares the streaming path; behavior is identical.
  return extractAegisArchiveEntryImpl(env,self,archive_path,entry_offset,stored_size,compressed_size,
      tar_size,destination,flags,options,compression_method,encryption_method,key,nonce_seed,aad,
      entry_index,chunk_size,progress_listener);
}

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
