#include <jni.h>
#include <algorithm>
#include <cerrno>
#include <cstdint>
#include <cstring>
#include <string>
#include <utility>
#include <vector>
#include <map>
#include <cstdlib>
#include <cmath>
#include <unistd.h>
#include <fcntl.h>
#include <sys/stat.h>
#include <sys/sysmacros.h>
#include <sys/sendfile.h>
#include <sys/xattr.h>
#include <limits>
#include <limits.h>
#include <cstddef>
#include <time.h>

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
    for (size_t i = 0; i < length && field[i] != '\0'; ++i) {
        const unsigned char c = static_cast<unsigned char>(field[i]);
        if (c == ' ' || c == '\0') { if (started) break; continue; }
        if (c < '0' || c > '7') return UINT64_MAX;
        started = true;
        const uint64_t digit = static_cast<uint64_t>(c - '0');
        if (value > (UINT64_MAX - digit) / 8ULL) return UINT64_MAX;
        value = (value << 3) + digit;
    }
    return value;
}

/**
 * TAR numeric fields may use GNU/POSIX base-256 encoding when octal fields
 * cannot represent a value. This reader supports non-negative values only;
 * signed negative timestamps are handled by PAX mtime, which carries decimal
 * seconds and fractional precision.
 */
uint64_t parseTarNumber(const char* field, size_t length) {
    if (field == nullptr || length == 0) return UINT64_MAX;
    const unsigned char first = static_cast<unsigned char>(field[0]);
    if ((first & 0x80U) == 0) return parseOctal(field, length);

    // In GNU base-256, the top marker bit is not part of the value. The next
    // bit is the sign bit; negative values are not valid for sizes or modes.
    if ((first & 0x40U) != 0) return UINT64_MAX;
    uint64_t value = static_cast<uint64_t>(first & 0x3fU);
    for (size_t i = 1; i < length; ++i) {
        if (value > (UINT64_MAX >> 8U)) return UINT64_MAX;
        value = (value << 8U) | static_cast<unsigned char>(field[i]);
    }
    return value;
}

bool validTarChecksum(const TarHeader& h) {
    uint64_t stored = parseOctal(h.checksum, sizeof(h.checksum));
    uint64_t sum = 0;
    const auto* p = reinterpret_cast<const unsigned char*>(&h);
    const size_t checksumStart = offsetof(TarHeader, checksum);
    const size_t checksumEnd = checksumStart + sizeof(h.checksum);
    for (size_t i = 0; i < sizeof(h); ++i) {
        sum += (i >= checksumStart && i < checksumEnd) ? static_cast<unsigned char>(' ') : p[i];
    }
    return stored == sum;
}

bool readExactAt(int fd, void* out, size_t size, off_t offset) {
    if (fd < 0 || offset < 0 ||
        static_cast<uint64_t>(offset) > static_cast<uint64_t>(INT64_MAX) ||
        size > static_cast<uint64_t>(INT64_MAX) - static_cast<uint64_t>(offset)) {
        errno = EOVERFLOW;
        return false;
    }
    auto* p = static_cast<unsigned char*>(out);
    size_t done = 0;
    while (done < size) {
        // Validate before casting/addition: malformed archive sizes must never
        // wrap a positional read back to an earlier part of the file.
        if (done > static_cast<size_t>(INT64_MAX - offset)) {
            errno = EOVERFLOW;
            return false;
        }
        const off_t current = offset + static_cast<off_t>(done);
        const ssize_t n = pread(fd, p + done, size - done, current);
        if (n < 0 && errno == EINTR) continue;
        if (n <= 0) return false;
        done += static_cast<size_t>(n);
    }
    return true;
}

bool isAtRegularFileEnd(int fd, off_t offset) {
    struct stat st{};
    return fstat(fd, &st) == 0 && S_ISREG(st.st_mode) &&
           offset >= 0 && offset >= st.st_size;
}

std::string tarName(const TarHeader& h) {
    const size_t n = strnlen(h.name, sizeof(h.name));
    const size_t p = strnlen(h.prefix, sizeof(h.prefix));
    if (p == 0) return std::string(h.name, n);
    return std::string(h.prefix, p) + "/" + std::string(h.name, n);
}

/**
 * GNU TAR long-name (L) and long-link (K) records store a NUL-terminated
 * pathname in their payload. Bound allocation before reading untrusted sizes.
 */
bool readTarTextAt(int fd, uint64_t offset, uint64_t size, std::string* value) {
    constexpr uint64_t kMaxTarText = 16ULL * 1024ULL * 1024ULL;
    if (value == nullptr || size == 0 || size > kMaxTarText ||
        offset > static_cast<uint64_t>(INT64_MAX) ||
        size > static_cast<uint64_t>(INT64_MAX) - offset) return false;
    std::vector<char> bytes(static_cast<size_t>(size));
    if (!readExactAt(fd, bytes.data(), bytes.size(), static_cast<off_t>(offset))) return false;
    const auto terminator = std::find(bytes.begin(), bytes.end(), '\0');
    size_t length = static_cast<size_t>(terminator - bytes.begin());
    while (length > 0 && (bytes[length - 1] == '\n' || bytes[length - 1] == '\r')) --length;
    value->assign(bytes.data(), length);
    return !value->empty();
}

/** Parse POSIX PAX length-prefixed records without trusting their declared lengths. */
bool parsePaxRecords(const std::string& payload, std::map<std::string, std::string>* records,
                     bool globalRecords) {
    if (records == nullptr) return false;
    size_t at = 0;
    std::vector<std::string> repeatedSparseValues;
    bool expectSparseOffset = true;
    bool sparseMapInPayload = false;
    while (at < payload.size()) {
        const size_t space = payload.find(' ', at);
        if (space == std::string::npos || space == at) return false;
        uint64_t recordLength = 0;
        for (size_t i = at; i < space; ++i) {
            const unsigned char ch = static_cast<unsigned char>(payload[i]);
            if (ch < '0' || ch > '9') return false;
            const uint64_t digit = static_cast<uint64_t>(ch - '0');
            if (recordLength > (UINT64_MAX - digit) / 10ULL) return false;
            recordLength = recordLength * 10ULL + digit;
        }
        if (recordLength == 0 || recordLength > payload.size() - at ||
            recordLength <= space - at + 2) return false;
        const size_t recordEnd = at + static_cast<size_t>(recordLength);
        if (payload[recordEnd - 1] != '\n') return false;
        const size_t equals = payload.find('=', space + 1);
        if (equals == std::string::npos || equals >= recordEnd - 1 || equals == space + 1) return false;
        const std::string key = payload.substr(space + 1, equals - (space + 1));
        const std::string value = payload.substr(equals + 1, recordEnd - equals - 2);
        if (key == "GNU.sparse.offset" || key == "GNU.sparse.numbytes") {
            const bool isOffset = key == "GNU.sparse.offset";
            if (value.empty() || isOffset != expectSparseOffset ||
                repeatedSparseValues.size() >= 2000000U) return false;
            repeatedSparseValues.push_back(value);
            expectSparseOffset = !expectSparseOffset;
        } else {
            if (key == "GNU.sparse.map") sparseMapInPayload = true;
            if (value.empty() && globalRecords) records->erase(key);
            else (*records)[key] = value;
        }
        at = recordEnd;
    }
    if (!repeatedSparseValues.empty()) {
        if (!expectSparseOffset || sparseMapInPayload) return false;
        std::string map;
        for (const std::string& value : repeatedSparseValues) {
            if (!map.empty()) map.push_back(',');
            map += value;
        }
        (*records)["GNU.sparse.map"] = std::move(map);
    }
    return at == payload.size();
}

bool readPaxRecordsAt(int fd, uint64_t offset, uint64_t size,
                      std::map<std::string, std::string>* records, bool globalRecords) {
    constexpr uint64_t kMaxPaxPayload = 16ULL * 1024ULL * 1024ULL;
    if (records == nullptr || size == 0 || size > kMaxPaxPayload ||
        offset > static_cast<uint64_t>(INT64_MAX) ||
        size > static_cast<uint64_t>(INT64_MAX) - offset) return false;
    std::string payload(static_cast<size_t>(size), '\0');
    if (!readExactAt(fd, payload.data(), payload.size(), static_cast<off_t>(offset))) return false;
    return parsePaxRecords(payload, records, globalRecords);
}

const std::string* paxValue(const std::map<std::string, std::string>& local,
                       const std::map<std::string, std::string>& global,
                       const char* key) {
    // A local PAX record takes precedence even when its value is empty.
    // Empty local values mask the global value for this entry; falling through
    // to global metadata here incorrectly resurrects a path/size/mtime that the
    // local header explicitly cleared.
    const auto localIt = local.find(key);
    if (localIt != local.end()) {
        return localIt->second.empty() ? nullptr : &localIt->second;
    }
    const auto globalIt = global.find(key);
    if (globalIt != global.end()) {
        return globalIt->second.empty() ? nullptr : &globalIt->second;
    }
    return nullptr;
}

std::map<std::string, std::string> collectPaxXattrs(
    const std::map<std::string, std::string>& local,
    const std::map<std::string, std::string>& global,
    bool restoreXattrs,
    bool restoreSelinux) {
    std::map<std::string, std::string> result;
    auto scan = [&](const std::map<std::string, std::string>& records) {
        for (const auto& record : records) {
            std::string name;
            constexpr const char* kSchilyPrefix = "SCHILY.xattr.";
            constexpr const char* kLibarchivePrefix = "LIBARCHIVE.xattr.";
            if (record.first.compare(0, std::strlen(kSchilyPrefix), kSchilyPrefix) == 0) {
                name = record.first.substr(std::strlen(kSchilyPrefix));
            } else if (record.first.compare(0, std::strlen(kLibarchivePrefix), kLibarchivePrefix) == 0) {
                name = record.first.substr(std::strlen(kLibarchivePrefix));
            } else {
                continue;
            }
            const std::string* value = paxValue(local, global, record.first.c_str());
            const bool selinux = name == "security.selinux";
            if (value == nullptr || name.empty() ||
                (selinux ? !restoreSelinux : !restoreXattrs)) {
                result.erase(name);
            } else {
                result[name] = *value;
            }
        }
    };
    scan(global);
    scan(local);
    return result;
}

bool parsePaxUnsigned(const std::string& value, uint64_t* result) {
    if (result == nullptr || value.empty()) return false;
    uint64_t parsed = 0;
    for (const unsigned char ch : value) {
        if (ch < '0' || ch > '9') return false;
        const uint64_t digit = static_cast<uint64_t>(ch - '0');
        if (parsed > (UINT64_MAX - digit) / 10ULL) return false;
        parsed = parsed * 10ULL + digit;
    }
    *result = parsed;
    return true;
}

struct TarIoStats {
    jlong fallbackReadCalls = 0;
    jlong fallbackReadBytes = 0;
    jlong sendfileCalls = 0;
    jlong sendfileBytes = 0;
    jlong fallbackWriteCalls = 0;
    jlong fallbackWriteBytes = 0;
    jlong outputOpenCalls = 0;
};

struct SparseExtent {
    uint64_t offset;
    uint64_t length;
};

bool parseSparseMap(const std::string& value, uint64_t realSize, uint64_t packedSize,
                    std::vector<SparseExtent>* extents) {
    if (extents == nullptr) return false;
    extents->clear();
    if (value.empty()) return packedSize == 0;
    size_t at = 0;
    uint64_t packedTotal = 0;
    std::vector<uint64_t> numbers;
    while (at < value.size()) {
        const size_t comma = value.find(',', at);
        const size_t end = comma == std::string::npos ? value.size() : comma;
        uint64_t number = 0;
        if (!parsePaxUnsigned(value.substr(at, end - at), &number)) return false;
        numbers.push_back(number);
        if (numbers.size() > 2000000) return false;
        if (comma == std::string::npos) break;
        at = comma + 1;
        if (at == value.size()) return false;
    }
    if ((numbers.size() & 1U) != 0U) return false;
    uint64_t previousEnd = 0;
    for (size_t i = 0; i < numbers.size(); i += 2) {
        const uint64_t offset = numbers[i];
        const uint64_t length = numbers[i + 1];
        if (length == 0 || offset < previousEnd || offset > realSize ||
            length > realSize - offset || packedTotal > UINT64_MAX - length) return false;
        packedTotal += length;
        previousEnd = offset + length;
        extents->push_back({offset, length});
    }
    return packedTotal == packedSize;
}

// Decode the legacy GNU TAR typeflag 'S' sparse map. Its four inline extents
// are in the main header; continuation blocks contain 21 extents and a flag
// byte at offset 504. Continuation blocks precede the packed payload.
bool parseOldGnuSparse(int fd, off_t headerOffset, const TarHeader& header,
                       uint64_t packedSize, uint64_t* logicalSize,
                       std::vector<SparseExtent>* extents, uint64_t* extensionBlocks) {
    if (logicalSize == nullptr || extents == nullptr || extensionBlocks == nullptr ||
        header.typeflag != 'S' || headerOffset < 0) return false;
    const auto* raw = reinterpret_cast<const unsigned char*>(&header);
    uint64_t realSize = parseTarNumber(reinterpret_cast<const char*>(raw + 483), 12);
    if (realSize == UINT64_MAX || realSize > static_cast<uint64_t>(INT64_MAX)) return false;
    extents->clear();
    uint64_t packedTotal = 0;
    auto appendExtent = [&](const unsigned char* pair) -> bool {
        const uint64_t start = parseTarNumber(reinterpret_cast<const char*>(pair), 12);
        const uint64_t length = parseTarNumber(reinterpret_cast<const char*>(pair + 12), 12);
        if (start == UINT64_MAX || length == UINT64_MAX) return false;
        if (start == 0 && length == 0) return true;
        if (length == 0 || start > realSize || length > realSize - start ||
            packedTotal > UINT64_MAX - length) return false;
        if (!extents->empty()) {
            const SparseExtent& previous = extents->back();
            if (start < previous.offset + previous.length) return false;
        }
        packedTotal += length;
        extents->push_back({start, length});
        return true;
    };
    for (size_t i = 0; i < 4; ++i) {
        if (!appendExtent(raw + 386 + i * 24)) return false;
    }
    uint64_t continuations = 0;
    bool more = raw[482] != 0 && raw[482] != ' ' && raw[482] != '0';
    while (more) {
        if (++continuations > 1000000ULL ||
            static_cast<uint64_t>(headerOffset) > static_cast<uint64_t>(INT64_MAX) - 512ULL - continuations * 512ULL) return false;
        unsigned char block[512];
        const off_t blockOffset = headerOffset + static_cast<off_t>(512ULL + (continuations - 1ULL) * 512ULL);
        if (!readExactAt(fd, block, sizeof(block), blockOffset)) return false;
        for (size_t i = 0; i < 21; ++i) {
            if (!appendExtent(block + i * 24)) return false;
        }
        more = block[504] != 0 && block[504] != ' ' && block[504] != '0';
    }
    if (packedTotal != packedSize) return false;
    *logicalSize = realSize;
    *extensionBlocks = continuations;
    return true;
}

// GNU PAX sparse 1.0 stores its extent map as newline-delimited decimal values
// at the start of the member data, padded to a 512-byte boundary. The member's
// header size includes both this map and the packed extent bytes.
bool parseSparsePax10Map(int fd, uint64_t dataOffset, uint64_t storedSize,
                         uint64_t logicalSize, std::vector<SparseExtent>* extents,
                         uint64_t* mapPaddedSize, uint64_t* packedSize) {
    if (extents == nullptr || mapPaddedSize == nullptr || packedSize == nullptr ||
        storedSize == 0 || storedSize > static_cast<uint64_t>(INT64_MAX) ||
        dataOffset > static_cast<uint64_t>(INT64_MAX) - storedSize) return false;
    constexpr uint64_t kMaxMapBytes = 16ULL * 1024ULL * 1024ULL;
    constexpr uint64_t kMaxExtents = 1000000ULL;
    std::vector<uint64_t> values;
    std::string line;
    uint64_t consumed = 0;
    uint64_t expectedValues = UINT64_MAX;
    bool complete = false;
    while (consumed < std::min<uint64_t>(storedSize, kMaxMapBytes) && !complete) {
        const uint64_t blockOffset = consumed;
        const size_t blockSize = static_cast<size_t>(
            std::min<uint64_t>(512ULL, std::min<uint64_t>(storedSize, kMaxMapBytes) - consumed));
        char block[512];
        if (!readExactAt(fd, block, blockSize, static_cast<off_t>(dataOffset + blockOffset))) return false;
        for (size_t i = 0; i < blockSize; ++i) {
            ++consumed;
            const char ch = block[i];
            if (ch == '\n') {
                uint64_t value = 0;
                if (!parsePaxUnsigned(line, &value)) return false;
                values.push_back(value);
                line.clear();
                if (values.size() == 1) {
                    if (value > kMaxExtents || value > (UINT64_MAX - 1ULL) / 2ULL) return false;
                    expectedValues = 1ULL + value * 2ULL;
                }
                if (values.size() == expectedValues) {
                    complete = true;
                    break;
                }
            } else {
                if (ch < '0' || ch > '9' || line.size() >= 20) return false;
                line.push_back(ch);
            }
        }
    }
    if (!complete || !line.empty() || values.empty()) return false;
    if (consumed > UINT64_MAX - 511ULL) return false;
    const uint64_t padded = ((consumed + 511ULL) / 512ULL) * 512ULL;
    if (padded > storedSize) return false;
    const uint64_t packed = storedSize - padded;
    extents->clear();
    uint64_t packedTotal = 0;
    for (size_t i = 1; i < values.size(); i += 2) {
        const uint64_t extentOffset = values[i];
        const uint64_t extentLength = values[i + 1];
        if (extentLength == 0 || extentOffset > logicalSize ||
            extentLength > logicalSize - extentOffset ||
            packedTotal > UINT64_MAX - extentLength) return false;
        if (!extents->empty()) {
            const SparseExtent& previous = extents->back();
            if (extentOffset < previous.offset + previous.length) return false;
        }
        packedTotal += extentLength;
        extents->push_back({extentOffset, extentLength});
    }
    if (packedTotal != packed) return false;
    *mapPaddedSize = padded;
    *packedSize = packed;
    return true;
}

bool parsePaxMtimeMillis(const std::string& value, jlong* millis) {
    if (millis == nullptr || value.empty()) return false;
    char* end = nullptr;
    errno = 0;
    // POSIX PAX mtime is a signed decimal number of seconds. Negative values
    // are valid for files whose modification time predates the Unix epoch.
    const long double seconds = std::strtold(value.c_str(), &end);
    const long double minSeconds = static_cast<long double>(INT64_MIN) / 1000.0L;
    const long double maxSeconds = static_cast<long double>(INT64_MAX) / 1000.0L;
    if (errno != 0 || end == value.c_str() || *end != '\0' ||
        !std::isfinite(seconds) || seconds < minSeconds || seconds > maxSeconds) {
        return false;
    }
    *millis = static_cast<jlong>(seconds * 1000.0L);
    return true;
}

/** Convert signed epoch milliseconds to a normalized POSIX timespec. */
void millisToTimespec(jlong millis, struct timespec* value) {
    jlong seconds = millis / 1000LL;
    jlong remainder = millis % 1000LL;
    // POSIX requires tv_nsec in [0, 999999999], including pre-epoch times.
    if (remainder < 0) {
        --seconds;
        remainder += 1000LL;
    }
    value->tv_sec = static_cast<time_t>(seconds);
    value->tv_nsec = static_cast<long>(remainder * 1000000LL);
}

jobjectArray listTar(JNIEnv* env, int fd, jlong startOffset) {
    if (fd < 0 || startOffset < 0 ||
        static_cast<uint64_t>(startOffset) > static_cast<uint64_t>(INT64_MAX)) {
        jclass e = env->FindClass("java/lang/IllegalArgumentException");
        if (e) env->ThrowNew(e, "TAR offset must be non-negative");
        return nullptr;
    }
    struct stat listInputStat{};
    if (fstat(fd, &listInputStat) == 0 && S_ISREG(listInputStat.st_mode) &&
        startOffset > static_cast<jlong>(listInputStat.st_size)) {
        jclass e = env->FindClass("java/io/EOFException");
        if (e) env->ThrowNew(e, "TAR offset is beyond end of input");
        return nullptr;
    }
    jclass entryClass = env->FindClass("com/bareapps/sba/internal/tar/SbaTarEntryInfo");
    if (!entryClass) return nullptr;
    jmethodID ctor = env->GetMethodID(entryClass, "<init>",
        "(Ljava/lang/String;ILjava/lang/String;IJJJZ[Ljava/lang/String;)V");
    if (!ctor) return nullptr;
    // Keep entry objects in a Java collection; avoid one JNI global reference per entry.
    jclass listClass = env->FindClass("java/util/ArrayList");
    jmethodID listCtor = listClass ? env->GetMethodID(listClass, "<init>", "()V") : nullptr;
    jmethodID listAdd = listClass ? env->GetMethodID(listClass, "add", "(Ljava/lang/Object;)Z") : nullptr;
    if (!listCtor || !listAdd) return nullptr;
    jobject entries = env->NewObject(listClass, listCtor);
    if (!entries) return nullptr;
    std::string pendingLongName;
    std::string pendingLongLink;
    std::map<std::string, std::string> globalPax;
    std::map<std::string, std::string> pendingPax;
    off_t offset = static_cast<off_t>(startOffset);
    size_t count = 0;
    for (; count < 1000000; ++count) {
        TarHeader h{};
        if (!readExactAt(fd, &h, sizeof(h), offset)) {
            // A short header is a truncated archive, not a clean end marker.
            // Clean TAR termination is represented by a complete zero block.
            struct stat inputStat{};
            if (fstat(fd, &inputStat) == 0 && S_ISREG(inputStat.st_mode) &&
                offset >= inputStat.st_size) break;
            jclass e = env->FindClass("java/io/EOFException");
            if (e) env->ThrowNew(e, "Truncated TAR header");

            return nullptr;
        }
        bool zero = true;
        const auto* bytes = reinterpret_cast<const unsigned char*>(&h);
        for (size_t i = 0; i < sizeof(h); ++i) if (bytes[i] != 0) { zero = false; break; }
        if (zero) break;
        if (!validTarChecksum(h)) {
            jclass e = env->FindClass("java/io/IOException");
            if (e) env->ThrowNew(e, "Invalid TAR header checksum");

            return nullptr;
        }
        const uint64_t headerSize = parseTarNumber(h.size, sizeof(h.size));
        const bool metadataRecord = h.typeflag == 'x' || h.typeflag == 'g' ||
                                    h.typeflag == 'L' || h.typeflag == 'K';
        uint64_t size = headerSize;
        if (!metadataRecord) {
            const std::string* paxSize = paxValue(pendingPax, globalPax, "size");
            if (paxSize != nullptr && !parsePaxUnsigned(*paxSize, &size)) {
                jclass e = env->FindClass("java/io/IOException");
                if (e) env->ThrowNew(e, "Invalid POSIX PAX size");

                return nullptr;
            }
        }
        // Reject unsupported/non-octal sizes instead of interpreting malformed
        // archive metadata as a zero-byte entry. parseOctal returns UINT64_MAX
        // for invalid input; all later offset arithmetic is checked below.
        if (size == UINT64_MAX) {
            jclass e = env->FindClass("java/io/IOException");
            if (e) env->ThrowNew(e, "Invalid TAR entry size");

            return nullptr;
        }
        const uint64_t boundsSize = metadataRecord ? headerSize : size;
        const uint64_t blocksForBounds = boundsSize / 512ULL + ((boundsSize % 512ULL) != 0ULL ? 1ULL : 0ULL);
        struct stat archiveStat{};
        if (fstat(fd, &archiveStat) == 0 && S_ISREG(archiveStat.st_mode)) {
            if (offset < 0 || offset > archiveStat.st_size ||
                archiveStat.st_size - offset < static_cast<off_t>(512) ||
                blocksForBounds > static_cast<uint64_t>((archiveStat.st_size - offset - 512) / 512)) {
                jclass e = env->FindClass("java/io/EOFException");
                if (e) env->ThrowNew(e, "TAR entry payload extends beyond end of archive");

                return nullptr;
            }
        }
        if (h.typeflag == 'x' || h.typeflag == 'g') {
            const uint64_t payloadOffset = static_cast<uint64_t>(offset) + 512ULL;
            const bool isGlobal = h.typeflag == 'g';
            auto& destination = isGlobal ? globalPax : pendingPax;
            if (!readPaxRecordsAt(fd, payloadOffset, size, &destination, isGlobal)) {
                jclass e = env->FindClass("java/io/IOException");
                if (e) env->ThrowNew(e, "Invalid or truncated POSIX PAX header");

                return nullptr;
            }
            const uint64_t step = 512ULL + blocksForBounds * 512ULL;
            if (step > static_cast<uint64_t>(INT64_MAX - offset)) {
                jclass e = env->FindClass("java/io/IOException");
                if (e) env->ThrowNew(e, "PAX header offset overflow");

                return nullptr;
            }
            offset += static_cast<off_t>(step);
            continue;
        }
        if (h.typeflag == 'L' || h.typeflag == 'K') {
            std::string value;
            const uint64_t payloadOffset = static_cast<uint64_t>(offset) + 512ULL;
            if (!readTarTextAt(fd, payloadOffset, size, &value)) {
                jclass e = env->FindClass("java/io/IOException");
                if (e) env->ThrowNew(e, "Invalid or truncated GNU TAR long-name record");

                return nullptr;
            }
            if (h.typeflag == 'L') pendingLongName = value;
            else pendingLongLink = value;
            const uint64_t step = 512ULL + blocksForBounds * 512ULL;
            if (step > static_cast<uint64_t>(INT64_MAX - offset)) {
                jclass e = env->FindClass("java/io/IOException");
                if (e) env->ThrowNew(e, "TAR long-name offset overflow");

                return nullptr;
            }
            offset += static_cast<off_t>(step);
            continue;
        }
        const uint64_t mtime = parseTarNumber(h.mtime, sizeof(h.mtime));
        const uint64_t mode = parseTarNumber(h.mode, sizeof(h.mode));
        jlong mtimeMillis = mtime <= static_cast<uint64_t>(INT64_MAX) / 1000ULL
            ? static_cast<jlong>(mtime * 1000ULL) : -1;
        const std::string* paxMtime = paxValue(pendingPax, globalPax, "mtime");
        if (paxMtime != nullptr && !parsePaxMtimeMillis(*paxMtime, &mtimeMillis)) {
            jclass e = env->FindClass("java/io/IOException");
            if (e) env->ThrowNew(e, "Invalid POSIX PAX mtime");

            return nullptr;
        }
        if (mtime == UINT64_MAX || mode == UINT64_MAX ||
            mode > static_cast<uint64_t>(INT_MAX) ||
            (paxMtime == nullptr && mtimeMillis < 0)) {
            jclass e = env->FindClass("java/io/IOException");
            if (e) env->ThrowNew(e, "Invalid TAR mode or modification time");

            return nullptr;
        }
        const std::string* paxPath = paxValue(pendingPax, globalPax, "path");
        const std::string* sparseName = paxValue(pendingPax, globalPax, "GNU.sparse.name");
        std::string name = paxPath != nullptr ? *paxPath
            : (sparseName != nullptr ? *sparseName
                : (pendingLongName.empty() ? tarName(h) : pendingLongName));
        pendingLongName.clear();
        if (name.empty()) {
            jclass e = env->FindClass("java/io/IOException");
            if (e) env->ThrowNew(e, "TAR entry has an empty path");

            return nullptr;
        }
        const std::string* paxLink = paxValue(pendingPax, globalPax, "linkpath");
        std::string link = paxLink != nullptr ? *paxLink
            : (pendingLongLink.empty()
                ? std::string(h.linkname, strnlen(h.linkname, sizeof(h.linkname)))
                : pendingLongLink);
        pendingLongLink.clear();
        jint type = 1;
        switch (h.typeflag) {
            case '5': type = 2; break;
            case '2': type = 3; break;
            case '1': type = 4; break;
            case '6': type = 5; break;
            case '3': type = 6; break;
            case '4': type = 7; break;
            default: type = (h.typeflag == 0 || h.typeflag == '0' || h.typeflag == '7' || h.typeflag == 'S') ? 1 : 99; break;
        }
        bool sparseEntry = false;
        uint64_t realSize = size;
        uint64_t oldSparseExtensionBlocks = 0;
        const std::string* sparseMap = paxValue(pendingPax, globalPax, "GNU.sparse.map");
        const std::string* sparseRealSize = paxValue(pendingPax, globalPax, "GNU.sparse.realsize");
        if (sparseRealSize == nullptr) sparseRealSize = paxValue(pendingPax, globalPax, "GNU.sparse.size");
        if (sparseMap != nullptr || sparseRealSize != nullptr || h.typeflag == 'S') {
            sparseEntry = true;
            if (h.typeflag == 'S') {
                std::vector<SparseExtent> oldExtents;
                if (!parseOldGnuSparse(fd, offset, h, size, &realSize, &oldExtents, &oldSparseExtensionBlocks)) {
                    jclass e = env->FindClass("java/io/IOException");
                    if (e) env->ThrowNew(e, "Invalid legacy GNU sparse TAR header");
                    return nullptr;
                }
                type = 1;
            }
            if (sparseRealSize != nullptr &&
                (!parsePaxUnsigned(*sparseRealSize, &realSize) || realSize > static_cast<uint64_t>(INT64_MAX))) {
                jclass e = env->FindClass("java/io/IOException");
                if (e) env->ThrowNew(e, "Invalid GNU sparse logical size");
                return nullptr;
            }
        }
        std::map<std::string, std::string> effectivePax = globalPax;
        for (const auto& item : pendingPax) {
            if (item.second.empty()) effectivePax.erase(item.first);
            else effectivePax[item.first] = item.second;
        }
        std::vector<std::string> xattrNames;
        const std::string paxXattrPrefix = "SCHILY.xattr.";
        const std::string libarchiveXattrPrefix = "LIBARCHIVE.xattr.";
        for (const auto& item : effectivePax) {
            if (item.first.compare(0, paxXattrPrefix.size(), paxXattrPrefix) == 0) {
                xattrNames.push_back(item.first.substr(paxXattrPrefix.size()));
            } else if (item.first.compare(0, libarchiveXattrPrefix.size(), libarchiveXattrPrefix) == 0) {
                xattrNames.push_back(item.first.substr(libarchiveXattrPrefix.size()));
            }
        }
        jstring jname = env->NewStringUTF(name.c_str());
        jstring jlink = link.empty() ? nullptr : env->NewStringUTF(link.c_str());
        jclass stringClass = env->FindClass("java/lang/String");
        jobjectArray xattrs = stringClass
            ? env->NewObjectArray(static_cast<jsize>(xattrNames.size()), stringClass, nullptr) : nullptr;
        for (jsize i = 0; xattrs && i < static_cast<jsize>(xattrNames.size()); ++i) {
            jstring xattr = env->NewStringUTF(xattrNames[static_cast<size_t>(i)].c_str());
            env->SetObjectArrayElement(xattrs, i, xattr);
            env->DeleteLocalRef(xattr);
        }
        jobject entry = env->NewObject(entryClass, ctor, jname, type, jlink,
            static_cast<jint>(mode),
            static_cast<jlong>(size), static_cast<jlong>(realSize),
            mtimeMillis, sparseEntry ? JNI_TRUE : JNI_FALSE, xattrs);
        if (jname) env->DeleteLocalRef(jname);
        if (jlink) env->DeleteLocalRef(jlink);
        if (xattrs) env->DeleteLocalRef(xattrs);
        if (stringClass) env->DeleteLocalRef(stringClass);
        if (!entry) {

            return nullptr;
        }
        env->CallBooleanMethod(entries, listAdd, entry);
        env->DeleteLocalRef(entry);
        if (env->ExceptionCheck()) return nullptr;
        pendingPax.clear();
        const uint64_t recordPayloadSize = metadataRecord ? headerSize : size;
        const uint64_t blocks = recordPayloadSize / 512ULL + ((recordPayloadSize % 512ULL) != 0ULL ? 1ULL : 0ULL);
        if (blocks > (static_cast<uint64_t>(INT64_MAX) / 512ULL)) {
            jclass e = env->FindClass("java/io/IOException");
            if (e) env->ThrowNew(e, "TAR entry offset overflow");

            return nullptr;
        }
        const uint64_t stepBlocks = blocks + oldSparseExtensionBlocks;
        if (stepBlocks > UINT64_MAX / 512ULL) {
            jclass e = env->FindClass("java/io/IOException");
            if (e) env->ThrowNew(e, "TAR entry offset overflow");
            return nullptr;
        }
        const uint64_t step = 512ULL + stepBlocks * 512ULL;
        if (step > static_cast<uint64_t>(INT64_MAX - offset)) {
            jclass e = env->FindClass("java/io/IOException");
            if (e) env->ThrowNew(e, "TAR entry offset overflow");

            return nullptr;
        }
        offset += static_cast<off_t>(step);
    }
    if (count == 1000000) {
        jclass e = env->FindClass("java/io/IOException");
        if (e) env->ThrowNew(e, "TAR entry count exceeds the supported limit");

        return nullptr;
    }
    jmethodID listSize = env->GetMethodID(listClass, "size", "()I");
    jmethodID listToArray = env->GetMethodID(listClass, "toArray", "([Ljava/lang/Object;)[Ljava/lang/Object;");
    if (!listSize || !listToArray) {
        env->DeleteLocalRef(entries);
        env->DeleteLocalRef(listClass);
        return nullptr;
    }
    const jint entryCount = env->CallIntMethod(entries, listSize);
    jobjectArray typedArray = env->NewObjectArray(entryCount, entryClass, nullptr);
    jobjectArray result = typedArray
        ? static_cast<jobjectArray>(env->CallObjectMethod(entries, listToArray, typedArray))
        : nullptr;
    if (typedArray) env->DeleteLocalRef(typedArray);
    env->DeleteLocalRef(entries);
    env->DeleteLocalRef(listClass);
    return result;
}


bool safeRelativePath(const std::string& name) {
    if (name.empty() || name[0] == '/' || name.find('\\') != std::string::npos ||
        name.find('\0') != std::string::npos) return false;
    size_t at = 0;
    while (at <= name.size()) {
        size_t end = name.find('/', at);
        if (end == std::string::npos) end = name.size();
        const std::string part = name.substr(at, end - at);
        if (part == "..") return false;
        if (end == name.size()) break;
        at = end + 1;
    }
    return true;
}

/** Resolve a relative symlink target lexically and reject any path escaping rootFd. */
bool safeSymlinkTarget(const std::string& entryPath, const std::string& target) {
    if (target.empty() || target[0] == '/' || target.find('\\') != std::string::npos ||
        target.find('\0') != std::string::npos) return false;
    std::vector<std::string> components;
    const size_t slash = entryPath.find_last_of('/');
    const std::string parent = slash == std::string::npos ? "" : entryPath.substr(0, slash);
    auto consume = [&components](const std::string& value, bool allowParent) {
        size_t at = 0;
        while (at <= value.size()) {
            size_t end = value.find('/', at);
            if (end == std::string::npos) end = value.size();
            const std::string part = value.substr(at, end - at);
            if (part.empty() || part == ".") {
                // Repeated separators and dot components are harmless in symlink targets.
            } else if (part == "..") {
                if (!allowParent || components.empty()) return false;
                components.pop_back();
            } else {
                components.push_back(part);
            }
            if (end == value.size()) break;
            at = end + 1;
        }
        return true;
    };
    return consume(parent, false) && consume(target, true);
}

// Create/open an absolute directory path without following symlinks in any
// component. A final O_NOFOLLOW check alone is insufficient: an intermediate
// component could otherwise redirect extraction outside the intended tree.
int openOrCreateDirectoryPath(const std::string& inputPath) {
    if (inputPath.empty() || inputPath[0] != '/') { errno = EINVAL; return -1; }

    // A trailing slash is a normal spelling of a directory path. Normalize it
    // before walking components, while keeping "/" itself valid. Reject doubled
    // separators inside the path rather than silently changing path semantics.
    std::string path = inputPath;
    while (path.size() > 1 && path.back() == '/') path.pop_back();

    int current = open("/", O_RDONLY | O_DIRECTORY | O_CLOEXEC);
    if (current < 0) return -1;
    size_t at = 1;
    while (at < path.size()) {
        size_t end = path.find('/', at);
        if (end == std::string::npos) end = path.size();
        const std::string part = path.substr(at, end - at);
        if (part.empty() || part == "." || part == "..") {
            close(current); errno = EINVAL; return -1;
        }
        if (mkdirat(current, part.c_str(), 0755) != 0 && errno != EEXIST) {
            close(current); return -1;
        }
        int next = openat(current, part.c_str(),
                          O_RDONLY | O_DIRECTORY | O_CLOEXEC | O_NOFOLLOW);
        close(current);
        if (next < 0) return -1;
        current = next;
        at = end + 1;
    }
    return current;
}

/**
 * Resolve a relative archive path beneath an already-open root directory.
 * Every intermediate component is opened with O_NOFOLLOW, preventing symlink
 * traversal even if an archive or concurrent process creates hostile entries.
 */
int openDirectoryAt(int rootFd, const std::string& relative, bool create) {
    int current = dup(rootFd);
    if (current < 0) return -1;
    size_t at = 0;
    while (at < relative.size()) {
        size_t end = relative.find('/', at);
        if (end == std::string::npos) end = relative.size();
        const std::string part = relative.substr(at, end - at);
        if (part.empty() || part == "." || part == "..") {
            close(current); errno = EINVAL; return -1;
        }
        if (create && mkdirat(current, part.c_str(), 0755) != 0 && errno != EEXIST) {
            close(current); return -1;
        }
        int next = openat(current, part.c_str(), O_RDONLY | O_DIRECTORY | O_CLOEXEC | O_NOFOLLOW);
        close(current);
        if (next < 0) return -1;
        current = next;
        at = end + 1;
    }
    return current;
}

int openParentAt(int rootFd, const std::string& relative, bool create, std::string* leaf) {
    const size_t slash = relative.find_last_of('/');
    if (slash == std::string::npos) {
        *leaf = relative;
        return dup(rootFd);
    }
    *leaf = relative.substr(slash + 1);
    if (leaf->empty()) { errno = EINVAL; return -1; }
    return openDirectoryAt(rootFd, relative.substr(0, slash), create);
}

jobjectArray extractTar(JNIEnv* env, int fd, jlong startOffset, jstring destination,
                        jint modeMask, jobjectArray includes, jobject progress,
                        jlong* metadataMillis = nullptr, TarIoStats* ioStats = nullptr) {
    if (fd < 0 || startOffset < 0 || destination == nullptr || modeMask < 0 || modeMask > 0777) {
        jclass e = env->FindClass("java/lang/IllegalArgumentException");
        if (e) env->ThrowNew(e, "Invalid TAR offset or destination");
        return nullptr;
    }
    struct stat extractInputStat{};
    if (fstat(fd, &extractInputStat) == 0 && S_ISREG(extractInputStat.st_mode) &&
        startOffset > static_cast<jlong>(extractInputStat.st_size)) {
        jclass e = env->FindClass("java/io/EOFException");
        if (e) env->ThrowNew(e, "TAR offset is beyond end of input");
        return nullptr;
    }
    const char* destinationChars = env->GetStringUTFChars(destination, nullptr);
    if (!destinationChars) return nullptr;
    std::string root(destinationChars);
    env->ReleaseStringUTFChars(destination, destinationChars);
    if (root.empty() || root[0] != '/') {
        jclass e = env->FindClass("java/io/IOException");
        if (e) env->ThrowNew(e, "TAR destination must be an absolute directory");
        return nullptr;
    }
    int rootFd = openOrCreateDirectoryPath(root);
    if (rootFd < 0) {
        jclass e = env->FindClass("java/io/IOException");
        if (e) env->ThrowNew(e, "Unable to securely create/open TAR destination without following symlinks");
        return nullptr;
    }
    const auto metadataClockMillis = []() -> jlong {
        struct timespec ts{};
        clock_gettime(CLOCK_MONOTONIC, &ts);
        return static_cast<jlong>(ts.tv_sec) * 1000LL + static_cast<jlong>(ts.tv_nsec) / 1000000LL;
    };
    jlong metadataElapsedMillis = 0;
    std::vector<std::string> filters;
    if (includes) {
        const jsize n = env->GetArrayLength(includes);
        for (jsize i = 0; i < n; ++i) {
            auto item = static_cast<jstring>(env->GetObjectArrayElement(includes, i));
            if (item) {
                const char* p = env->GetStringUTFChars(item, nullptr);
                if (p) { filters.emplace_back(p); env->ReleaseStringUTFChars(item, p); }
                env->DeleteLocalRef(item);
            }
        }
    }
    jclass callbackClass = progress ? env->GetObjectClass(progress) : nullptr;
    jmethodID cancelled = callbackClass ? env->GetMethodID(callbackClass, "isCancellationRequested", "()Z") : nullptr;
    jmethodID onProgress = callbackClass ? env->GetMethodID(callbackClass, "onProgress", "(JJ)V") : nullptr;
    std::vector<std::string> extracted;
    struct PendingDirectoryMetadata {
        std::string path;
        mode_t mode;
        jlong mtimeMillis;
        uint64_t uid;
        uint64_t gid;
        std::map<std::string, std::string> xattrs;
    };
    std::vector<PendingDirectoryMetadata> pendingDirectories;
    uint64_t total = 0, processed = 0;
    // First pass computes the regular-file payload total for progress reporting.
    off_t offset = static_cast<off_t>(startOffset);
    std::map<std::string, std::string> sizingGlobalPax;
    std::map<std::string, std::string> sizingPendingPax;
    size_t sizingCount = 0;
    for (; sizingCount < 1000000; ++sizingCount) {
        TarHeader h{};
        if (!readExactAt(fd, &h, sizeof(h), offset)) {
            if (isAtRegularFileEnd(fd, offset)) break;
            jclass e = env->FindClass("java/io/EOFException");
            if (e) env->ThrowNew(e, "Truncated TAR header");
            close(rootFd);
            return nullptr;
        }
        const auto* b = reinterpret_cast<const unsigned char*>(&h);
        bool zero = true; for (size_t i = 0; i < sizeof(h); ++i) if (b[i]) { zero = false; break; }
        if (zero) break;
        if (!validTarChecksum(h)) {
            jclass e = env->FindClass("java/io/IOException");
            if (e) env->ThrowNew(e, "Invalid TAR header checksum");
            close(rootFd);
            return nullptr;
        }
        const uint64_t headerSize = parseOctal(h.size, sizeof(h.size));
        const bool metadataRecord = h.typeflag == 'x' || h.typeflag == 'g' ||
                                    h.typeflag == 'L' || h.typeflag == 'K';
        uint64_t size = headerSize;
        if (!metadataRecord) {
            const std::string* paxSize = paxValue(sizingPendingPax, sizingGlobalPax, "size");
            if (paxSize != nullptr && !parsePaxUnsigned(*paxSize, &size)) {
                jclass e = env->FindClass("java/io/IOException");
                if (e) env->ThrowNew(e, "Invalid POSIX PAX size");
                close(rootFd);
                return nullptr;
            }
        }
        if (size == UINT64_MAX || offset > static_cast<off_t>(INT64_MAX - 512LL) ||
            size > static_cast<uint64_t>(INT64_MAX - offset - 512LL)) {
            jclass e = env->FindClass("java/io/IOException");
            if (e) env->ThrowNew(e, "Invalid or overflowing TAR entry size");
            close(rootFd);
            return nullptr;
        }
        const uint64_t payloadSize = metadataRecord ? headerSize : size;
        const uint64_t blocks = payloadSize / 512ULL + ((payloadSize % 512ULL) != 0ULL ? 1ULL : 0ULL);
        uint64_t oldSparseExtensionBlocks = 0;
        if (h.typeflag == 'S') {
            uint64_t sparseLogicalSize = 0;
            std::vector<SparseExtent> sparseExtents;
            if (!parseOldGnuSparse(fd, offset, h, size, &sparseLogicalSize, &sparseExtents, &oldSparseExtensionBlocks)) {
                jclass e = env->FindClass("java/io/IOException");
                if (e) env->ThrowNew(e, "Invalid legacy GNU sparse TAR header");
                close(rootFd);
                return nullptr;
            }
        }
        struct stat archiveStat{};
        if (fstat(fd, &archiveStat) == 0 && S_ISREG(archiveStat.st_mode)) {
            if (offset < 0 || offset > archiveStat.st_size ||
                archiveStat.st_size - offset < static_cast<off_t>(512) ||
                blocks + oldSparseExtensionBlocks > static_cast<uint64_t>((archiveStat.st_size - offset - 512) / 512)) {
                jclass e = env->FindClass("java/io/EOFException");
                if (e) env->ThrowNew(e, "TAR entry payload extends beyond end of archive");
                close(rootFd);
                return nullptr;
            }
        }
        if (h.typeflag == 'x' || h.typeflag == 'g') {
            const uint64_t payloadOffset = static_cast<uint64_t>(offset) + 512ULL;
            const bool isGlobal = h.typeflag == 'g';
            auto& destination = isGlobal ? sizingGlobalPax : sizingPendingPax;
            if (!readPaxRecordsAt(fd, payloadOffset, size, &destination, isGlobal)) {
                jclass e = env->FindClass("java/io/IOException");
                if (e) env->ThrowNew(e, "Invalid or truncated POSIX PAX header");
                close(rootFd);
                return nullptr;
            }
            offset += static_cast<off_t>(512ULL + blocks * 512ULL);
            continue;
        }
        if (blocks + oldSparseExtensionBlocks > (static_cast<uint64_t>(INT64_MAX - offset) - 512ULL) / 512ULL) {
            jclass e = env->FindClass("java/io/IOException");
            if (e) env->ThrowNew(e, "TAR entry offset overflow");
            close(rootFd);
            return nullptr;
        }
        if (h.typeflag == 0 || h.typeflag == '0' || h.typeflag == '7' || h.typeflag == 'S') {
            if (total > UINT64_MAX - size) {
                jclass e = env->FindClass("java/io/IOException");
                if (e) env->ThrowNew(e, "TAR payload total overflow");
                close(rootFd);
                return nullptr;
            }
            total += size;
        }
        if (!metadataRecord) sizingPendingPax.clear();
        offset += static_cast<off_t>(512ULL + (blocks + oldSparseExtensionBlocks) * 512ULL);
    }
    if (sizingCount == 1000000) {
        close(rootFd);
        jclass e = env->FindClass("java/io/IOException");
        if (e) env->ThrowNew(e, "TAR entry count exceeds the supported limit");
        return nullptr;
    }
    offset = static_cast<off_t>(startOffset);
    std::string pendingLongName;
    std::string pendingLongLink;
    std::map<std::string, std::string> globalPax;
    std::map<std::string, std::string> pendingPax;
    size_t extractionCount = 0;
    for (; extractionCount < 1000000; ++extractionCount) {
        TarHeader h{};
        if (!readExactAt(fd, &h, sizeof(h), offset)) {
            // The archive may have changed between the sizing and extraction
            // passes. Only EOF at a regular-file boundary is a clean end.
            if (isAtRegularFileEnd(fd, offset)) break;
            close(rootFd);
            jclass e = env->FindClass("java/io/EOFException");
            if (e) env->ThrowNew(e, "TAR archive changed or became truncated during extraction");
            return nullptr;
        }
        const auto* b = reinterpret_cast<const unsigned char*>(&h);
        bool zero = true; for (size_t i = 0; i < sizeof(h); ++i) if (b[i]) { zero = false; break; }
        if (zero) break;
        if (!validTarChecksum(h)) {
            jclass e = env->FindClass("java/io/IOException");
            if (e) env->ThrowNew(e, "Invalid TAR header checksum");
            close(rootFd);
            return nullptr;
        }
        const uint64_t headerSize = parseOctal(h.size, sizeof(h.size));
        const bool metadataRecord = h.typeflag == 'x' || h.typeflag == 'g' ||
                                    h.typeflag == 'L' || h.typeflag == 'K';
        uint64_t size = headerSize;
        if (!metadataRecord) {
            const std::string* paxSize = paxValue(pendingPax, globalPax, "size");
            if (paxSize != nullptr && !parsePaxUnsigned(*paxSize, &size)) {
                close(rootFd);
                jclass e = env->FindClass("java/io/IOException");
                if (e) env->ThrowNew(e, "Invalid POSIX PAX size");
                return nullptr;
            }
        }
        if (size == UINT64_MAX || offset > static_cast<off_t>(INT64_MAX - 512LL) ||
            size > static_cast<uint64_t>(INT64_MAX - offset - 512LL)) {
            jclass e = env->FindClass("java/io/IOException");
            if (e) env->ThrowNew(e, "Invalid or overflowing TAR entry size");
            close(rootFd);
            return nullptr;
        }
        const uint64_t recordPayloadSize = metadataRecord ? headerSize : size;
        const uint64_t blocks = recordPayloadSize / 512ULL + ((recordPayloadSize % 512ULL) != 0ULL ? 1ULL : 0ULL);
        // Revalidate the physical archive bounds in the extraction pass too:
        // the input descriptor may refer to a regular file that changed after
        // the sizing pass, so a previously valid header is not sufficient.
        struct stat extractionStat{};
        if (fstat(fd, &extractionStat) == 0 && S_ISREG(extractionStat.st_mode)) {
            if (offset < 0 || offset > extractionStat.st_size ||
                extractionStat.st_size - offset < static_cast<off_t>(512) ||
                blocks > static_cast<uint64_t>((extractionStat.st_size - offset - 512) / 512)) {
                jclass e = env->FindClass("java/io/EOFException");
                if (e) env->ThrowNew(e, "TAR entry payload extends beyond end of archive");
                close(rootFd);
                return nullptr;
            }
        }
        if (h.typeflag == 'x' || h.typeflag == 'g') {
            const uint64_t payloadOffset = static_cast<uint64_t>(offset) + 512ULL;
            const bool isGlobal = h.typeflag == 'g';
            auto& destination = isGlobal ? globalPax : pendingPax;
            if (!readPaxRecordsAt(fd, payloadOffset, size, &destination, isGlobal)) {
                close(rootFd);
                jclass e = env->FindClass("java/io/IOException");
                if (e) env->ThrowNew(e, "Invalid or truncated POSIX PAX header");
                return nullptr;
            }
            offset += static_cast<off_t>(512ULL + blocks * 512ULL);
            continue;
        }
        if (blocks > (static_cast<uint64_t>(INT64_MAX - offset) - 512ULL) / 512ULL) {
            jclass e = env->FindClass("java/io/IOException");
            if (e) env->ThrowNew(e, "TAR entry offset overflow");
            close(rootFd);
            return nullptr;
        }
        const uint64_t entryMode = parseTarNumber(h.mode, sizeof(h.mode));
        const uint64_t entryMtime = parseTarNumber(h.mtime, sizeof(h.mtime));
        uint64_t entryUid = parseTarNumber(h.uid, sizeof(h.uid));
        uint64_t entryGid = parseTarNumber(h.gid, sizeof(h.gid));
        const std::string* paxUid = paxValue(pendingPax, globalPax, "uid");
        const std::string* paxGid = paxValue(pendingPax, globalPax, "gid");
        if (paxUid != nullptr && !parsePaxUnsigned(*paxUid, &entryUid)) entryUid = UINT64_MAX;
        if (paxGid != nullptr && !parsePaxUnsigned(*paxGid, &entryGid)) entryGid = UINT64_MAX;
        jlong entryMtimeMillis = entryMtime <= static_cast<uint64_t>(INT64_MAX) / 1000ULL
            ? static_cast<jlong>(entryMtime * 1000ULL) : -1;
        const std::string* paxMtime = paxValue(pendingPax, globalPax, "mtime");
        if (paxMtime != nullptr && !parsePaxMtimeMillis(*paxMtime, &entryMtimeMillis)) {
            close(rootFd);
            jclass e = env->FindClass("java/io/IOException");
            if (e) env->ThrowNew(e, "Invalid POSIX PAX mtime");
            return nullptr;
        }
        if (entryMode == UINT64_MAX || entryMode > static_cast<uint64_t>(INT_MAX) ||
            entryMtime == UINT64_MAX || (paxMtime == nullptr && entryMtimeMillis < 0)) {
            jclass e = env->FindClass("java/io/IOException");
            if (e) env->ThrowNew(e, "Invalid TAR mode or modification time");
            close(rootFd);
            return nullptr;
        }
        if (h.typeflag == 'L' || h.typeflag == 'K') {
            std::string value;
            const uint64_t payloadOffset = static_cast<uint64_t>(offset) + 512ULL;
            if (!readTarTextAt(fd, payloadOffset, size, &value)) {
                close(rootFd);
                jclass e = env->FindClass("java/io/IOException");
                if (e) env->ThrowNew(e, "Invalid or truncated GNU TAR long-name record");
                return nullptr;
            }
            if (h.typeflag == 'L') pendingLongName = value;
            else pendingLongLink = value;
            const uint64_t step = 512ULL + blocks * 512ULL;
            if (step > static_cast<uint64_t>(INT64_MAX - offset)) {
                close(rootFd);
                jclass e = env->FindClass("java/io/IOException");
                if (e) env->ThrowNew(e, "TAR long-name offset overflow");
                return nullptr;
            }
            offset += static_cast<off_t>(step);
            continue;
        }
        const std::string* paxPath = paxValue(pendingPax, globalPax, "path");
        const std::string* sparseName = paxValue(pendingPax, globalPax, "GNU.sparse.name");
        std::string name = paxPath != nullptr ? *paxPath
            : (sparseName != nullptr ? *sparseName
                : (pendingLongName.empty() ? tarName(h) : pendingLongName));
        pendingLongName.clear();
        const std::string* paxLink = paxValue(pendingPax, globalPax, "linkpath");
        std::string link = paxLink != nullptr ? *paxLink
            : (pendingLongLink.empty()
                ? std::string(h.linkname, strnlen(h.linkname, sizeof(h.linkname)))
                : pendingLongLink);
        const auto entryXattrs = collectPaxXattrs(
            pendingPax, globalPax, true, true);
        const std::string* sparseMap = paxValue(pendingPax, globalPax, "GNU.sparse.map");
        const std::string* sparseSize = paxValue(pendingPax, globalPax, "GNU.sparse.realsize");
        if (sparseSize == nullptr) sparseSize = paxValue(pendingPax, globalPax, "GNU.sparse.size");
        const std::string* sparseMajor = paxValue(pendingPax, globalPax, "GNU.sparse.major");
        const std::string* sparseMinor = paxValue(pendingPax, globalPax, "GNU.sparse.minor");
        std::vector<SparseExtent> sparseExtents;
        uint64_t logicalSize = size;
        uint64_t oldSparseExtensionBlocks = 0;
        const bool sparsePax10 = sparseMajor != nullptr && *sparseMajor == "1";
        const bool oldGnuSparse = h.typeflag == 'S' && sparseMap == nullptr && !sparsePax10;
        if (oldGnuSparse && !parseOldGnuSparse(fd, offset, h, size, &logicalSize,
            &sparseExtents, &oldSparseExtensionBlocks)) {
            close(rootFd);
            jclass e = env->FindClass("java/io/IOException");
            if (e) env->ThrowNew(e, "Invalid legacy GNU sparse TAR header");
            return nullptr;
        }
        if (sparsePax10 && sparseMinor != nullptr && *sparseMinor != "0") {
            close(rootFd);
            jclass e = env->FindClass("java/io/IOException");
            if (e) env->ThrowNew(e, "Unsupported GNU sparse PAX version");
            return nullptr;
        }
        bool sparseEntry = sparseMap != nullptr || sparseSize != nullptr || h.typeflag == 'S' || sparsePax10;
        uint64_t dataOffset = static_cast<uint64_t>(offset) + 512ULL;
        uint64_t payloadSize = size;
        uint64_t sparseMapPaddedSize = 0;
        if (oldGnuSparse) dataOffset += oldSparseExtensionBlocks * 512ULL;
        if (sparseEntry) {
            if (!oldGnuSparse && (sparseSize == nullptr ||
                !parsePaxUnsigned(*sparseSize, &logicalSize) ||
                logicalSize > static_cast<uint64_t>(INT64_MAX))) {
                close(rootFd);
                jclass e = env->FindClass("java/io/IOException");
                if (e) env->ThrowNew(e, "Invalid GNU sparse logical size");
                return nullptr;
            }
            bool sparseValid = oldGnuSparse;
            if (sparsePax10) {
                uint64_t packedSize = 0;
                sparseValid = parseSparsePax10Map(fd, dataOffset, size, logicalSize,
                    &sparseExtents, &sparseMapPaddedSize, &packedSize);
                if (sparseValid) {
                    dataOffset += sparseMapPaddedSize;
                    payloadSize = packedSize;
                }
            } else if (sparseMap != nullptr) {
                sparseValid = parseSparseMap(*sparseMap, logicalSize, size, &sparseExtents);
            } else if (!oldGnuSparse && !sparsePax10) {
                // GNU sparse PAX 0.0 may omit repeated offset/numbytes fields for an all-hole file.
                sparseValid = parseSparseMap("", logicalSize, size, &sparseExtents);
            }
            if (!sparseValid) {
                close(rootFd);
                jclass e = env->FindClass("java/io/IOException");
                if (e) env->ThrowNew(e, "Invalid or unsupported GNU sparse TAR metadata");
                return nullptr;
            }
        }
        const char type = h.typeflag;
        offset += static_cast<off_t>(512ULL + (blocks + oldSparseExtensionBlocks) * 512ULL);
        if (!safeRelativePath(name)) {
            jclass e = env->FindClass("java/io/IOException");
            if (e) env->ThrowNew(e, "Unsafe path in TAR archive");
            close(rootFd);
            return nullptr;
        }
        bool selected = filters.empty();
        for (const auto& filter : filters) {
            if (name == filter || (name.size() > filter.size() && name.compare(0, filter.size(), filter) == 0 && name[filter.size()] == '/')) { selected = true; break; }
        }
        pendingPax.clear();
        pendingLongLink.clear();
        if (!selected) { if (type == 0 || type == '0' || type == '7' || type == 'S') processed += size; continue; }
        if (type == '5') {
            int dirFd = openDirectoryAt(rootFd, name, true);
            if (dirFd < 0) {
                close(rootFd);
                jclass e = env->FindClass("java/io/IOException");
                if (e) env->ThrowNew(e, "Unable to securely create TAR directory");
                return nullptr;
            }
            close(dirFd);
            // Apply directory metadata after all children have been written;
            // creating children otherwise changes the directory mtime again.
            pendingDirectories.push_back({name,
                static_cast<mode_t>(entryMode & static_cast<uint64_t>(modeMask) & 0777ULL),
                entryMtimeMillis, entryUid, entryGid, entryXattrs});
            extracted.push_back(name);
        } else if (type == 0 || type == '0' || type == '7' || (type == 'S' && sparseEntry)) {
            std::string leaf;
            int parentFd = openParentAt(rootFd, name, true, &leaf);
            if (parentFd < 0) {
                close(rootFd);
                jclass e = env->FindClass("java/io/IOException");
                if (e) env->ThrowNew(e, "Unable to securely open TAR parent directory");
                return nullptr;
            }
            // Never open an existing inode for truncation: a pre-existing hard
            // link in the destination could make that truncate affect a file
            // outside the extraction tree. Remove the directory entry first,
            // then require exclusive creation so a concurrent replacement cannot
            // redirect the write to a symlink or hard link.
            if (unlinkat(parentFd, leaf.c_str(), 0) != 0 && errno != ENOENT) {
                close(parentFd);
                close(rootFd);
                jclass e = env->FindClass("java/io/IOException");
                if (e) env->ThrowNew(e, "Unable to safely replace existing TAR output");
                return nullptr;
            }
            int out = openat(parentFd, leaf.c_str(),
                             O_WRONLY | O_CREAT | O_EXCL | O_CLOEXEC | O_NOFOLLOW, 0600);
            close(parentFd);
            if (out >= 0 && ioStats != nullptr) ++ioStats->outputOpenCalls;
            if (out < 0) {
                close(rootFd);
                jclass e = env->FindClass("java/io/IOException");
                if (e) env->ThrowNew(e, "Unable to exclusively create extracted TAR file");
                return nullptr;
            }
            if (sparseEntry && ftruncate(out, static_cast<off_t>(logicalSize)) != 0) {
                close(out); close(rootFd); jclass e = env->FindClass("java/io/IOException");
                if (e) env->ThrowNew(e, "Unable to size sparse TAR output file");
                return nullptr;
            }
            if (sparsePax10 && sparseMapPaddedSize > 0) {
                processed += sparseMapPaddedSize;
                if (onProgress) env->CallVoidMethod(progress, onProgress, static_cast<jlong>(processed), static_cast<jlong>(total));
                if (env->ExceptionCheck()) { close(out); close(rootFd); return nullptr; }
            }
            char buffer[32768];
            auto copyExtent = [&](uint64_t sourceOffset, uint64_t targetOffset, uint64_t length) -> bool {
                uint64_t copied = 0;
                while (copied < length) {
                    if (cancelled && env->CallBooleanMethod(progress, cancelled)) return false;
                    const size_t chunk = static_cast<size_t>(std::min<uint64_t>(sizeof(buffer), length - copied));
                    if (ioStats != nullptr) ++ioStats->fallbackReadCalls;
                    if (!readExactAt(fd, buffer, chunk, static_cast<off_t>(sourceOffset + copied))) return false;
                    if (ioStats != nullptr) ioStats->fallbackReadBytes += static_cast<jlong>(chunk);
                    size_t written = 0;
                    while (written < chunk) {
                        const ssize_t n = pwrite(out, buffer + written, chunk - written,
                            static_cast<off_t>(targetOffset + copied + written));
                        if (n < 0 && errno == EINTR) continue;
                        if (n <= 0) return false;
                        if (ioStats != nullptr) {
                            ++ioStats->fallbackWriteCalls;
                            ioStats->fallbackWriteBytes += static_cast<jlong>(n);
                        }
                        written += static_cast<size_t>(n);
                    }
                    copied += chunk;
                    processed += chunk;
                    if (onProgress) env->CallVoidMethod(progress, onProgress, static_cast<jlong>(processed), static_cast<jlong>(total));
                    if (env->ExceptionCheck()) return false;
                }
                return true;
            };
            bool copyOk = true;
            if (sparseEntry) {
                uint64_t packedOffset = 0;
                for (const SparseExtent& extent : sparseExtents) {
                    if (!copyExtent(dataOffset + packedOffset, extent.offset, extent.length)) { copyOk = false; break; }
                    packedOffset += extent.length;
                }
            } else if (payloadSize >= (256ULL * 1024ULL)) {
                uint64_t copied = 0;
                off_t sourceOffset = static_cast<off_t>(dataOffset);
                while (copied < payloadSize) {
                    if (cancelled && env->CallBooleanMethod(progress, cancelled)) { copyOk = false; break; }
                    const size_t requested = static_cast<size_t>(
                        std::min<uint64_t>(1024ULL * 1024ULL, payloadSize - copied));
                    const ssize_t n = sendfile(out, fd, &sourceOffset, requested);
                    if (n < 0 && errno == EINTR) continue;
                    if (n < 0 && (errno == EINVAL || errno == ENOSYS ||
                                  errno == EOPNOTSUPP || errno == ENOTSUP)) {
                        copyOk = copyExtent(dataOffset + copied, copied, payloadSize - copied);
                        break;
                    }
                    if (n <= 0) { copyOk = false; break; }
                    if (ioStats != nullptr) {
                        ++ioStats->sendfileCalls;
                        ioStats->sendfileBytes += static_cast<jlong>(n);
                    }
                    copied += static_cast<uint64_t>(n);
                    processed += static_cast<uint64_t>(n);
                    if (onProgress) env->CallVoidMethod(progress, onProgress, static_cast<jlong>(processed), static_cast<jlong>(total));
                    if (env->ExceptionCheck()) { copyOk = false; break; }
                }
            } else {
                copyOk = copyExtent(dataOffset, 0, payloadSize);
            }
            if (!copyOk) {
                const bool wasCancelled = cancelled && env->CallBooleanMethod(progress, cancelled);
                close(out); close(rootFd);
                jclass e = env->FindClass(wasCancelled ? "java/io/InterruptedIOException" : "java/io/IOException");
                if (e) env->ThrowNew(e, wasCancelled ? "TAR extraction cancelled" : "Truncated TAR entry or failed writing extracted file");
                return nullptr;
            }
            // Apply only ordinary permission bits, then preserve mtime. Do
            // this before close so delayed metadata/write errors are surfaced.
            const jlong entryMetadataStartMillis = metadataClockMillis();
            if (entryUid != UINT64_MAX && entryGid != UINT64_MAX &&
                entryUid <= static_cast<uint64_t>(std::numeric_limits<uid_t>::max()) &&
                entryGid <= static_cast<uint64_t>(std::numeric_limits<gid_t>::max())) {
                (void)fchown(out, static_cast<uid_t>(entryUid), static_cast<gid_t>(entryGid));
            }
            for (const auto& attribute : entryXattrs) {
                std::string value = attribute.second;
                if (attribute.first == "security.selinux" && (value.empty() || value.back() != '\0')) value.push_back('\0');
                (void)fsetxattr(out, attribute.first.c_str(), value.data(), value.size(), 0);
            }
            const mode_t safeMode = static_cast<mode_t>(entryMode & static_cast<uint64_t>(modeMask) & 0777ULL);
            struct timespec fileTimes[2]{};
            fileTimes[0].tv_nsec = UTIME_OMIT;
            millisToTimespec(entryMtimeMillis, &fileTimes[1]);
            (void)fchmod(out, safeMode);
            (void)futimens(out, fileTimes);
            metadataElapsedMillis += std::max<jlong>(0, metadataClockMillis() - entryMetadataStartMillis);
            // Delayed I/O errors (for example ENOSPC) can surface only on
            // close, so do not report an entry as extracted until close succeeds.
            if (close(out) != 0) {
                close(rootFd);
                jclass e = env->FindClass("java/io/IOException");
                if (e) env->ThrowNew(e, "Failed finalizing extracted TAR file");
                return nullptr;
            }
            extracted.push_back(name);
        } else if (type == '2' || type == '1') {
            std::string target = link;
            int targetParentFd = -1;
            std::string targetLeaf;
            if (type == '2') {
                if (!safeSymlinkTarget(name, target)) {
                    close(rootFd);
                    jclass e = env->FindClass("java/io/IOException");
                    if (e) env->ThrowNew(e, "Unsafe symlink target in TAR archive");
                    return nullptr;
                }
            } else {
                while (target.compare(0, 2, "./") == 0) target.erase(0, 2);
                if (!safeRelativePath(target)) {
                    close(rootFd);
                    jclass e = env->FindClass("java/io/IOException");
                    if (e) env->ThrowNew(e, "Unsafe hardlink target in TAR archive");
                    return nullptr;
                }
                targetParentFd = openParentAt(rootFd, target, false, &targetLeaf);
                struct stat targetStat{};
                if (targetParentFd < 0 ||
                    fstatat(targetParentFd, targetLeaf.c_str(), &targetStat, AT_SYMLINK_NOFOLLOW) != 0 ||
                    !S_ISREG(targetStat.st_mode)) {
                    if (targetParentFd >= 0) close(targetParentFd);
                    close(rootFd);
                    jclass e = env->FindClass("java/io/IOException");
                    if (e) env->ThrowNew(e, "TAR hardlink target is not an extracted regular file");
                    return nullptr;
                }
            }
            std::string leaf;
            int parentFd = openParentAt(rootFd, name, true, &leaf);
            if (parentFd < 0) {
                if (targetParentFd >= 0) close(targetParentFd);
                close(rootFd);
                jclass e = env->FindClass("java/io/IOException");
                if (e) env->ThrowNew(e, "Unable to securely open TAR link parent");
                return nullptr;
            }
            if (unlinkat(parentFd, leaf.c_str(), 0) != 0 && errno != ENOENT) {
                close(parentFd);
                if (targetParentFd >= 0) close(targetParentFd);
                close(rootFd);
                jclass e = env->FindClass("java/io/IOException");
                if (e) env->ThrowNew(e, "Unable to safely replace existing TAR link");
                return nullptr;
            }
            const jlong linkMetadataStartMillis = metadataClockMillis();
            const int linkResult = type == '2'
                ? symlinkat(target.c_str(), parentFd, leaf.c_str())
                : linkat(targetParentFd, targetLeaf.c_str(), parentFd, leaf.c_str(), 0);
            if (linkResult == 0 && entryUid != UINT64_MAX && entryGid != UINT64_MAX &&
                entryUid <= static_cast<uint64_t>(std::numeric_limits<uid_t>::max()) &&
                entryGid <= static_cast<uint64_t>(std::numeric_limits<gid_t>::max())) {
                (void)fchownat(parentFd, leaf.c_str(), static_cast<uid_t>(entryUid),
                    static_cast<gid_t>(entryGid), type == '2' ? AT_SYMLINK_NOFOLLOW : 0);
            }
            if (linkResult == 0) {
                struct timespec linkTimes[2]{};
                linkTimes[0].tv_nsec = UTIME_OMIT;
                millisToTimespec(entryMtimeMillis, &linkTimes[1]);
                (void)utimensat(parentFd, leaf.c_str(), linkTimes,
                    type == '2' ? AT_SYMLINK_NOFOLLOW : 0);
            }
            if (linkResult == 0 && !entryXattrs.empty()) {
                if (type == '2') {
                    const std::string procPath = "/proc/self/fd/" + std::to_string(parentFd) + "/" + leaf;
                    for (const auto& attribute : entryXattrs) {
                        std::string value = attribute.second;
                        if (attribute.first == "security.selinux" && (value.empty() || value.back() != '\0')) value.push_back('\0');
                        (void)lsetxattr(procPath.c_str(), attribute.first.c_str(), value.data(), value.size(), 0);
                    }
                } else {
                    int linkFd = openat(parentFd, leaf.c_str(), O_RDONLY | O_CLOEXEC | O_NOFOLLOW);
                    if (linkFd >= 0) {
                        for (const auto& attribute : entryXattrs) {
                            std::string value = attribute.second;
                            if (attribute.first == "security.selinux" && (value.empty() || value.back() != '\0')) value.push_back('\0');
                            (void)fsetxattr(linkFd, attribute.first.c_str(), value.data(), value.size(), 0);
                        }
                        close(linkFd);
                    }
                }
            }
            metadataElapsedMillis += std::max<jlong>(0, metadataClockMillis() - linkMetadataStartMillis);
            close(parentFd);
            if (targetParentFd >= 0) close(targetParentFd);
            if (linkResult != 0) {
                close(rootFd);
                jclass e = env->FindClass("java/io/IOException");
                if (e) env->ThrowNew(e, "Unable to safely materialize TAR link");
                return nullptr;
            }
            extracted.push_back(name);
        } else if (type == '6' || type == '3' || type == '4') {
            std::string leaf;
            int parentFd = openParentAt(rootFd, name, true, &leaf);
            if (parentFd < 0) {
                close(rootFd);
                jclass e = env->FindClass("java/io/IOException");
                if (e) env->ThrowNew(e, "Unable to securely open TAR special-file parent");
                return nullptr;
            }
            if (unlinkat(parentFd, leaf.c_str(), 0) != 0 && errno != ENOENT) {
                close(parentFd); close(rootFd);
                jclass e = env->FindClass("java/io/IOException");
                if (e) env->ThrowNew(e, "Unable to safely replace existing TAR special file");
                return nullptr;
            }
            const mode_t safeMode = static_cast<mode_t>(entryMode & static_cast<uint64_t>(modeMask) & 0777ULL);
            int createResult = -1;
            if (type == '6') {
                createResult = mkfifoat(parentFd, leaf.c_str(), safeMode);
            } else {
                const uint64_t deviceMajor = parseTarNumber(h.devmajor, sizeof(h.devmajor));
                const uint64_t deviceMinor = parseTarNumber(h.devminor, sizeof(h.devminor));
                if (geteuid() != 0 || deviceMajor == UINT64_MAX || deviceMinor == UINT64_MAX ||
                    deviceMajor > UINT_MAX || deviceMinor > UINT_MAX) {
                    close(parentFd); close(rootFd);
                    jclass e = env->FindClass("java/io/IOException");
                    if (e) env->ThrowNew(e, "Restoring TAR device nodes requires root and valid device numbers");
                    return nullptr;
                }
                const mode_t deviceType = type == '3' ? S_IFCHR : S_IFBLK;
                createResult = mknodat(parentFd, leaf.c_str(), deviceType | safeMode,
                    makedev(static_cast<unsigned int>(deviceMajor), static_cast<unsigned int>(deviceMinor)));
            }
            if (createResult != 0) {
                close(parentFd); close(rootFd);
                jclass e = env->FindClass("java/io/IOException");
                if (e) env->ThrowNew(e, "Unable to create TAR FIFO/device node");
                return nullptr;
            }
            const jlong specialMetadataStartMillis = metadataClockMillis();
            if (entryUid != UINT64_MAX && entryGid != UINT64_MAX &&
                entryUid <= static_cast<uint64_t>(std::numeric_limits<uid_t>::max()) &&
                entryGid <= static_cast<uint64_t>(std::numeric_limits<gid_t>::max())) {
                (void)fchownat(parentFd, leaf.c_str(), static_cast<uid_t>(entryUid),
                    static_cast<gid_t>(entryGid), AT_SYMLINK_NOFOLLOW);
            }
            (void)fchmodat(parentFd, leaf.c_str(), safeMode, 0);
            struct timespec specialTimes[2]{};
            specialTimes[0].tv_nsec = UTIME_OMIT;
            millisToTimespec(entryMtimeMillis, &specialTimes[1]);
            (void)utimensat(parentFd, leaf.c_str(), specialTimes, AT_SYMLINK_NOFOLLOW);
            if (!entryXattrs.empty()) {
                const std::string procPath = "/proc/self/fd/" + std::to_string(parentFd) + "/" + leaf;
                for (const auto& attribute : entryXattrs) {
                    std::string value = attribute.second;
                    if (attribute.first == "security.selinux" && (value.empty() || value.back() != '\0')) value.push_back('\0');
                    (void)lsetxattr(procPath.c_str(), attribute.first.c_str(), value.data(), value.size(), 0);
                }
            }
            metadataElapsedMillis += std::max<jlong>(0, metadataClockMillis() - specialMetadataStartMillis);
            close(parentFd);
            extracted.push_back(name);
        }
    }
    if (extractionCount == 1000000) {
        close(rootFd);
        jclass e = env->FindClass("java/io/IOException");
        if (e) env->ThrowNew(e, "TAR entry count exceeds the supported limit");
        return nullptr;
    }
    // Restore directory metadata deepest-first, after all entries are written.
    for (auto it = pendingDirectories.rbegin(); it != pendingDirectories.rend(); ++it) {
        const jlong directoryMetadataStartMillis = metadataClockMillis();
        int dirFd = openDirectoryAt(rootFd, it->path, false);
        if (dirFd < 0) {
            close(rootFd);
            jclass e = env->FindClass("java/io/IOException");
            if (e) env->ThrowNew(e, "Unable to reopen TAR directory for metadata");
            return nullptr;
        }
        struct timespec directoryTimes[2]{};
        directoryTimes[0].tv_nsec = UTIME_OMIT;
        millisToTimespec(it->mtimeMillis, &directoryTimes[1]);
        // Archive-provided directory modes must never restore setuid,
        // setgid, or sticky bits in the extraction destination.
        if (it->uid != UINT64_MAX && it->gid != UINT64_MAX &&
            it->uid <= static_cast<uint64_t>(std::numeric_limits<uid_t>::max()) &&
            it->gid <= static_cast<uint64_t>(std::numeric_limits<gid_t>::max())) {
            (void)fchown(dirFd, static_cast<uid_t>(it->uid), static_cast<gid_t>(it->gid));
        }
        for (const auto& attribute : it->xattrs) {
            std::string value = attribute.second;
            if (attribute.first == "security.selinux" && (value.empty() || value.back() != '\0')) value.push_back('\0');
            (void)fsetxattr(dirFd, attribute.first.c_str(), value.data(), value.size(), 0);
        }
        const mode_t safeDirectoryMode = static_cast<mode_t>(it->mode & modeMask & 0777);
        (void)fchmod(dirFd, safeDirectoryMode);
        (void)futimens(dirFd, directoryTimes);
        metadataElapsedMillis += std::max<jlong>(0, metadataClockMillis() - directoryMetadataStartMillis);
        close(dirFd);
    }
    close(rootFd);
    if (metadataMillis != nullptr) *metadataMillis = metadataElapsedMillis;
    jclass stringClass = env->FindClass("java/lang/String");
    jobjectArray result = env->NewObjectArray(static_cast<jsize>(extracted.size()), stringClass, nullptr);
    for (jsize i = 0; result && i < static_cast<jsize>(extracted.size()); ++i) {
        jstring item = env->NewStringUTF(extracted[static_cast<size_t>(i)].c_str());
        env->SetObjectArrayElement(result, i, item);
        env->DeleteLocalRef(item);
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
Java_com_bareapps_sba_SbaRuntimeNative_version(JNIEnv* env, jobject) {
    return toJavaString(env, "SwiftTar");
}


extern "C" JNIEXPORT jlongArray JNICALL
Java_com_bareapps_sba_internal_archive_SbaSparseNative_nativeGetSparseExtents(
    JNIEnv* env, jclass, jstring pathString) {
    if (pathString == nullptr) {
        jclass e = env->FindClass("java/lang/NullPointerException");
        if (e) env->ThrowNew(e, "path");
        return nullptr;
    }
    const char* path = env->GetStringUTFChars(pathString, nullptr);
    if (path == nullptr) return nullptr;
    const int fd = open(path, O_RDONLY | O_CLOEXEC | O_NOFOLLOW);
    env->ReleaseStringUTFChars(pathString, path);
    if (fd < 0) {
        jclass e = env->FindClass("java/io/IOException");
        if (e) env->ThrowNew(e, "Unable to open file for sparse extent discovery");
        return nullptr;
    }
    struct stat st{};
    if (fstat(fd, &st) != 0 || !S_ISREG(st.st_mode) || st.st_size < 0) {
        close(fd);
        jclass e = env->FindClass("java/io/IOException");
        if (e) env->ThrowNew(e, "Sparse extent source is not a regular file");
        return nullptr;
    }
    const uint64_t logicalSize = static_cast<uint64_t>(st.st_size);
    std::vector<uint64_t> extents;
#if defined(SEEK_DATA) && defined(SEEK_HOLE)
    uint64_t position = 0;
    bool supported = true;
    while (position < logicalSize) {
        errno = 0;
        const off_t data = lseek(fd, static_cast<off_t>(position), SEEK_DATA);
        if (data < 0) {
            if (errno == ENXIO) break;
            if (errno == EINVAL || errno == ENOTSUP || errno == EOPNOTSUPP) {
                supported = false;
                break;
            }
            close(fd);
            jclass e = env->FindClass("java/io/IOException");
            if (e) env->ThrowNew(e, "Failed to inspect sparse file data extents");
            return nullptr;
        }
        if (static_cast<uint64_t>(data) >= logicalSize) break;
        const off_t hole = lseek(fd, data, SEEK_HOLE);
        if (hole < 0) {
            if (errno == EINVAL || errno == ENOTSUP || errno == EOPNOTSUPP) {
                supported = false;
                break;
            }
            close(fd);
            jclass e = env->FindClass("java/io/IOException");
            if (e) env->ThrowNew(e, "Failed to inspect sparse file hole extents");
            return nullptr;
        }
        const uint64_t start = static_cast<uint64_t>(data);
        const uint64_t end = std::min<uint64_t>(static_cast<uint64_t>(hole), logicalSize);
        if (end <= start || extents.size() > 2000000U) {
            supported = false;
            break;
        }
        extents.push_back(start);
        extents.push_back(end - start);
        position = end;
    }
    close(fd);
    if (!supported) return env->NewLongArray(0);
    if (logicalSize > 0 && extents.size() == 2 &&
        extents[0] == 0 && extents[1] == logicalSize) return env->NewLongArray(0);
    const jsize count = static_cast<jsize>(2 + extents.size());
    jlongArray result = env->NewLongArray(count);
    if (result == nullptr) return nullptr;
    std::vector<jlong> values(static_cast<size_t>(count));
    values[0] = static_cast<jlong>(logicalSize);
    values[1] = static_cast<jlong>(extents.size() / 2);
    for (size_t i = 0; i < extents.size(); ++i) values[i + 2] = static_cast<jlong>(extents[i]);
    env->SetLongArrayRegion(result, 0, count, values.data());
    return result;
#else
    close(fd);
    return env->NewLongArray(0);
#endif
}

extern "C" JNIEXPORT jobjectArray JNICALL
Java_com_bareapps_sba_internal_archive_SbaSparseNative_nativeGetPaxXattrs(
    JNIEnv* env, jclass, jstring pathString) {
    jclass stringClass = env->FindClass("java/lang/String");
    if (stringClass == nullptr) return nullptr;
    auto emptyResult = [&]() -> jobjectArray {
        return env->NewObjectArray(0, stringClass, nullptr);
    };
    if (pathString == nullptr) {
        jclass e = env->FindClass("java/lang/NullPointerException");
        if (e) env->ThrowNew(e, "path");
        return nullptr;
    }
    const char* path = env->GetStringUTFChars(pathString, nullptr);
    if (path == nullptr) return nullptr;
    constexpr size_t kMaxXattrList = 16U * 1024U * 1024U;
    constexpr size_t kMaxXattrValue = 1U * 1024U * 1024U;
    errno = 0;
    const ssize_t required = llistxattr(path, nullptr, 0);
    if (required < 0) {
        const int error = errno;
        env->ReleaseStringUTFChars(pathString, path);
        if (error == ENODATA || error == ENOTSUP || error == EOPNOTSUPP ||
            error == EACCES || error == EPERM) return emptyResult();
        jclass e = env->FindClass("java/io/IOException");
        if (e) env->ThrowNew(e, "Unable to list TAR source extended attributes");
        return nullptr;
    }
    if (static_cast<uint64_t>(required) > kMaxXattrList) {
        env->ReleaseStringUTFChars(pathString, path);
        jclass e = env->FindClass("java/io/IOException");
        if (e) env->ThrowNew(e, "TAR source xattr list exceeds supported size");
        return nullptr;
    }
    std::vector<char> names(static_cast<size_t>(required));
    const ssize_t actualList = required == 0 ? 0 : llistxattr(path, names.data(), names.size());
    if (actualList < 0 || actualList > required) {
        env->ReleaseStringUTFChars(pathString, path);
        jclass e = env->FindClass("java/io/IOException");
        if (e) env->ThrowNew(e, "Unable to read TAR source extended attribute names");
        return nullptr;
    }
    static constexpr char kBase64[] =
        "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";
    std::vector<std::string> pairs;
    size_t at = 0;
    size_t totalEncodedBytes = 0;
    while (at < static_cast<size_t>(actualList)) {
        const size_t remaining = static_cast<size_t>(actualList) - at;
        const size_t length = strnlen(names.data() + at, remaining);
        if (length == 0 || length == remaining) {
            env->ReleaseStringUTFChars(pathString, path);
            jclass e = env->FindClass("java/io/IOException");
            if (e) env->ThrowNew(e, "Malformed TAR source xattr name list");
            return nullptr;
        }
        std::string name(names.data() + at, length);
        at += length + 1;
        for (const unsigned char ch : name) {
            if (ch < 0x20U || ch > 0x7eU || ch == '=' || ch == '\n' || ch == '\r') {
                env->ReleaseStringUTFChars(pathString, path);
                jclass e = env->FindClass("java/io/IOException");
                if (e) env->ThrowNew(e, "TAR xattr name cannot be represented safely in PAX");
                return nullptr;
            }
        }
        errno = 0;
        const ssize_t valueSize = lgetxattr(path, name.c_str(), nullptr, 0);
        if (valueSize < 0) {
            if (errno == ENODATA || errno == EACCES || errno == EPERM) continue;
            if (errno == ENOTSUP || errno == EOPNOTSUPP) continue;
            env->ReleaseStringUTFChars(pathString, path);
            jclass e = env->FindClass("java/io/IOException");
            if (e) env->ThrowNew(e, "Unable to read TAR source xattr size");
            return nullptr;
        }
        if (static_cast<uint64_t>(valueSize) > kMaxXattrValue) {
            env->ReleaseStringUTFChars(pathString, path);
            jclass e = env->FindClass("java/io/IOException");
            if (e) env->ThrowNew(e, "TAR source xattr exceeds supported size");
            return nullptr;
        }
        std::vector<unsigned char> value(static_cast<size_t>(valueSize));
        if (valueSize > 0) {
            const ssize_t actualValue = lgetxattr(path, name.c_str(), value.data(), value.size());
            if (actualValue < 0 || actualValue != valueSize) {
                env->ReleaseStringUTFChars(pathString, path);
                jclass e = env->FindClass("java/io/IOException");
                if (e) env->ThrowNew(e, "TAR source xattr changed while reading");
                return nullptr;
            }
        }
        std::string encoded;
        encoded.reserve(((value.size() + 2U) / 3U) * 4U);
        for (size_t i = 0; i < value.size(); i += 3) {
            const uint32_t a = value[i];
            const uint32_t b = i + 1 < value.size() ? value[i + 1] : 0U;
            const uint32_t d = i + 2 < value.size() ? value[i + 2] : 0U;
            const uint32_t triple = (a << 16U) | (b << 8U) | d;
            encoded.push_back(kBase64[(triple >> 18U) & 0x3fU]);
            encoded.push_back(kBase64[(triple >> 12U) & 0x3fU]);
            encoded.push_back(i + 1 < value.size() ? kBase64[(triple >> 6U) & 0x3fU] : '=');
            encoded.push_back(i + 2 < value.size() ? kBase64[triple & 0x3fU] : '=');
        }
        if (name.size() > kMaxXattrList || encoded.size() > kMaxXattrList - name.size() ||
            totalEncodedBytes > kMaxXattrList - name.size() - encoded.size()) {
            env->ReleaseStringUTFChars(pathString, path);
            jclass e = env->FindClass("java/io/IOException");
            if (e) env->ThrowNew(e, "Total TAR xattr metadata exceeds supported size");
            return nullptr;
        }
        if (pairs.size() >= 8192U) {
            env->ReleaseStringUTFChars(pathString, path);
            jclass e = env->FindClass("java/io/IOException");
            if (e) env->ThrowNew(e, "TAR source has too many extended attributes");
            return nullptr;
        }
        totalEncodedBytes += name.size() + encoded.size();
        pairs.push_back(std::move(name));
        pairs.push_back(std::move(encoded));
    }
    env->ReleaseStringUTFChars(pathString, path);
    if (pairs.size() > static_cast<size_t>(INT_MAX)) {
        jclass e = env->FindClass("java/io/IOException");
        if (e) env->ThrowNew(e, "Too many TAR source extended attributes");
        return nullptr;
    }
    jobjectArray result = env->NewObjectArray(static_cast<jsize>(pairs.size()), stringClass, nullptr);
    if (result == nullptr) return nullptr;
    for (jsize i = 0; i < static_cast<jsize>(pairs.size()); ++i) {
        jstring value = env->NewStringUTF(pairs[static_cast<size_t>(i)].c_str());
        if (value == nullptr) return nullptr;
        env->SetObjectArrayElement(result, i, value);
        env->DeleteLocalRef(value);
        if (env->ExceptionCheck()) return nullptr;
    }
    return result;
}

extern "C" JNIEXPORT jbyteArray JNICALL
Java_com_bareapps_sba_SbaNativeCrypto_deriveArgon2id(
    JNIEnv* env, jobject receiver, jbyteArray password, jbyteArray salt,
    jint iterations, jint memoryKiB, jint parallelism, jint outputLength) {
    jclass cryptoClass = env->FindClass("com/bareapps/sba/SbaArgon2idPortable");
    if (cryptoClass == nullptr) return nullptr;
    jmethodID derive = env->GetStaticMethodID(
        cryptoClass, "deriveArgon2id", "([B[BIIII)[B");
    if (derive == nullptr) return nullptr;
    return static_cast<jbyteArray>(env->CallStaticObjectMethod(
        cryptoClass, derive, password, salt, iterations, memoryKiB, parallelism, outputLength));
}

extern "C" JNIEXPORT jbyteArray JNICALL
Java_com_bareapps_sba_SbaZstdNative_compressZstdBytes(
    JNIEnv* env, jobject, jbyteArray input, jint level) {
    if (input == nullptr) {
        jclass e = env->FindClass("java/lang/NullPointerException");
        if (e) env->ThrowNew(e, "input");
        return nullptr;
    }
    jclass zstd = env->FindClass("com/github/luben/zstd/Zstd");
    if (!zstd) return nullptr;
    jmethodID compress = env->GetStaticMethodID(zstd, "compress", "([BI)[B");
    if (!compress) return nullptr;
    return static_cast<jbyteArray>(env->CallStaticObjectMethod(zstd, compress, input, level));
}

extern "C" JNIEXPORT jbyteArray JNICALL
Java_com_bareapps_sba_SbaZstdNative_decompressZstdBytes(
    JNIEnv* env, jobject, jbyteArray input) {
    if (input == nullptr) {
        jclass e = env->FindClass("java/lang/NullPointerException");
        if (e) env->ThrowNew(e, "input");
        return nullptr;
    }
    jclass zstd = env->FindClass("com/github/luben/zstd/Zstd");
    if (!zstd) return nullptr;
    jmethodID decompress = env->GetStaticMethodID(zstd, "decompress", "([B)[B");
    if (!decompress) return nullptr;
    return static_cast<jbyteArray>(env->CallStaticObjectMethod(zstd, decompress, input));
}

extern "C" JNIEXPORT jlongArray JNICALL
Java_com_bareapps_sba_SbaArchiveNative_createArchive(
    JNIEnv* env, jobject, jint mode, jstring outputPath, jbyteArray metadata,
    jobjectArray sourcePaths, jobjectArray entryNames, jintArray entryModes,
    jobjectArray includePaths, jobjectArray excludePaths,
    jint option0, jint option1, jint option2, jint option3, jint option4,
    jint option5, jint option6, jint option7, jint option8, jint option9,
    jbyteArray key0, jbyteArray key1, jbyteArray key2, jbyteArray key3, jobject progress) {
    jclass writer = env->FindClass("com/bareapps/sba/internal/archive/SbaArchiveWriter");
    if (writer == nullptr) return nullptr;
    jmethodID create = env->GetStaticMethodID(
        writer, "createArchive",
        "(ILjava/lang/String;[B[Ljava/lang/String;[Ljava/lang/String;[I[[Ljava/lang/String;[[Ljava/lang/String;IIIIIIIIII[B[B[B[BLcom/bareapps/sba/internal/progress/SbaNativeProgressListener;)[J");
    if (create == nullptr) return nullptr;
    return static_cast<jlongArray>(env->CallStaticObjectMethod(
        writer, create, mode, outputPath, metadata, sourcePaths, entryNames, entryModes,
        includePaths, excludePaths, option0, option1, option2, option3, option4,
        option5, option6, option7, option8, option9, key0, key1, key2, key3, progress));
}




extern "C" JNIEXPORT jobjectArray JNICALL
Java_com_bareapps_sba_SbaBareTarNative_listTarEntriesFromFdRaw(
    JNIEnv* env, jobject, jint fd, jlong offset) {
    return listTar(env, fd, offset);
}

extern "C" JNIEXPORT jobjectArray JNICALL
Java_com_bareapps_sba_SbaBareTarNative_listTarEntriesZstdFromFdRaw(
    JNIEnv* env, jobject receiver, jint fd, jlong offset, jlong compressedSize) {
    if (fd < 0 || offset < 0 || compressedSize < 0) {
        jclass e = env->FindClass("java/lang/IllegalArgumentException");
        if (e) env->ThrowNew(e, "Invalid Zstandard TAR descriptor range");
        return nullptr;
    }
    const int ownedFd = dup(fd);
    if (ownedFd < 0) {
        jclass e = env->FindClass("java/io/IOException");
        if (e) env->ThrowNew(e, "Unable to duplicate Zstandard TAR descriptor");
        return nullptr;
    }
    jclass fdClass = env->FindClass("java/io/FileDescriptor");
    jmethodID fdCtor = fdClass ? env->GetMethodID(fdClass, "<init>", "()V") : nullptr;
    jfieldID fdField = fdClass ? env->GetFieldID(fdClass, "descriptor", "I") : nullptr;
    jobject fileDescriptor = (fdCtor && fdField) ? env->NewObject(fdClass, fdCtor) : nullptr;
    if (!fileDescriptor) { close(ownedFd); return nullptr; }
    env->SetIntField(fileDescriptor, fdField, ownedFd);
    jclass cls = env->GetObjectClass(receiver);
    jmethodID method = cls ? env->GetMethodID(cls, "listTarEntriesZstdFromDescriptor",
        "(Ljava/io/FileDescriptor;JJ)[Lcom/bareapps/sba/internal/tar/SbaTarEntryInfo;") : nullptr;
    jobjectArray result = method ? static_cast<jobjectArray>(
        env->CallObjectMethod(receiver, method, fileDescriptor, offset, compressedSize)) : nullptr;
    env->SetIntField(fileDescriptor, fdField, -1);
    close(ownedFd);
    env->DeleteLocalRef(fileDescriptor);
    return result;
}

extern "C" JNIEXPORT jobjectArray JNICALL
Java_com_bareapps_sba_SbaBareTarNative_extractTarFromFdRaw(
    JNIEnv* env, jobject, jint fd, jlong offset, jstring destination, jint modeMask,
    jobjectArray includes, jobject progress) {
    return extractTar(env, fd, offset, destination, modeMask, includes, progress);
}

extern "C" JNIEXPORT jlongArray JNICALL
Java_com_bareapps_sba_SbaBareTarNative_extractTarFromFdWithStatsRaw(
    JNIEnv* env, jobject, jint fd, jlong tarBytes, jstring destination, jint flags,
    jobjectArray includes, jobject progress) {
    const auto started = []() -> jlong {
        struct timespec ts{};
        clock_gettime(CLOCK_MONOTONIC, &ts);
        return static_cast<jlong>(ts.tv_sec) * 1000LL + static_cast<jlong>(ts.tv_nsec) / 1000000LL;
    };
    const jlong totalStart = started();
    TarIoStats ioStats{};
    if (fd < 0 || tarBytes < 0) {
        jclass e = env->FindClass("java/lang/IllegalArgumentException");
        if (e) env->ThrowNew(e, "Invalid TAR descriptor or byte length");
        return nullptr;
    }
    struct stat inputStat{};
    if (fstat(fd, &inputStat) == 0 && S_ISREG(inputStat.st_mode) && tarBytes != inputStat.st_size) {
        jclass e = env->FindClass("java/io/EOFException");
        if (e) env->ThrowNew(e, "TAR byte length does not match input file size");
        return nullptr;
    }

    const jlong headerStart = started();
    jobjectArray listed = listTar(env, fd, 0);
    if (listed == nullptr || env->ExceptionCheck()) return nullptr;
    const jlong headerMillis = started() - headerStart;
    const jsize entryCount = env->GetArrayLength(listed);
    jlong regularFiles = 0, directories = 0, symlinks = 0, hardlinks = 0;
    jlong otherEntries = 0, regularFileBytes = 0;
    jclass entryClass = env->FindClass("com/bareapps/sba/internal/tar/SbaTarEntryInfo");
    jmethodID getType = entryClass ? env->GetMethodID(entryClass, "getType", "()I") : nullptr;
    jmethodID getRealSize = entryClass ? env->GetMethodID(entryClass, "getRealSize", "()J") : nullptr;
    if (!getType || !getRealSize) {
        env->DeleteLocalRef(listed);
        return nullptr;
    }
    for (jsize i = 0; i < entryCount; ++i) {
        jobject entry = env->GetObjectArrayElement(listed, i);
        if (entry == nullptr) continue;
        const jint type = env->CallIntMethod(entry, getType);
        const jlong size = env->CallLongMethod(entry, getRealSize);
        if (env->ExceptionCheck()) {
            env->DeleteLocalRef(entry);
            env->DeleteLocalRef(listed);
            return nullptr;
        }
        switch (type) {
            case 1:
                ++regularFiles;
                if (size > 0 && regularFileBytes <= INT64_MAX - size) regularFileBytes += size;
                else if (size > 0) {
                    jclass e = env->FindClass("java/io/IOException");
                    if (e) env->ThrowNew(e, "TAR regular-file byte count overflow");
                    env->DeleteLocalRef(entry);
                    env->DeleteLocalRef(listed);
                    return nullptr;
                }
                break;
            case 2: ++directories; break;
            case 3: ++symlinks; break;
            case 4: ++hardlinks; break;
            default: ++otherEntries; break;
        }
        env->DeleteLocalRef(entry);
    }
    env->DeleteLocalRef(entryClass);

    const jlong dataStart = started();
    jlong metadataMillis = 0;
    jobjectArray extracted = extractTar(env, fd, 0, destination, flags, includes, progress, &metadataMillis, &ioStats);
    if (extracted == nullptr || env->ExceptionCheck()) {
        env->DeleteLocalRef(listed);
        return nullptr;
    }
    const jlong dataMillis = std::max<jlong>(0, started() - dataStart - metadataMillis);
    const jsize extractedCount = env->GetArrayLength(extracted);

    // Counter order is the reference SbaSwiftTarExtractStats contract.
    jlong values[20] = {};
    values[0] = tarBytes;
    values[1] = entryCount;
    values[2] = regularFiles;
    values[3] = directories;
    values[4] = symlinks;
    values[5] = hardlinks;
    values[6] = otherEntries;
    values[7] = entryCount > extractedCount ? entryCount - extractedCount : 0;
    values[8] = regularFileBytes;
    values[9] = ioStats.fallbackReadCalls;
    values[10] = ioStats.fallbackReadBytes;
    values[11] = ioStats.sendfileCalls;
    values[12] = ioStats.sendfileBytes;
    values[13] = ioStats.fallbackWriteCalls;
    values[14] = ioStats.fallbackWriteBytes;
    values[15] = ioStats.outputOpenCalls;
    values[16] = started() - totalStart;
    values[17] = headerMillis;
    values[18] = dataMillis;
    values[19] = metadataMillis;
    jlongArray result = env->NewLongArray(20);
    if (result != nullptr) env->SetLongArrayRegion(result, 0, 20, values);
    env->DeleteLocalRef(extracted);
    env->DeleteLocalRef(listed);
    return result;
}

extern "C" JNIEXPORT jobjectArray JNICALL
Java_com_bareapps_sba_SbaBareTarNative_extractTarZstdFromFdRaw(
    JNIEnv* env, jobject receiver, jint fd, jlong offset, jlong compressedSize,
    jstring destination, jint flags, jobjectArray includes, jobject progress) {
    if (fd < 0 || offset < 0 || compressedSize < 0) {
        jclass e = env->FindClass("java/lang/IllegalArgumentException");
        if (e) env->ThrowNew(e, "Invalid Zstandard TAR descriptor range");
        return nullptr;
    }
    const int ownedFd = dup(fd);
    if (ownedFd < 0) {
        jclass e = env->FindClass("java/io/IOException");
        if (e) env->ThrowNew(e, "Unable to duplicate Zstandard TAR descriptor");
        return nullptr;
    }
    jclass fdClass = env->FindClass("java/io/FileDescriptor");
    jmethodID fdCtor = fdClass ? env->GetMethodID(fdClass, "<init>", "()V") : nullptr;
    jfieldID fdField = fdClass ? env->GetFieldID(fdClass, "descriptor", "I") : nullptr;
    jobject fileDescriptor = (fdCtor && fdField) ? env->NewObject(fdClass, fdCtor) : nullptr;
    if (!fileDescriptor) { close(ownedFd); return nullptr; }
    env->SetIntField(fileDescriptor, fdField, ownedFd);
    jclass cls = env->GetObjectClass(receiver);
    jmethodID method = cls ? env->GetMethodID(cls, "extractTarZstdFromDescriptor",
        "(Ljava/io/FileDescriptor;JJLjava/lang/String;I[Ljava/lang/String;Lcom/bareapps/sba/internal/progress/SbaNativeProgressListener;)[Ljava/lang/String;") : nullptr;
    jobjectArray result = method ? static_cast<jobjectArray>(
        env->CallObjectMethod(receiver, method, fileDescriptor, offset, compressedSize,
                              destination, flags, includes, progress)) : nullptr;
    env->SetIntField(fileDescriptor, fdField, -1);
    close(ownedFd);
    env->DeleteLocalRef(fileDescriptor);
    return result;
}

// AEGIS archive-entry facade methods are implemented in Kotlin and route through
// the authenticated staging/decryption path; they are intentionally not JNI exports.

extern "C" JNIEXPORT jlongArray JNICALL
Java_com_bareapps_sba_SbaZstdNative_decompressZstdFdToFdRaw(
    JNIEnv* env, jobject receiver, jint inputFd, jint outputFd, jlong maxBytes, jobject progress) {
    if (inputFd < 0 || outputFd < 0 || maxBytes < -1) {
        jclass e = env->FindClass("java/lang/IllegalArgumentException");
        if (e) env->ThrowNew(e, "Invalid Zstandard descriptor arguments");
        return nullptr;
    }
    jclass fdClass = env->FindClass("java/io/FileDescriptor");
    jmethodID ctor = fdClass ? env->GetMethodID(fdClass, "<init>", "()V") : nullptr;
    jfieldID field = fdClass ? env->GetFieldID(fdClass, "descriptor", "I") : nullptr;
    if (!ctor || !field) return nullptr;
    jobject input = env->NewObject(fdClass, ctor);
    jobject output = env->NewObject(fdClass, ctor);
    if (!input || !output) {
        if (input) env->DeleteLocalRef(input);
        if (output) env->DeleteLocalRef(output);
        return nullptr;
    }
    env->SetIntField(input, field, inputFd);
    env->SetIntField(output, field, outputFd);
    jclass cls = env->GetObjectClass(receiver);
    jmethodID method = cls ? env->GetMethodID(cls, "decompressDescriptorToDescriptor",
        "(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Lcom/bareapps/sba/internal/progress/SbaNativeProgressListener;J)[J") : nullptr;
    jlongArray result = method ? static_cast<jlongArray>(
        env->CallObjectMethod(receiver, method, input, output, progress, maxBytes)) : nullptr;
    // These wrappers borrow native descriptors; do not let their finalizers close them.
    env->SetIntField(input, field, -1);
    env->SetIntField(output, field, -1);
    env->DeleteLocalRef(input);
    env->DeleteLocalRef(output);
    return result;
}

/*
 * The reference arm64-v8a ELF exports these additional JNI names even though
 * the corresponding declarations are absent from the decompiled Java classes.
 * Preserve their symbol inventory for audit visibility; signatures/semantics
 * cannot be inferred from ELF export names alone, and calls fail closed.
 */
extern "C" JNIEXPORT jlongArray JNICALL
Java_com_bareapps_sba_SbaBareTarNative_createTarToFdWithWriteStatsRaw(
    JNIEnv* env, jobject, ...) {
    throwUnsupported(env, "TAR creation to file descriptor");
    return nullptr;
}

extern "C" JNIEXPORT jlongArray JNICALL
Java_com_bareapps_sba_SbaZstdNative_compressZstdFdToFdRaw(
    JNIEnv* env, jobject, ...) {
    throwUnsupported(env, "Zstandard FD-to-FD compression");
    return nullptr;
}

extern "C" JNIEXPORT jlongArray JNICALL
Java_com_bareapps_sba_SbaZstdNative_compressZstdFileToFdRaw(
    JNIEnv* env, jobject, ...) {
    throwUnsupported(env, "Zstandard file-to-FD compression");
    return nullptr;
}