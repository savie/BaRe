package com.bare.messagescalls.restore;

import com.bare.appslist.restore.ReferenceSbaCryptoOrchestrator;
import com.bare.appslist.restore.SbaNativeArchiveBackend;
import com.bare.appslist.restore.SbaNativeEntryExecutor;
import com.swiftapps.sba.internal.progress.SbaNativeProgressListener;

import java.io.File;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.DirectoryStream;
import java.security.MessageDigest;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Arrays;
import java.util.Comparator;
import java.util.zip.CRC32;

/**
 * Reference SBA encrypted/native restore orchestration.
 *
 * This implements only the payload backends actually exposed by the Reference
 * 5.1.0-620 native path: Zstd and AEGIS-256/AEGIS-128X2. Internal compatibility
 * SevenZip/AES-GCM/AES-GCM-SIV payload readers remain deliberately unsupported.
 */
public final class ReferenceSbaNativeRestoreOrchestrator {
    private static final String SBA = "SBA1";
    private static final int FOOTER_SIZE = 32;
    private static final int MAX_INDEX_SIZE = 67_108_864;

    private ReferenceSbaNativeRestoreOrchestrator() {}

    /**
     * Extract selected TAR members directly into the Reference destination directory.
     * The Reference native AEGIS path receives the canonical destination separately
     * from the SBA entry name; it must not be emulated by reading payload bytes into
     * a temporary map.
     */
    public static java.util.List<String> extractToDirectory(
            File archive, String password, File destination, java.util.List<String> selected) throws Exception {
        if (archive == null || !archive.isFile()) throw new IOException("SBA archive does not exist");
        if (destination == null) throw new IOException("SBA extraction destination is missing");
        if (!destination.exists() && !destination.mkdirs()) throw new IOException("Unable to create SBA extraction destination");
        if (!destination.isDirectory()) throw new IOException("SBA extraction destination is not a directory");

        Header h;
        Footer footer;
        byte[] index;
        try (java.io.RandomAccessFile raf = new java.io.RandomAccessFile(archive, "r")) {
            h = readHeader(raf);
            footer = readFooter(raf, h.version);
            if (footer.indexOffset < h.headerSize || footer.indexSize <= 0
                    || footer.indexSize > MAX_INDEX_SIZE
                    || footer.indexOffset + footer.indexSize > raf.length() - FOOTER_SIZE) {
                throw new IOException("Invalid SBA index bounds");
            }
            index = new byte[(int) footer.indexSize];
            raf.seek(footer.indexOffset);
            raf.readFully(index);
        }
        CRC32 crc = new CRC32();
        crc.update(index);
        if ((int) crc.getValue() != footer.indexCrc) throw new IOException("SBA index CRC mismatch");

        java.util.List<Entry> entries = parseEntries(index, h, footer);
        validateEntryHeaders(archive, h, footer, entries);
        String[] selectedArray = null;
        if (selected != null && !selected.isEmpty()) {
            selectedArray = selected.toArray(new String[0]);
        }

        if (h.encryptionMethod == 0) {
            java.util.ArrayList<String> extracted = new java.util.ArrayList<>();
            for (Entry e : entries) {
                String[] result;
                if (h.compressionMethod == 0) {
                    result = new SbaNativeEntryExecutor().extractPlain(
                            archive, e.payloadOffset, e.storedSize, destination.getCanonicalPath(),
                            e.flags, selectedArray, new NoopProgress());
                } else if (h.compressionMethod == 1) {
                    result = new SbaNativeEntryExecutor().extractZstd(
                            archive, e.payloadOffset, e.storedSize, destination.getCanonicalPath(),
                            e.flags, selectedArray, new NoopProgress());
                } else {
                    throw new IOException("Unsupported Reference SBA compression: " + h.compressionMethod);
                }
                if (result != null) java.util.Collections.addAll(extracted, result);
            }
            return extracted;
        }

        if (password == null || password.isEmpty()) throw new IOException("SBA encryption password required");
        if (h.kdfMethod != 1) throw new IOException("Unsupported Reference SBA KDF: " + h.kdfMethod);
        int outputBytes = h.encryptionMethod == 1 ? 16 : 32;
        SbaNativeArchiveBackend backend = new SbaNativeArchiveBackend();
        byte[] key = backend.deriveArgon2id(password, h.salt, h.iterations, h.memoryKiB, h.parallelism, outputBytes);
        try {
            byte[] expectedKeyCheck = ReferenceSbaCryptoOrchestrator.keyCheck(
                    h.encryptionMethod, key, h.salt, h.nonceSeed);
            try {
                if (!MessageDigest.isEqual(expectedKeyCheck, h.keyCheck)) throw new IOException("Invalid SBA archive key");
            } finally { Arrays.fill(expectedKeyCheck, (byte) 0); }
            if (h.version >= 2) {
                byte[] indexMacKey = ReferenceSbaCryptoOrchestrator.deriveIndexMacKey(key, h.salt, h.nonceSeed);
                try {
                    ReferenceSbaCryptoOrchestrator.verifyIndexMetadataMac(
                            indexMacKey, h.rawHeader, footer.indexOffset, footer.indexSize,
                            footer.indexCrc, index, h.indexMac);
                } finally { Arrays.fill(indexMacKey, (byte) 0); }
            }
            if (!ReferenceSbaCryptoOrchestrator.isPublicNativeAead(h.encryptionMethod)) {
                throw new IOException("Reference SBA optional encryption backend is not enabled for method " + h.encryptionMethod);
            }
            java.util.ArrayList<String> extracted = new java.util.ArrayList<>();
            for (Entry e : entries) {
                byte[] aad = e.name.getBytes(StandardCharsets.UTF_8);
                try {
                    String[] result = new SbaNativeEntryExecutor().extractAegis(
                            archive, e.entryHeaderOffset, e.payloadOffset, e.storedSize, e.compressedSize,
                            e.name, destination.getCanonicalPath(), e.flags, selectedArray,
                            h.encryptionMethod, h.chunkSize, key, h.nonceSeed, aad,
                            e.tarSize, 511, new NoopProgress(), true);
                    if (result != null) java.util.Collections.addAll(extracted, result);
                } finally { Arrays.fill(aad, (byte) 0); }
            }
            return extracted;
        } finally { Arrays.fill(key, (byte) 0); }
    }

    public static Map<String, byte[]> readEntries(File archive, String password) throws Exception {
        if (archive == null || !archive.isFile()) {
            throw new IOException("SBA archive does not exist");
        }
        Header h;
        Footer footer;
        byte[] index;
        try (java.io.RandomAccessFile raf = new java.io.RandomAccessFile(archive, "r")) {
            h = readHeader(raf);
            footer = readFooter(raf, h.version);
            if (footer.indexOffset < h.headerSize || footer.indexSize <= 0
                    || footer.indexSize > MAX_INDEX_SIZE
                    || footer.indexOffset + footer.indexSize > raf.length() - FOOTER_SIZE) {
                throw new IOException("Invalid SBA index bounds");
            }
            index = new byte[(int) footer.indexSize];
            raf.seek(footer.indexOffset);
            raf.readFully(index);
        }

        CRC32 crc = new CRC32();
        crc.update(index);
        if ((int) crc.getValue() != footer.indexCrc) {
            throw new IOException("SBA index CRC mismatch");
        }

        if (h.encryptionMethod == 0) {
            return readUnencrypted(archive, h, footer, index);
        }
        if (password == null || password.isEmpty()) {
            throw new IOException("SBA encryption password required");
        }

        if (h.kdfMethod != 1) {
            throw new IOException("Unsupported Reference SBA KDF: " + h.kdfMethod);
        }

        int outputBytes = h.encryptionMethod == 1 ? 16 : 32;
        SbaNativeArchiveBackend backend = new SbaNativeArchiveBackend();
        byte[] key = backend.deriveArgon2id(
                password, h.salt, h.iterations, h.memoryKiB, h.parallelism, outputBytes);
        try {
            byte[] expectedKeyCheck =
                    ReferenceSbaCryptoOrchestrator.keyCheck(
                            h.encryptionMethod, key, h.salt, h.nonceSeed);
            try {
                if (!MessageDigest.isEqual(expectedKeyCheck, h.keyCheck)) {
                    throw new IOException("Invalid SBA archive key");
                }
            } finally {
                Arrays.fill(expectedKeyCheck, (byte) 0);
            }

            if (h.version >= 2) {
                byte[] indexMacKey =
                        ReferenceSbaCryptoOrchestrator.deriveIndexMacKey(
                                key, h.salt, h.nonceSeed);
                try {
                    ReferenceSbaCryptoOrchestrator.verifyIndexMetadataMac(
                            indexMacKey, h.rawHeader, footer.indexOffset, footer.indexSize,
                            footer.indexCrc, index, h.indexMac);
                } finally {
                    Arrays.fill(indexMacKey, (byte) 0);
                }
            }

            if (!ReferenceSbaCryptoOrchestrator.isPublicNativeAead(h.encryptionMethod)) {
                throw new IOException(
                        "Reference SBA optional encryption backend is not enabled for method "
                                + h.encryptionMethod);
            }

            return extractNative(archive, h, footer, index, key);
        } finally {
            Arrays.fill(key, (byte) 0);
        }
    }

    private static Map<String, byte[]> readUnencrypted(
            File archive, Header h, Footer footer, byte[] index) throws Exception {
        if (h.compressionMethod == 0) {
            validateEntryHeaders(archive, h, footer, parseEntries(index, h, footer));
            return ReferenceSbaArchiveReader.readEntries(archive);
        }

        if (h.compressionMethod != 1) {
            throw new IOException("Unsupported Reference SBA compression: " + h.compressionMethod);
        }

        Map<String, byte[]> result = new LinkedHashMap<>();
        java.util.List<Entry> entries = parseEntries(index, h, footer);
        validateEntryHeaders(archive, h, footer, entries);
        for (Entry e : entries) {
            Path temp = Files.createTempDirectory("bare-sba-");
            try {
                new SbaNativeEntryExecutor().extractZstd(
                        archive, e.payloadOffset, e.storedSize, temp.toString(),
                        e.flags, null, new NoopProgress());
                collectFiles(temp, result);
            } finally {
                deleteTree(temp);
            }
        }
        return result;
    }

    private static Map<String, byte[]> extractNative(
            File archive, Header h, Footer footer, byte[] index, byte[] key) throws Exception {
        Map<String, byte[]> result = new LinkedHashMap<>();
        SbaNativeEntryExecutor executor = new SbaNativeEntryExecutor();
        java.util.List<Entry> entries = parseEntries(index, h, footer);
        validateEntryHeaders(archive, h, footer, entries);

        for (Entry e : entries) {
            Path temp = Files.createTempDirectory("bare-sba-");
            try {
                int compressionMode = h.compressionMethod == 0 ? 0 : 1;
                if (h.compressionMethod != 0 && h.compressionMethod != 1) {
                    throw new IOException("Unsupported Reference SBA compression: " + h.compressionMethod);
                }

                byte[] aad = e.name.getBytes(StandardCharsets.UTF_8);
                try {
                    executor.extractAegis(
                            archive,
                            e.payloadOffset,
                            e.storedSize,
                            e.compressedSize,
                            e.tarSize,
                            e.name,
                            e.flags,
                            null,
                            h.encryptionMethod,
                            h.chunkSize,
                            key,
                            h.nonceSeed,
                            aad,
                            e.tarSize,
                            511,
                            new NoopProgress(),
                            true);
                } finally {
                    Arrays.fill(aad, (byte) 0);
                }
                collectFiles(temp, result);
            } finally {
                deleteTree(temp);
            }
        }
        return result;
    }

    private static Header readHeader(java.io.RandomAccessFile raf) throws IOException {
        raf.seek(0);
        byte[] rawMagic = new byte[4];
        raf.readFully(rawMagic);
        if (!SBA.equals(new String(rawMagic, StandardCharsets.US_ASCII))) {
            throw new IOException("Not a Reference SBA1 archive");
        }

        int version = raf.readUnsignedShort();
        int headerSize = raf.readUnsignedShort();
        if ((version != 1 && version != 2)
                || headerSize != (version == 1 ? 96 : 144)) {
            throw new IOException("Invalid SBA header version/size");
        }

        byte[] rawHeader = new byte[headerSize];
        raf.seek(0);
        raf.readFully(rawHeader);

        raf.seek(8);
        int flags = raf.readInt();
        long creationTime = raf.readLong();
        if ((flags & ~3) != 0 || creationTime < 0) {
            throw new IOException("Invalid SBA header flags/time");
        }

        int compressionMethod = raf.readUnsignedShort();
        int compressionLevel = raf.readUnsignedShort();
        int encryptionMethod = raf.readUnsignedShort();
        int kdfMethod = raf.readUnsignedShort();
        int iterations = raf.readUnsignedShort();
        int keyCheckLength = raf.readUnsignedShort();
        int saltLength = raf.readUnsignedShort();
        int nonceSeedLength = raf.readUnsignedShort();

        byte[] salt = new byte[16];
        byte[] nonceSeed = new byte[16];
        byte[] keyCheck = new byte[16];
        raf.readFully(salt);
        raf.readFully(nonceSeed);
        raf.readFully(keyCheck);

        int macLength = raf.readUnsignedShort();
        int chunkSize = raf.readInt();

        int memoryKiB;
        int parallelism;
        byte[] indexMac;
        if (version == 1) {
            byte[] reserved = new byte[4];
            raf.readFully(reserved);
            requireZero(reserved, "v1 reserved");
            memoryKiB = encryptionMethod == 0 ? 0 : 16_384;
            parallelism = encryptionMethod == 0 ? 0 : 1;
            indexMac = new byte[32];
        } else {
            memoryKiB = raf.readInt();
            parallelism = raf.readUnsignedShort();
            int indexMacAlgorithm = raf.readUnsignedShort();
            int keyLength = raf.readUnsignedShort();
            int indexMacLength = raf.readUnsignedShort();
            indexMac = new byte[32];
            raf.readFully(indexMac);
            byte[] reserved = new byte[8];
            raf.readFully(reserved);
            requireZero(reserved, "v2 reserved");
            if (indexMacAlgorithm != 1 || keyLength != 32 || indexMacLength != 1) {
                throw new IOException("Unsupported SBA v2 index-MAC fields");
            }
        }

        if ((compressionMethod != 0 && compressionMethod != 1)
                || (compressionMethod == 0 && compressionLevel != 0)
                || (compressionMethod == 1 && (compressionLevel < 1 || compressionLevel > 22))) {
            throw new IOException("Invalid SBA compression fields");
        }
        if ((compressionMethod != 0) != ((flags & 1) != 0)) {
            throw new IOException("Inconsistent SBA compression header flags");
        }

        if (encryptionMethod < 0 || encryptionMethod > 5) {
            throw new IOException("Unsupported SBA encryption method: " + encryptionMethod);
        }
        if ((encryptionMethod != 0) != ((flags & 2) != 0)) {
            throw new IOException("Inconsistent SBA encryption header flags");
        }

        if (encryptionMethod != 0) {
            if (kdfMethod != 1 || iterations < 1 || iterations > 100
                    || keyCheckLength != 16 || saltLength != 16 || nonceSeedLength != 16) {
                throw new IOException("Invalid SBA encrypted header fields");
            }
            if (version == 1) {
                if (iterations != 3 || memoryKiB != 16_384 || parallelism != 1) {
                    throw new IOException("Invalid SBA v1 Argon2 defaults");
                }
            } else if (memoryKiB < 16_384 || memoryKiB > 65_536
                    || parallelism < 1 || parallelism > 8) {
                throw new IOException("Invalid SBA v2 Argon2 parameters");
            }
            if (encryptionMethod == 1) {
                if (macLength != 32 || chunkSize != 0) {
                    throw new IOException("Invalid SBA SevenZip AES fields");
                }
            } else {
                if (macLength != 0 || chunkSize < 4096 || chunkSize > 16_777_216) {
                    throw new IOException("Invalid SBA AEAD chunk/MAC fields");
                }
            }
        } else {
            if (kdfMethod != 0 || iterations != 0 || keyCheckLength != 0
                    || saltLength != 0 || nonceSeedLength != 0 || macLength != 0
                    || chunkSize != 0 || memoryKiB != 0 || parallelism != 0) {
                throw new IOException("SBA encryption fields must be zero when disabled");
            }
            for (byte b : salt) if (b != 0) throw new IOException("SBA salt must be zero when encryption is disabled");
            for (byte b : nonceSeed) if (b != 0) throw new IOException("SBA nonce seed must be zero when encryption is disabled");
            for (byte b : keyCheck) if (b != 0) throw new IOException("SBA key check must be zero when encryption is disabled");
            for (byte b : indexMac) if (b != 0) throw new IOException("SBA index MAC must be zero when encryption is disabled");
        }

        return new Header(version, headerSize, flags, compressionMethod, compressionLevel,
                encryptionMethod, kdfMethod, iterations, keyCheckLength, saltLength,
                nonceSeedLength, macLength, chunkSize, memoryKiB, parallelism,
                salt, nonceSeed, keyCheck, indexMac, rawHeader);
    }

    private static Footer readFooter(java.io.RandomAccessFile raf, int version) throws IOException {
        long footerOffset = raf.length() - FOOTER_SIZE;
        if (footerOffset < 0) throw new IOException("SBA footer missing");
        raf.seek(footerOffset);
        byte[] footer = new byte[FOOTER_SIZE];
        raf.readFully(footer);
        if (!"SAF1".equals(new String(footer, 0, 4, StandardCharsets.US_ASCII))) {
            throw new IOException("SBA footer signature missing");
        }
        int size = u16(footer, 4);
        int footerVersion = u16(footer, 6);
        if (size != 32 || footerVersion != version) {
            throw new IOException("Invalid SBA footer");
        }
        long offset = readLong(footer, 8);
        long length = readLong(footer, 16);
        int crcExpected = readInt(footer, 24);
        CRC32 crc = new CRC32();
        crc.update(footer, 0, 28);
        if ((int) crc.getValue() != readInt(footer, 28)) {
            throw new IOException("SBA footer CRC mismatch");
        }
        return new Footer(footerVersion, offset, length, crcExpected);
    }

    private static java.util.List<Entry> parseEntries(
            byte[] index, Header h, Footer footer) throws IOException {
        java.io.DataInputStream in =
                new java.io.DataInputStream(new java.io.ByteArrayInputStream(index));
        byte[] magic = new byte[4];
        in.readFully(magic);
        if (!"SAI1".equals(new String(magic, StandardCharsets.US_ASCII))) {
            throw new IOException("SBA index signature missing");
        }
        int indexHeaderSize = in.readUnsignedShort();
        int indexVersion = in.readUnsignedShort();
        int entryCount = in.readInt();
        int metadataLength = in.readInt();
        if (indexHeaderSize != 16 || (indexVersion != 1 && indexVersion != 2)
                || entryCount < 0 || metadataLength < 0 || metadataLength > 1_048_576) {
            throw new IOException("Invalid SBA index header");
        }
        byte[] metadata = new byte[metadataLength];
        in.readFully(metadata);

        java.util.ArrayList<Entry> entries = new java.util.ArrayList<>(entryCount);
        for (int i = 0; i < entryCount; i++) {
            long entryHeaderOffset = in.readLong();
            long payloadOffset = in.readLong();
            long storedSize = in.readLong();
            long compressedSize = in.readLong();
            long tarSize = in.readLong();
            int flags = in.readInt();
            int nameLength = in.readUnsignedShort();
            int entryMetadataLength = in.readInt();
            int reserved = in.readUnsignedShort();
            byte[] payloadHmac = new byte[32];
            in.readFully(payloadHmac);

            if (indexVersion >= 2) {
                long tarEntryCount = in.readLong();
                long regularFileCount = in.readLong();
                long directoryCount = in.readLong();
                if (tarEntryCount < 0 || regularFileCount < 0 || directoryCount < 0
                        || regularFileCount > tarEntryCount || directoryCount > tarEntryCount
                        || regularFileCount > tarEntryCount - directoryCount) {
                    throw new IOException("Invalid SBA tar member counts");
                }
            }

            if (nameLength <= 0 || entryMetadataLength != 0 || reserved != 0) {
                throw new IOException("Invalid SBA index record");
            }

            byte[] nameBytes = new byte[nameLength];
            in.readFully(nameBytes);
            String name = decodeUtf8Strict(nameBytes, "index record " + i);
            validateEntryName(name);

            long headerEnd = safeAdd(entryHeaderOffset, 24L, "SBA entry header");
            if (entryHeaderOffset < h.headerSize || payloadOffset < headerEnd
                    || storedSize < 0 || compressedSize < 0 || tarSize < 1024
                    || tarSize % 512 != 0) {
                throw new IOException("Invalid SBA entry offsets/sizes: " + name);
            }

            if (h.compressionMethod != 0 && compressedSize == 0) {
                throw new IOException("Compressed SBA entry has an empty compressed payload");
            }

            if (h.encryptionMethod == 0 && storedSize != compressedSize) {
                throw new IOException("Unencrypted SBA stored/compressed size mismatch");
            }

            if (h.encryptionMethod == 0 || (h.encryptionMethod >= 2 && h.encryptionMethod <= 5)) {
                for (byte b : payloadHmac) {
                    if (b != 0) {
                        throw new IOException("SBA payload HMAC must be zero for this encryption method: " + name);
                    }
                }
            }

            if (h.encryptionMethod == 1) {
                if (storedSize == 0 || storedSize % 16 != 0) {
                    throw new IOException("SevenZip AES SBA entry is not AES-block-aligned: " + name);
                }
                long expectedStored = compressedSize == 0 ? 0 : ((compressedSize + 15) / 16) * 16;
                if (storedSize != expectedStored) {
                    throw new IOException("SevenZip AES SBA stored size mismatch: " + name);
                }
            } else if (h.encryptionMethod >= 2 && h.encryptionMethod <= 5) {
                long expectedStored = paddedChunkSize(h.chunkSize, compressedSize);
                if (storedSize != expectedStored) {
                    throw new IOException("AEAD SBA stored size mismatch: " + name);
                }
            }

            if (h.compressionMethod == 0 && compressedSize != tarSize) {
                throw new IOException("Uncompressed SBA tar size mismatch");
            }

            if (h.encryptionMethod != 0 && h.encryptionMethod != 1
                    && h.encryptionMethod != 2 && h.encryptionMethod != 3
                    && h.encryptionMethod != 4 && h.encryptionMethod != 5) {
                throw new IOException("Unsupported SBA encryption method");
            }

            java.util.Arrays.fill(payloadHmac, (byte) 0);
            entries.add(new Entry(name, entryHeaderOffset, payloadOffset, storedSize,
                    compressedSize, tarSize, flags));
        }

        if (in.available() != 0) throw new IOException("Trailing bytes after SBA index records");
        return entries;
    }

    private static void validateEntryHeaders(
            File archive, Header h, Footer footer, java.util.List<Entry> entries) throws IOException {
        long expectedOffset = h.headerSize;
        try (java.io.RandomAccessFile raf = new java.io.RandomAccessFile(archive, "r")) {
            for (Entry e : entries) {
                if (e.entryHeaderOffset != expectedOffset) {
                    throw new IOException("SBA entries are not contiguous");
                }
                raf.seek(e.entryHeaderOffset);
                int headerSize = raf.readUnsignedShort();
                int headerFlags = raf.readUnsignedShort();
                int headerEntryFlags = raf.readInt();
                int nameLength = raf.readUnsignedShort();
                int metadataLength = raf.readInt();
                byte[] reserved = new byte[6];
                raf.readFully(reserved);
                byte[] nameBytes = new byte[nameLength];
                raf.readFully(nameBytes);
                String headerName = decodeUtf8Strict(nameBytes, "entry header " + e.name);
                validateEntryName(headerName);
                for (byte b : reserved) if (b != 0) throw new IOException("Non-zero SBA entry reserved bytes");
                if (headerSize != 24 || headerFlags != 0 || metadataLength != 0
                        || !e.name.equals(headerName)
                        || headerEntryFlags != expectedEntryFlags(h.compressionMethod, h.encryptionMethod)
                        || raf.getFilePointer() != e.payloadOffset) {
                    throw new IOException("SBA entry header/index mismatch: " + e.name);
                }
                long end = safeAdd(e.payloadOffset, e.storedSize, "SBA entry payload");
                if (end < e.payloadOffset || end > footer.indexOffset) {
                    throw new IOException("SBA entry payload exceeds index boundary: " + e.name);
                }
                expectedOffset = end;
            }
        }
        if (expectedOffset != footer.indexOffset) {
            throw new IOException("SBA entries do not end at index");
        }
    }

    private static int expectedEntryFlags(int compressionMethod, int encryptionMethod) {
        int base = compressionMethod == 0 ? 1 : 3;
        if (encryptionMethod == 0) return base;
        return base | (encryptionMethod == 1 ? 12 : 20);
    }

    private static void collectFiles(Path root, Map<String, byte[]> result) throws IOException {
        try (java.util.stream.Stream<Path> stream = Files.walk(root)) {
            stream.filter(Files::isRegularFile).forEach(path -> {
                try {
                    result.put(path.getFileName().toString(), Files.readAllBytes(path));
                } catch (IOException e) {
                    throw new RuntimeException(e);
                }
            });
        } catch (RuntimeException e) {
            if (e.getCause() instanceof IOException) throw (IOException) e.getCause();
            throw e;
        }
    }

    private static void deleteTree(Path root) throws IOException {
        if (root == null || !Files.exists(root)) return;
        try (java.util.stream.Stream<Path> stream = Files.walk(root)) {
            stream.sorted(Comparator.reverseOrder()).forEach(path -> {
                try { Files.deleteIfExists(path); }
                catch (IOException ignored) { }
            });
        }
    }

    private static long safeAdd(long left, long right, String label) throws IOException {
        long result = left + right;
        if (((left ^ result) & (right ^ result)) < 0) {
            throw new IOException("Integer overflow while computing " + label);
        }
        return result;
    }

    private static long paddedChunkSize(int chunkSize, long compressedSize) throws IOException {
        if (compressedSize == 0) return 0;
        if (chunkSize <= 0) throw new IOException("Invalid SBA chunk size");
        long chunks = (compressedSize + chunkSize - 1) / chunkSize;
        return safeAdd(0, chunks * 16L, "AEAD stored size");
    }

    private static String decodeUtf8Strict(byte[] bytes, String label) throws IOException {
        try {
            java.nio.charset.CharsetDecoder decoder = StandardCharsets.UTF_8.newDecoder()
                    .onMalformedInput(java.nio.charset.CodingErrorAction.REPORT)
                    .onUnmappableCharacter(java.nio.charset.CodingErrorAction.REPORT);
            return decoder.decode(java.nio.ByteBuffer.wrap(bytes)).toString();
        } catch (java.nio.charset.CharacterCodingException e) {
            throw new IOException("Malformed UTF-8 in " + label, e);
        }
    }

    private static void validateEntryName(String name) throws IOException {
        if (name == null || name.isEmpty()) throw new IOException("SBA entry name must not be empty");
        if (name.indexOf('\u0000') >= 0) throw new IOException("SBA entry name must not contain NUL");
        if (name.startsWith("/")) throw new IOException("SBA entry name must be relative: " + name);
        if (name.indexOf('\\') >= 0) throw new IOException("SBA entry name must use '/' separators only: " + name);
        String[] parts = name.split("/", -1);
        for (String part : parts) {
            if (part.isEmpty() || ".".equals(part) || "..".equals(part)) {
                throw new IOException("Unsafe SBA entry name: " + name);
            }
        }
    }

    private static void requireZero(byte[] value, String label) throws IOException {
        for (byte b : value) if (b != 0) throw new IOException("Non-zero " + label);
    }

    private static int u16(byte[] b, int o) {
        return ((b[o] & 255) << 8) | (b[o + 1] & 255);
    }

    private static int readInt(byte[] b, int o) {
        return ((b[o] & 255) << 24) | ((b[o + 1] & 255) << 16)
                | ((b[o + 2] & 255) << 8) | (b[o + 3] & 255);
    }

    private static long readLong(byte[] b, int o) {
        long value = 0;
        for (int i = 0; i < 8; i++) value = (value << 8) | (b[o + i] & 255L);
        return value;
    }

    private static final class Header {
        final int version, headerSize, flags, compressionMethod, compressionLevel;
        final int encryptionMethod, kdfMethod, iterations, keyCheckLength, saltLength;
        final int nonceSeedLength, macLength, chunkSize, memoryKiB, parallelism;
        final byte[] salt, nonceSeed, keyCheck, indexMac, rawHeader;

        Header(int version, int headerSize, int flags, int compressionMethod, int compressionLevel,
               int encryptionMethod, int kdfMethod, int iterations, int keyCheckLength,
               int saltLength, int nonceSeedLength, int macLength, int chunkSize,
               int memoryKiB, int parallelism, byte[] salt, byte[] nonceSeed,
               byte[] keyCheck, byte[] indexMac, byte[] rawHeader) {
            this.version = version; this.headerSize = headerSize; this.flags = flags;
            this.compressionMethod = compressionMethod; this.compressionLevel = compressionLevel;
            this.encryptionMethod = encryptionMethod; this.kdfMethod = kdfMethod;
            this.iterations = iterations; this.keyCheckLength = keyCheckLength;
            this.saltLength = saltLength; this.nonceSeedLength = nonceSeedLength;
            this.macLength = macLength; this.chunkSize = chunkSize;
            this.memoryKiB = memoryKiB; this.parallelism = parallelism;
            this.salt = salt; this.nonceSeed = nonceSeed; this.keyCheck = keyCheck;
            this.indexMac = indexMac; this.rawHeader = rawHeader;
        }
    }

    private static final class Footer {
        final int version;
        final long indexOffset, indexSize;
        final int indexCrc;
        Footer(int version, long indexOffset, long indexSize, int indexCrc) {
            this.version = version; this.indexOffset = indexOffset;
            this.indexSize = indexSize; this.indexCrc = indexCrc;
        }
    }

    private static final class Entry {
        final String name;
        final long entryHeaderOffset, payloadOffset, storedSize, compressedSize, tarSize;
        final int flags;
        Entry(String name, long entryHeaderOffset, long payloadOffset, long storedSize,
              long compressedSize, long tarSize, int flags) {
            this.name = name; this.entryHeaderOffset = entryHeaderOffset;
            this.payloadOffset = payloadOffset; this.storedSize = storedSize;
            this.compressedSize = compressedSize; this.tarSize = tarSize; this.flags = flags;
        }
    }

    private static final class NoopProgress implements SbaNativeProgressListener {
        @Override public void onProgress(long completed, long total) {}
        @Override public boolean isCancellationRequested() { return false; }
    }
}
