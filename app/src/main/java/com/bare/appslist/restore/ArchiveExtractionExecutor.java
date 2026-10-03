package com.bare.appslist.restore;

import com.bare.apps.contracts.RfArtifactContracts.F158ArchiveParse;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashSet;
import java.util.Set;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;

/**
 * Concrete archive extraction adapter for ZIP-compatible restore artifacts.
 *
 * The executor performs the mutation step only after F158 facts have passed:
 * header validity, key check, duplicate-entry rejection, unsafe-entry
 * rejection and extraction readiness. Encrypted/native SBA formats still
 * require their format-specific parser/decryptor to produce an extraction
 * stream; this class does not fake that capability.
 */
public final class ArchiveExtractionExecutor {
    public static final long DEFAULT_MAX_ENTRY_BYTES = 512L * 1024L * 1024L;

    public Result extract(
            InputStream source,
            File destination,
            F158ArchiveParse archive,
            long maxEntryBytes) throws IOException {
        if (source == null) throw new IllegalArgumentException("source");
        if (destination == null) throw new IllegalArgumentException("destination");
        if (archive == null) throw new IllegalArgumentException("archive");
        if (maxEntryBytes < 1L) throw new IllegalArgumentException("maxEntryBytes");

        if (!archive.headerValid()
                || !archive.keyCheckValid()
                || archive.duplicateEntryRejected()
                || archive.unsafeEntryRejected()
                || !archive.extractionReady()) {
            throw new IOException("Archive is not extraction-ready: " + archive.errorState());
        }
        if (!isZipCompatible(archive.format())) {
            throw new IOException("Unsupported extraction format: " + archive.format());
        }

        if (!destination.exists() && !destination.mkdirs()) {
            throw new IOException("Cannot create extraction directory: " + destination);
        }
        if (!destination.isDirectory()) {
            throw new IOException("Extraction destination is not a directory: " + destination);
        }

        Set<String> seen = new HashSet<>();
        long extractedBytes = 0L;
        int entryCount = 0;

        try (ZipInputStream zip = new ZipInputStream(new BufferedInputStream(source))) {
            ZipEntry entry;
            byte[] buffer = new byte[64 * 1024];
            while ((entry = zip.getNextEntry()) != null) {
                String name = entry.getName();
                if (name == null || name.isEmpty() || !seen.add(name)) {
                    throw new IOException("Duplicate/invalid archive entry: " + name);
                }
                File target = safeResolve(destination, name);
                if (entry.isDirectory()) {
                    if (!target.exists() && !target.mkdirs()) {
                        throw new IOException("Cannot create directory: " + target);
                    }
                    zip.closeEntry();
                    continue;
                }

                File parent = target.getParentFile();
                if (parent != null && !parent.exists() && !parent.mkdirs()) {
                    throw new IOException("Cannot create parent directory: " + parent);
                }

                long entryBytes = 0L;
                try (BufferedOutputStream out =
                             new BufferedOutputStream(new FileOutputStream(target))) {
                    int read;
                    while ((read = zip.read(buffer)) != -1) {
                        entryBytes += read;
                        extractedBytes += read;
                        if (entryBytes > maxEntryBytes) {
                            throw new IOException("Archive entry exceeds size limit: " + name);
                        }
                        out.write(buffer, 0, read);
                    }
                }
                entryCount++;
                zip.closeEntry();
            }
        } catch (IOException e) {
            throw e;
        }

        return new Result(entryCount, extractedBytes);
    }

    public Result extract(
            File source,
            File destination,
            F158ArchiveParse archive) throws IOException {
        if (source == null) throw new IllegalArgumentException("source");
        try (InputStream input = new FileInputStream(source)) {
            return extract(input, destination, archive, DEFAULT_MAX_ENTRY_BYTES);
        }
    }

    private static boolean isZipCompatible(String format) {
        if (format == null) return false;
        String normalized = format.trim().toLowerCase(java.util.Locale.ROOT);
        return "zip".equals(normalized)
                || "apks".equals(normalized)
                || "zip-compatible".equals(normalized);
    }

    private static File safeResolve(File root, String entryName) throws IOException {
        String normalized = entryName.replace('\\', '/');
        while (normalized.startsWith("/")) normalized = normalized.substring(1);
        File target = new File(root, normalized);
        String rootPath = root.getCanonicalPath();
        String targetPath = target.getCanonicalPath();
        if (!targetPath.equals(rootPath)
                && !targetPath.startsWith(rootPath + File.separator)) {
            throw new IOException("Unsafe archive path: " + entryName);
        }
        return target;
    }

    public static final class Result {
        private final int entryCount;
        private final long extractedBytes;

        public Result(int entryCount, long extractedBytes) {
            this.entryCount = entryCount;
            this.extractedBytes = extractedBytes;
        }

        public int getEntryCount() { return entryCount; }
        public long getExtractedBytes() { return extractedBytes; }
    }
}
