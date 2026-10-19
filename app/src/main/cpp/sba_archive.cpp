#include <jni.h>
#include <algorithm>
#include <cerrno>
#include <cstdint>
#include <cstring>
#include <string>
#include <vector>
#include <unistd.h>
#include <fcntl.h>
#include <sys/stat.h>
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

jobjectArray listTar(JNIEnv* env, int fd, jlong startOffset) {
    if (fd < 0 || startOffset < 0 ||
        static_cast<uint64_t>(startOffset) > static_cast<uint64_t>(INT64_MAX)) {
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
            for (jobject entry : entries) env->DeleteLocalRef(entry);
            return nullptr;
        }
        bool zero = true;
        const auto* bytes = reinterpret_cast<const unsigned char*>(&h);
        for (size_t i = 0; i < sizeof(h); ++i) if (bytes[i] != 0) { zero = false; break; }
        if (zero) break;
        if (!validTarChecksum(h)) {
            jclass e = env->FindClass("java/io/IOException");
            if (e) env->ThrowNew(e, "Invalid TAR header checksum");
            for (jobject entry : entries) env->DeleteLocalRef(entry);
            return nullptr;
        }
        const uint64_t size = parseOctal(h.size, sizeof(h.size));
        // Reject unsupported/non-octal sizes instead of interpreting malformed
        // archive metadata as a zero-byte entry. parseOctal returns UINT64_MAX
        // for invalid input; all later offset arithmetic is checked below.
        if (size == UINT64_MAX) {
            jclass e = env->FindClass("java/io/IOException");
            if (e) env->ThrowNew(e, "Invalid TAR entry size");
            for (jobject entry : entries) env->DeleteLocalRef(entry);
            return nullptr;
        }
        const uint64_t blocksForBounds = size / 512ULL + ((size % 512ULL) != 0ULL ? 1ULL : 0ULL);
        struct stat archiveStat{};
        if (fstat(fd, &archiveStat) == 0 && S_ISREG(archiveStat.st_mode)) {
            if (offset < 0 || offset > archiveStat.st_size ||
                archiveStat.st_size - offset < static_cast<off_t>(512) ||
                blocksForBounds > static_cast<uint64_t>((archiveStat.st_size - offset - 512) / 512)) {
                jclass e = env->FindClass("java/io/EOFException");
                if (e) env->ThrowNew(e, "TAR entry payload extends beyond end of archive");
                for (jobject entry : entries) env->DeleteLocalRef(entry);
                return nullptr;
            }
        }
        const uint64_t mtime = parseOctal(h.mtime, sizeof(h.mtime));
        const uint64_t mode = parseOctal(h.mode, sizeof(h.mode));
        if (mtime == UINT64_MAX || mode == UINT64_MAX ||
            mode > static_cast<uint64_t>(INT_MAX) ||
            mtime > static_cast<uint64_t>(INT64_MAX) / 1000ULL) {
            jclass e = env->FindClass("java/io/IOException");
            if (e) env->ThrowNew(e, "Invalid TAR mode or modification time");
            for (jobject entry : entries) env->DeleteLocalRef(entry);
            return nullptr;
        }
        std::string name = tarName(h);
        if (name.empty()) {
            jclass e = env->FindClass("java/io/IOException");
            if (e) env->ThrowNew(e, "TAR entry has an empty path");
            for (jobject entry : entries) env->DeleteLocalRef(entry);
            return nullptr;
        }
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
            static_cast<jint>(mode),
            static_cast<jlong>(size), static_cast<jlong>(size),
            static_cast<jlong>(mtime * 1000ULL), JNI_FALSE, xattrs);
        if (jname) env->DeleteLocalRef(jname);
        if (jlink) env->DeleteLocalRef(jlink);
        if (empty) env->DeleteLocalRef(empty);
        if (xattrs) env->DeleteLocalRef(xattrs);
        if (!entry) {
            for (jobject previous : entries) env->DeleteLocalRef(previous);
            return nullptr;
        }
        entries.push_back(entry);
        const uint64_t blocks = size / 512ULL + ((size % 512ULL) != 0ULL ? 1ULL : 0ULL);
        if (blocks > (static_cast<uint64_t>(INT64_MAX) / 512ULL)) {
            env->DeleteLocalRef(entry);
            jclass e = env->FindClass("java/io/IOException");
            if (e) env->ThrowNew(e, "TAR entry offset overflow");
            for (jobject previous : entries) env->DeleteLocalRef(previous);
            return nullptr;
        }
        const uint64_t step = 512ULL + blocks * 512ULL;
        if (step > static_cast<uint64_t>(INT64_MAX - offset)) {
            jclass e = env->FindClass("java/io/IOException");
            if (e) env->ThrowNew(e, "TAR entry offset overflow");
            for (jobject previous : entries) env->DeleteLocalRef(previous);
            return nullptr;
        }
        offset += static_cast<off_t>(step);
    }
    if (count == 1000000) {
        jclass e = env->FindClass("java/io/IOException");
        if (e) env->ThrowNew(e, "TAR entry count exceeds the supported limit");
        for (jobject entry : entries) env->DeleteLocalRef(entry);
        return nullptr;
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


bool safeRelativePath(const std::string& name) {
    if (name.empty() || name[0] == '/' || name.find('\\') != std::string::npos) return false;
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

// Create/open an absolute directory path without following symlinks in any
// component. A final O_NOFOLLOW check alone is insufficient: an intermediate
// component could otherwise redirect extraction outside the intended tree.
int openOrCreateDirectoryPath(const std::string& path) {
    if (path.empty() || path[0] != '/') { errno = EINVAL; return -1; }
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
                        jobjectArray includes, jobject progress) {
    if (fd < 0 || startOffset < 0 || destination == nullptr) {
        jclass e = env->FindClass("java/lang/IllegalArgumentException");
        if (e) env->ThrowNew(e, "Invalid TAR offset or destination");
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
    struct PendingDirectoryMetadata { std::string path; mode_t mode; time_t mtime; };
    std::vector<PendingDirectoryMetadata> pendingDirectories;
    uint64_t total = 0, processed = 0;
    // First pass computes the regular-file payload total for progress reporting.
    off_t offset = static_cast<off_t>(startOffset);
    for (size_t count = 0; count < 1000000; ++count) {
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
        const uint64_t size = parseOctal(h.size, sizeof(h.size));
        if (size == UINT64_MAX || offset > static_cast<off_t>(INT64_MAX - 512LL) ||
            size > static_cast<uint64_t>(INT64_MAX - offset - 512LL)) {
            jclass e = env->FindClass("java/io/IOException");
            if (e) env->ThrowNew(e, "Invalid or overflowing TAR entry size");
            close(rootFd);
            return nullptr;
        }
        const uint64_t blocks = size / 512ULL + ((size % 512ULL) != 0ULL ? 1ULL : 0ULL);
        struct stat archiveStat{};
        if (fstat(fd, &archiveStat) == 0 && S_ISREG(archiveStat.st_mode)) {
            if (offset < 0 || offset > archiveStat.st_size ||
                archiveStat.st_size - offset < static_cast<off_t>(512) ||
                blocks > static_cast<uint64_t>((archiveStat.st_size - offset - 512) / 512)) {
                jclass e = env->FindClass("java/io/EOFException");
                if (e) env->ThrowNew(e, "TAR entry payload extends beyond end of archive");
                close(rootFd);
                return nullptr;
            }
        }
        if (blocks > (static_cast<uint64_t>(INT64_MAX - offset) - 512ULL) / 512ULL) {
            jclass e = env->FindClass("java/io/IOException");
            if (e) env->ThrowNew(e, "TAR entry offset overflow");
            close(rootFd);
            return nullptr;
        }
        if (h.typeflag == 0 || h.typeflag == '0' || h.typeflag == '7') {
            if (total > UINT64_MAX - size) {
                jclass e = env->FindClass("java/io/IOException");
                if (e) env->ThrowNew(e, "TAR payload total overflow");
                close(rootFd);
                return nullptr;
            }
            total += size;
        }
        offset += static_cast<off_t>(512ULL + blocks * 512ULL);
    }
    offset = static_cast<off_t>(startOffset);
    for (size_t count = 0; count < 1000000; ++count) {
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
        const uint64_t size = parseOctal(h.size, sizeof(h.size));
        if (size == UINT64_MAX || offset > static_cast<off_t>(INT64_MAX - 512LL) ||
            size > static_cast<uint64_t>(INT64_MAX - offset - 512LL)) {
            jclass e = env->FindClass("java/io/IOException");
            if (e) env->ThrowNew(e, "Invalid or overflowing TAR entry size");
            close(rootFd);
            return nullptr;
        }
        const uint64_t blocks = size / 512ULL + ((size % 512ULL) != 0ULL ? 1ULL : 0ULL);
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
        if (blocks > (static_cast<uint64_t>(INT64_MAX - offset) - 512ULL) / 512ULL) {
            jclass e = env->FindClass("java/io/IOException");
            if (e) env->ThrowNew(e, "TAR entry offset overflow");
            close(rootFd);
            return nullptr;
        }
        const uint64_t entryMode = parseOctal(h.mode, sizeof(h.mode));
        const uint64_t entryMtime = parseOctal(h.mtime, sizeof(h.mtime));
        if (entryMode == UINT64_MAX || entryMode > static_cast<uint64_t>(INT_MAX) ||
            entryMtime == UINT64_MAX || entryMtime > static_cast<uint64_t>(INT64_MAX) / 1000ULL) {
            jclass e = env->FindClass("java/io/IOException");
            if (e) env->ThrowNew(e, "Invalid TAR mode or modification time");
            close(rootFd);
            return nullptr;
        }
        const std::string name = tarName(h);
        const char type = h.typeflag;
        const uint64_t dataOffset = static_cast<uint64_t>(offset) + 512ULL;
        offset += static_cast<off_t>(512ULL + blocks * 512ULL);
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
        if (!selected) { if (type == 0 || type == '0' || type == '7') processed += size; continue; }
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
            pendingDirectories.push_back({name, static_cast<mode_t>(entryMode & 0777ULL),
                                           static_cast<time_t>(entryMtime)});
            extracted.push_back(name);
        } else if (type == 0 || type == '0' || type == '7') {
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
            if (out < 0) {
                close(rootFd);
                jclass e = env->FindClass("java/io/IOException");
                if (e) env->ThrowNew(e, "Unable to exclusively create extracted TAR file");
                return nullptr;
            }
            char buffer[32768]; uint64_t copied = 0;
            while (copied < size) {
                if (cancelled && env->CallBooleanMethod(progress, cancelled)) {
                    close(out); close(rootFd); jclass e = env->FindClass("java/io/InterruptedIOException"); if (e) env->ThrowNew(e, "TAR extraction cancelled"); return nullptr;
                }
                size_t chunk = static_cast<size_t>(std::min<uint64_t>(sizeof(buffer), size - copied));
                if (!readExactAt(fd, buffer, chunk, static_cast<off_t>(dataOffset + copied))) { close(out); close(rootFd); jclass e = env->FindClass("java/io/EOFException"); if (e) env->ThrowNew(e, "Truncated TAR entry"); return nullptr; }
                size_t written = 0;
                while (written < chunk) {
                    ssize_t n = write(out, buffer + written, chunk - written);
                    if (n < 0 && errno == EINTR) continue;
                    if (n <= 0) { close(out); close(rootFd); jclass e = env->FindClass("java/io/IOException"); if (e) env->ThrowNew(e, "Failed writing extracted TAR file"); return nullptr; }
                    written += static_cast<size_t>(n);
                }
                copied += chunk; processed += chunk;
                if (onProgress) env->CallVoidMethod(progress, onProgress, static_cast<jlong>(processed), static_cast<jlong>(total));
                if (env->ExceptionCheck()) { close(out); close(rootFd); return nullptr; }
            }
            // Apply only ordinary permission bits, then preserve mtime. Do
            // this before close so delayed metadata/write errors are surfaced.
            const mode_t safeMode = static_cast<mode_t>(entryMode & 0777ULL);
            struct timespec fileTimes[2]{};
            fileTimes[0].tv_nsec = UTIME_OMIT;
            fileTimes[1].tv_sec = static_cast<time_t>(entryMtime);
            if (fchmod(out, safeMode) != 0 || futimens(out, fileTimes) != 0) {
                close(out);
                close(rootFd);
                jclass e = env->FindClass("java/io/IOException");
                if (e) env->ThrowNew(e, "Unable to apply TAR file metadata");
                return nullptr;
            }
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
            // Links are intentionally not materialized: never let archive links escape destination.
        }
    }
    // Restore directory metadata deepest-first, after all entries are written.
    for (auto it = pendingDirectories.rbegin(); it != pendingDirectories.rend(); ++it) {
        int dirFd = openDirectoryAt(rootFd, it->path, false);
        if (dirFd < 0) {
            close(rootFd);
            jclass e = env->FindClass("java/io/IOException");
            if (e) env->ThrowNew(e, "Unable to reopen TAR directory for metadata");
            return nullptr;
        }
        struct timespec directoryTimes[2]{};
        directoryTimes[0].tv_nsec = UTIME_OMIT;
        directoryTimes[1].tv_sec = it->mtime;
        const int metadataResult = fchmod(dirFd, it->mode) == 0
            ? futimens(dirFd, directoryTimes) : -1;
        close(dirFd);
        if (metadataResult != 0) {
            close(rootFd);
            jclass e = env->FindClass("java/io/IOException");
            if (e) env->ThrowNew(e, "Unable to apply TAR directory metadata");
            return nullptr;
        }
    }
    close(rootFd);
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
Java_com_bareapps_barebackup_sba_SbaZstdNative_decompressZstdBytes(
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
        "(Ljava/io/FileDescriptor;JJ)[Lcom/bareapps/barebackup/sba/internal/tar/SbaTarEntryInfo;") : nullptr;
    jobjectArray result = method ? static_cast<jobjectArray>(
        env->CallObjectMethod(receiver, method, fileDescriptor, offset, compressedSize)) : nullptr;
    env->SetIntField(fileDescriptor, fdField, -1);
    close(ownedFd);
    env->DeleteLocalRef(fileDescriptor);
    return result;
}

extern "C" JNIEXPORT jobjectArray JNICALL
Java_com_bareapps_barebackup_sba_SbaSwiftTarNative_extractTarFromFdRaw(
    JNIEnv* env, jobject, jint fd, jlong offset, jstring destination, jint, jobjectArray includes, jobject progress) {
    return extractTar(env, fd, offset, destination, includes, progress);
}

extern "C" JNIEXPORT jlongArray JNICALL
Java_com_bareapps_barebackup_sba_SbaSwiftTarNative_extractTarFromFdWithStatsRaw(
    JNIEnv* env, jobject, jint fd, jlong offset, jstring destination, jint flags,
    jobjectArray includes, jobject progress) {
    jobjectArray extracted = extractTar(env, fd, offset, destination, includes, progress);
    if (extracted == nullptr || env->ExceptionCheck()) return nullptr;
    const jsize count = env->GetArrayLength(extracted);
    // The reference contract consumes exactly 20 counters. Populate only counters
    // that this implementation can truthfully measure; unsupported fast-path and
    // timing counters remain zero rather than being fabricated.
    jlong values[20] = {};
    values[1] = count; // entryCount
    jclass entryClass = env->FindClass("com/bareapps/barebackup/sba/internal/tar/SbaTarEntryInfo");
    (void)entryClass;
    jlongArray result = env->NewLongArray(20);
    if (result != nullptr) env->SetLongArrayRegion(result, 0, 20, values);
    env->DeleteLocalRef(extracted);
    return result;
}

extern "C" JNIEXPORT jobjectArray JNICALL
Java_com_bareapps_barebackup_sba_SbaSwiftTarNative_extractTarZstdFromFdRaw(
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
        "(Ljava/io/FileDescriptor;JJLjava/lang/String;I[Ljava/lang/String;Lcom/bareapps/barebackup/sba/internal/progress/SbaNativeProgressListener;)[Ljava/lang/String;") : nullptr;
    jobjectArray result = method ? static_cast<jobjectArray>(
        env->CallObjectMethod(receiver, method, fileDescriptor, offset, compressedSize,
                              destination, flags, includes, progress)) : nullptr;
    env->SetIntField(fileDescriptor, fdField, -1);
    close(ownedFd);
    env->DeleteLocalRef(fileDescriptor);
    return result;
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
        "(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Lcom/bareapps/barebackup/sba/internal/progress/SbaNativeProgressListener;J)[J") : nullptr;
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
