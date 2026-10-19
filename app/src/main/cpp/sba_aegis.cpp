#include <jni.h>
#include <aegis.h>

#include <algorithm>
#include <array>
#include <cstdint>
#include <cstring>
#include <limits>
#include <mutex>
#include <string>
#include <vector>
#include <unistd.h>
#include <cerrno>

namespace {

constexpr size_t kTagBytes = 16;
constexpr size_t kNonceSeedBytes = 16;
constexpr size_t kAegis256KeyBytes = 32;
constexpr size_t kAegis128X2KeyBytes = 16;
constexpr int64_t kMinChunkSize = 4096;
constexpr int64_t kMaxChunkSize = 16777216;
std::once_flag gAegisInitOnce;
int gAegisInitResult = -1;

void ensureAegisInitialized() {
    std::call_once(gAegisInitOnce, [] { gAegisInitResult = aegis_init(); });
}

void throwJava(JNIEnv* env, const char* className, const std::string& message) {
    if (env->ExceptionCheck()) return;
    jclass cls = env->FindClass(className);
    if (cls != nullptr) {
        env->ThrowNew(cls, message.c_str());
        env->DeleteLocalRef(cls);
    }
}

void throwIo(JNIEnv* env, const std::string& message) {
    throwJava(env, "java/io/IOException", message);
}

bool readExact(int fd, uint8_t* output, size_t size) {
    size_t done = 0;
    while (done < size) {
        const ssize_t n = read(fd, output + done, size - done);
        if (n < 0 && errno == EINTR) continue;
        if (n <= 0) return false;
        done += static_cast<size_t>(n);
    }
    return true;
}

bool writeExact(int fd, const uint8_t* input, size_t size) {
    size_t done = 0;
    while (done < size) {
        const ssize_t n = write(fd, input + done, size - done);
        if (n < 0 && errno == EINTR) continue;
        if (n <= 0) return false;
        done += static_cast<size_t>(n);
    }
    return true;
}

struct VectorWiper {
    std::vector<uint8_t>& value;
    ~VectorWiper() { std::fill(value.begin(), value.end(), 0); }
};
template <size_t N>
struct ArrayWiper {
    std::array<uint8_t, N>& value;
    ~ArrayWiper() { std::fill(value.begin(), value.end(), 0); }
};

void appendBe64(std::vector<uint8_t>* out, uint64_t value) {
    for (int shift = 56; shift >= 0; shift -= 8) {
        out->push_back(static_cast<uint8_t>((value >> shift) & 0xffU));
    }
}

bool copyByteArray(JNIEnv* env, jbyteArray array, std::vector<uint8_t>* output,
                   size_t expectedLength, const char* label) {
    if (array == nullptr) {
        throwJava(env, "java/lang/NullPointerException", label);
        return false;
    }
    const jsize length = env->GetArrayLength(array);
    if (length < 0 || static_cast<size_t>(length) != expectedLength) {
        throwIo(env, std::string("Invalid SBA AEGIS ") + label + " length");
        return false;
    }
    output->resize(expectedLength);
    if (expectedLength != 0) {
        env->GetByteArrayRegion(array, 0, length, reinterpret_cast<jbyte*>(output->data()));
        if (env->ExceptionCheck()) return false;
    }
    return true;
}

bool copyVariableByteArray(JNIEnv* env, jbyteArray array, std::vector<uint8_t>* output,
                           size_t maxLength, const char* label) {
    if (array == nullptr) {
        throwJava(env, "java/lang/NullPointerException", label);
        return false;
    }
    const jsize length = env->GetArrayLength(array);
    if (length < 0 || static_cast<size_t>(length) > maxLength) {
        throwIo(env, std::string("Invalid SBA AEGIS ") + label + " length");
        return false;
    }
    output->resize(static_cast<size_t>(length));
    if (length != 0) {
        env->GetByteArrayRegion(array, 0, length, reinterpret_cast<jbyte*>(output->data()));
        if (env->ExceptionCheck()) return false;
    }
    return true;
}

bool sha256(JNIEnv* env, const std::vector<uint8_t>& input, std::array<uint8_t, 32>* output) {
    jclass digestClass = env->FindClass("java/security/MessageDigest");
    if (digestClass == nullptr) return false;
    jmethodID getInstance = env->GetStaticMethodID(
        digestClass, "getInstance", "(Ljava/lang/String;)Ljava/security/MessageDigest;");
    jmethodID digestMethod = env->GetMethodID(digestClass, "digest", "([B)[B");
    if (getInstance == nullptr || digestMethod == nullptr) {
        env->DeleteLocalRef(digestClass);
        return false;
    }
    jstring algorithm = env->NewStringUTF("SHA-256");
    jobject digestObject = algorithm
        ? env->CallStaticObjectMethod(digestClass, getInstance, algorithm) : nullptr;
    if (algorithm != nullptr) env->DeleteLocalRef(algorithm);
    if (digestObject == nullptr || env->ExceptionCheck()) {
        if (digestObject != nullptr) env->DeleteLocalRef(digestObject);
        env->DeleteLocalRef(digestClass);
        return false;
    }
    jbyteArray message = env->NewByteArray(static_cast<jsize>(input.size()));
    if (message == nullptr) {
        env->DeleteLocalRef(digestObject);
        env->DeleteLocalRef(digestClass);
        return false;
    }
    if (!input.empty()) {
        env->SetByteArrayRegion(message, 0, static_cast<jsize>(input.size()),
                                reinterpret_cast<const jbyte*>(input.data()));
    }
    jbyteArray result = env->ExceptionCheck()
        ? nullptr : static_cast<jbyteArray>(env->CallObjectMethod(digestObject, digestMethod, message));
    bool ok = result != nullptr && !env->ExceptionCheck() && env->GetArrayLength(result) == 32;
    if (ok) env->GetByteArrayRegion(result, 0, 32, reinterpret_cast<jbyte*>(output->data()));
    if (result != nullptr) env->DeleteLocalRef(result);
    env->DeleteLocalRef(message);
    env->DeleteLocalRef(digestObject);
    env->DeleteLocalRef(digestClass);
    return ok && !env->ExceptionCheck();
}

bool deriveNonce(JNIEnv* env, int method, const std::vector<uint8_t>& nonceSeed,
                 const std::vector<uint8_t>& entryName, uint64_t entryOrder,
                 uint64_t chunkIndex, std::vector<uint8_t>* nonce) {
    const char* domain = method == 4 ? "SBA1-AEGIS256-entry-chunk-nonce-v1"
                                     : "SBA1-AEGIS128X2-entry-chunk-nonce-v1";
    const size_t domainLength = std::strlen(domain);
    std::vector<uint8_t> input;
    input.reserve(domainLength + nonceSeed.size() + 8 + entryName.size() + 8);
    input.insert(input.end(), domain, domain + domainLength);
    input.insert(input.end(), nonceSeed.begin(), nonceSeed.end());
    appendBe64(&input, entryOrder);
    input.insert(input.end(), entryName.begin(), entryName.end());
    appendBe64(&input, chunkIndex);
    std::array<uint8_t, 32> digest{};
    const bool ok = sha256(env, input, &digest);
    std::fill(input.begin(), input.end(), 0);
    if (!ok) {
        std::fill(digest.begin(), digest.end(), 0);
        return false;
    }
    const size_t nonceLength = method == 4 ? 32 : 16;
    nonce->assign(digest.begin(), digest.begin() + static_cast<ptrdiff_t>(nonceLength));
    std::fill(digest.begin(), digest.end(), 0);
    return true;
}

std::vector<uint8_t> buildAad(int method, const std::vector<uint8_t>& entryName,
                              uint64_t entryOrder, uint64_t chunkIndex, uint64_t chunkOffset) {
    const char* domain = method == 4 ? "SBA1-AEGIS256-entry-chunk-aad-v1"
                                     : "SBA1-AEGIS128X2-entry-chunk-aad-v1";
    const size_t domainLength = std::strlen(domain);
    std::vector<uint8_t> aad;
    aad.reserve(domainLength + 8 + 4 + entryName.size() + 16);
    aad.insert(aad.end(), domain, domain + domainLength);
    appendBe64(&aad, entryOrder);
    aad.insert(aad.end(), 4, 0);
    aad.insert(aad.end(), entryName.begin(), entryName.end());
    appendBe64(&aad, chunkIndex);
    appendBe64(&aad, chunkOffset);
    return aad;
}

bool isCancelled(JNIEnv* env, jobject progress, jmethodID cancelledMethod) {
    if (progress == nullptr || cancelledMethod == nullptr) return false;
    const jboolean cancelled = env->CallBooleanMethod(progress, cancelledMethod);
    return env->ExceptionCheck() || cancelled == JNI_TRUE;
}

void reportProgress(JNIEnv* env, jobject progress, jmethodID progressMethod,
                    uint64_t processed, uint64_t total) {
    if (progress == nullptr || progressMethod == nullptr || env->ExceptionCheck()) return;
    env->CallVoidMethod(progress, progressMethod, static_cast<jlong>(processed),
                        static_cast<jlong>(total));
}

int descriptorValue(JNIEnv* env, jobject descriptor) {
    if (descriptor == nullptr) {
        throwJava(env, "java/lang/NullPointerException", "fileDescriptor");
        return -1;
    }
    jclass cls = env->FindClass("java/io/FileDescriptor");
    jfieldID field = cls ? env->GetFieldID(cls, "descriptor", "I") : nullptr;
    if (field == nullptr) {
        if (cls) env->DeleteLocalRef(cls);
        return -1;
    }
    const jint value = env->GetIntField(descriptor, field);
    env->DeleteLocalRef(cls);
    return value;
}

jlongArray processChunked(JNIEnv* env, int method, bool encrypt,
                          jint inputFd, jlong inputByteCount, jint outputFd,
                          jbyteArray keyArray, jbyteArray nonceSeedArray,
                          jbyteArray entryNameArray, jlong entryOrder,
                          jlong plainByteCount, jint chunkSize, jobject progress) {
    if (inputFd < 0 || outputFd < 0 || inputFd == outputFd || inputByteCount < 0 ||
        plainByteCount < 0 || entryOrder < 0 || chunkSize < kMinChunkSize ||
        chunkSize > kMaxChunkSize) {
        throwIo(env, "Invalid SBA AEGIS file descriptor, entry order, size, or chunk size");
        return nullptr;
    }
    const size_t keyLength = method == 4 ? kAegis256KeyBytes : kAegis128X2KeyBytes;
    std::vector<uint8_t> key, nonceSeed, entryName;
    VectorWiper wipeKey{key}, wipeSeed{nonceSeed}, wipeName{entryName};
    if (!copyByteArray(env, keyArray, &key, keyLength, "key") ||
        !copyByteArray(env, nonceSeedArray, &nonceSeed, kNonceSeedBytes, "nonce seed") ||
        !copyVariableByteArray(env, entryNameArray, &entryName, 1024 * 1024, "entry name")) {
        return nullptr;
    }
    const uint64_t plainSize = static_cast<uint64_t>(plainByteCount);
    const uint64_t storedSize = static_cast<uint64_t>(inputByteCount);
    const uint64_t chunks = plainSize == 0 ? 0 : (plainSize - 1) / static_cast<uint64_t>(chunkSize) + 1;
    if (chunks > (std::numeric_limits<uint64_t>::max() - plainSize) / kTagBytes ||
        storedSize != plainSize + chunks * kTagBytes) {
        throwIo(env, "SBA AEGIS stored payload size does not match chunk/tag framing");
        return nullptr;
    }
    if (storedSize > static_cast<uint64_t>(std::numeric_limits<jlong>::max()) ||
        plainSize > static_cast<uint64_t>(std::numeric_limits<jlong>::max())) {
        throwIo(env, "SBA AEGIS payload size overflow");
        return nullptr;
    }

    jmethodID cancelledMethod = nullptr;
    jmethodID progressMethod = nullptr;
    if (progress != nullptr) {
        jclass progressClass = env->GetObjectClass(progress);
        if (progressClass == nullptr) return nullptr;
        cancelledMethod = env->GetMethodID(progressClass, "isCancellationRequested", "()Z");
        progressMethod = env->GetMethodID(progressClass, "onProgress", "(JJ)V");
        env->DeleteLocalRef(progressClass);
        if (cancelledMethod == nullptr || progressMethod == nullptr) return nullptr;
    }
    ensureAegisInitialized();
    if (gAegisInitResult != 0) {
        throwIo(env, "AEGIS primitive initialization failed");
        return nullptr;
    }

    std::vector<uint8_t> inputChunk;
    std::vector<uint8_t> outputChunk;
    VectorWiper wipeInput{inputChunk}, wipeOutput{outputChunk};
    std::array<uint8_t, kTagBytes> tag{};
    ArrayWiper<kTagBytes> wipeTag{tag};
    uint64_t storedDone = 0;
    uint64_t plainDone = 0;
    uint64_t chunkIndex = 0;
    while (plainDone < plainSize) {
        if (isCancelled(env, progress, cancelledMethod)) {
            if (!env->ExceptionCheck()) throwJava(env, "java/io/InterruptedIOException", "SBA AEGIS operation cancelled");
            return nullptr;
        }
        if (env->ExceptionCheck()) return nullptr;
        const size_t chunkLength = static_cast<size_t>(
            std::min<uint64_t>(static_cast<uint64_t>(chunkSize), plainSize - plainDone));
        inputChunk.resize(chunkLength);
        outputChunk.resize(chunkLength);
        if (encrypt) {
            if (!readExact(inputFd, inputChunk.data(), chunkLength)) {
                throwIo(env, "Failed to read plaintext SBA AEGIS chunk");
                return nullptr;
            }
        } else {
            if (!readExact(inputFd, inputChunk.data(), chunkLength) ||
                !readExact(inputFd, tag.data(), tag.size())) {
                throwIo(env, "Truncated SBA AEGIS ciphertext/tag chunk");
                return nullptr;
            }
        }
        std::vector<uint8_t> nonce;
        VectorWiper wipeNonce{nonce};
        if (!deriveNonce(env, method, nonceSeed, entryName, static_cast<uint64_t>(entryOrder),
                         chunkIndex, &nonce)) return nullptr;
        std::vector<uint8_t> aad = buildAad(method, entryName, static_cast<uint64_t>(entryOrder),
                                            chunkIndex, plainDone);
        VectorWiper wipeAad{aad};
        int cryptoResult = -1;
        if (method == 4) {
            if (encrypt) {
                cryptoResult = aegis256_encrypt_detached(
                    outputChunk.data(), tag.data(), kTagBytes, inputChunk.data(), chunkLength,
                    aad.data(), aad.size(), nonce.data(), key.data());
            } else {
                cryptoResult = aegis256_decrypt_detached(
                    outputChunk.data(), inputChunk.data(), chunkLength, tag.data(), kTagBytes,
                    aad.data(), aad.size(), nonce.data(), key.data());
            }
        } else {
            if (encrypt) {
                cryptoResult = aegis128x2_encrypt_detached(
                    outputChunk.data(), tag.data(), kTagBytes, inputChunk.data(), chunkLength,
                    aad.data(), aad.size(), nonce.data(), key.data());
            } else {
                cryptoResult = aegis128x2_decrypt_detached(
                    outputChunk.data(), inputChunk.data(), chunkLength, tag.data(), kTagBytes,
                    aad.data(), aad.size(), nonce.data(), key.data());
            }
        }
        std::fill(nonce.begin(), nonce.end(), 0);
        std::fill(aad.begin(), aad.end(), 0);
        if (cryptoResult != 0) {
            std::fill(outputChunk.begin(), outputChunk.end(), 0);
            throwIo(env, encrypt ? "AEGIS encryption failed" : "authentication failed");
            return nullptr;
        }
        if (encrypt) {
            if (!writeExact(outputFd, outputChunk.data(), chunkLength) ||
                !writeExact(outputFd, tag.data(), tag.size())) {
                throwIo(env, "Failed to write SBA AEGIS ciphertext/tag chunk");
                return nullptr;
            }
            storedDone += chunkLength + tag.size();
        } else {
            if (!writeExact(outputFd, outputChunk.data(), chunkLength)) {
                std::fill(outputChunk.begin(), outputChunk.end(), 0);
                throwIo(env, "Failed to write SBA AEGIS plaintext chunk");
                return nullptr;
            }
            storedDone += chunkLength + tag.size();
        }
        plainDone += chunkLength;
        ++chunkIndex;
        std::fill(inputChunk.begin(), inputChunk.end(), 0);
        std::fill(outputChunk.begin(), outputChunk.end(), 0);
        std::fill(tag.begin(), tag.end(), 0);
        reportProgress(env, progress, progressMethod, plainDone, plainSize);
        if (env->ExceptionCheck()) return nullptr;
    }
    if (storedDone != storedSize || plainDone != plainSize) {
        throwIo(env, "native SBA AEGIS decrypted byte count mismatch");
        return nullptr;
    }
    jlong values[2] = {static_cast<jlong>(storedDone), static_cast<jlong>(plainDone)};
    jlongArray result = env->NewLongArray(2);
    if (result != nullptr) env->SetLongArrayRegion(result, 0, 2, values);
    std::fill(key.begin(), key.end(), 0);
    std::fill(nonceSeed.begin(), nonceSeed.end(), 0);
    std::fill(entryName.begin(), entryName.end(), 0);
    return result;
}

}  // namespace

extern "C" JNIEXPORT jboolean JNICALL
Java_com_bareapps_sba_SbaLibaegisCryptoNative_isAvailable(JNIEnv*, jobject) {
    std::call_once(initOnce, [] { initResult = aegis_init(); });
    return initResult == 0 ? JNI_TRUE : JNI_FALSE;
}

extern "C" JNIEXPORT jlongArray JNICALL
Java_com_bareapps_sba_SbaLibaegisCryptoNative_nativeDecryptAegis256ChunkedEntryFdRaw(
    JNIEnv* env, jobject, jobject inputDescriptor, jlong storedSize, jobject outputDescriptor, jbyteArray key,
    jbyteArray nonceSeed, jbyteArray entryNameUtf8, jlong entryOrder, jlong compressedSize,
    jint chunkSize, jobject progress) {
    const jint inputFd = descriptorValue(env, inputDescriptor);
    const jint outputFd = descriptorValue(env, outputDescriptor);
    if (env->ExceptionCheck()) return nullptr;
    return processChunked(env, 4, false, inputFd, storedSize, outputFd, key, nonceSeed,
                          entryNameUtf8, entryOrder, compressedSize, chunkSize, progress);
}

extern "C" JNIEXPORT jlongArray JNICALL
Java_com_bareapps_sba_SbaLibaegisCryptoNative_nativeDecryptAegis128X2ChunkedEntryFdRaw(
    JNIEnv* env, jobject, jobject inputDescriptor, jlong storedSize, jobject outputDescriptor, jbyteArray key,
    jbyteArray nonceSeed, jbyteArray entryNameUtf8, jlong entryOrder, jlong compressedSize,
    jint chunkSize, jobject progress) {
    const jint inputFd = descriptorValue(env, inputDescriptor);
    const jint outputFd = descriptorValue(env, outputDescriptor);
    if (env->ExceptionCheck()) return nullptr;
    return processChunked(env, 5, false, inputFd, storedSize, outputFd, key, nonceSeed,
                          entryNameUtf8, entryOrder, compressedSize, chunkSize, progress);
}

extern "C" JNIEXPORT jlongArray JNICALL
Java_com_bareapps_sba_SbaLibaegisCryptoNative_nativeEncryptAegis256ChunkedEntryFdRaw(
    JNIEnv* env, jobject, jobject inputDescriptor, jlong plainSize, jobject outputDescriptor, jbyteArray key,
    jbyteArray nonceSeed, jbyteArray entryNameUtf8, jlong entryOrder, jint chunkSize,
    jobject progress) {
    const jint inputFd = descriptorValue(env, inputDescriptor);
    const jint outputFd = descriptorValue(env, outputDescriptor);
    if (env->ExceptionCheck()) return nullptr;
    const uint64_t plain = plainSize < 0 ? 0 : static_cast<uint64_t>(plainSize);
    const uint64_t chunks = plain == 0 ? 0 : (plain - 1) / static_cast<uint64_t>(std::max<jint>(chunkSize, 1)) + 1;
    if (plainSize < 0 || chunks > (std::numeric_limits<uint64_t>::max() - plain) / kTagBytes) {
        throwIo(env, "Invalid SBA AEGIS plaintext size");
        return nullptr;
    }
    return processChunked(env, 4, true, inputFd, static_cast<jlong>(plain + chunks * kTagBytes),
                          outputFd, key, nonceSeed, entryNameUtf8, entryOrder, plainSize,
                          chunkSize, progress);
}

extern "C" JNIEXPORT jlongArray JNICALL
Java_com_bareapps_sba_SbaLibaegisCryptoNative_nativeEncryptAegis128X2ChunkedEntryFdRaw(
    JNIEnv* env, jobject, jobject inputDescriptor, jlong plainSize, jobject outputDescriptor, jbyteArray key,
    jbyteArray nonceSeed, jbyteArray entryNameUtf8, jlong entryOrder, jint chunkSize,
    jobject progress) {
    const jint inputFd = descriptorValue(env, inputDescriptor);
    const jint outputFd = descriptorValue(env, outputDescriptor);
    if (env->ExceptionCheck()) return nullptr;
    const uint64_t plain = plainSize < 0 ? 0 : static_cast<uint64_t>(plainSize);
    const uint64_t chunks = plain == 0 ? 0 : (plain - 1) / static_cast<uint64_t>(std::max<jint>(chunkSize, 1)) + 1;
    if (plainSize < 0 || chunks > (std::numeric_limits<uint64_t>::max() - plain) / kTagBytes) {
        throwIo(env, "Invalid SBA AEGIS plaintext size");
        return nullptr;
    }
    return processChunked(env, 5, true, inputFd, static_cast<jlong>(plain + chunks * kTagBytes),
                          outputFd, key, nonceSeed, entryNameUtf8, entryOrder, plainSize,
                          chunkSize, progress);
}
