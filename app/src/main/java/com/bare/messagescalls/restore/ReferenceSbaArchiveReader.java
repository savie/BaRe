package com.bare.messagescalls.restore;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.charset.StandardCharsets;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.zip.CRC32;

/**
 * Small Java-only reader for the Reference SBA1 container framing.
 *
 * Reference z07 proves the SBA header/footer/index layout. This reader handles
 * the exact unencrypted + uncompressed SBA subset without inventing crypto.
 * Encrypted SBA payloads are deliberately rejected because Reference routes
 * those through its native SBA backend (Argon2id + AEAD).
 */
public final class ReferenceSbaArchiveReader {
    private ReferenceSbaArchiveReader() {}

    public static boolean isSba(java.io.File file) throws IOException {
        if (file == null || !file.isFile() || file.length() < 4) return false;
        try (java.io.RandomAccessFile raf = new java.io.RandomAccessFile(file, "r")) {
            byte[] magic = new byte[4];
            raf.readFully(magic);
            if (!"SBA1".equals(new String(magic, StandardCharsets.US_ASCII))) return false;
            int version = raf.readUnsignedShort();
            int headerSize = raf.readUnsignedShort();
            return (version == 1 && headerSize == 96) || (version == 2 && headerSize == 144);
        }
    }

    public static Map<String, byte[]> readEntries(java.io.File file) throws Exception {
        try (RandomAccessFile raf = new RandomAccessFile(file, "r")) {
            Header header = readHeader(raf);
            if (header.encryptionMethod != 0) {
                throw new IOException(
                        "Reference SBA encrypted archive requires the native SBA backend");
            }
            if (header.compressionMethod != 0) {
                throw new IOException(
                        "Reference SBA compressed archive requires the native SBA zstd backend");
            }

            Footer footer = readFooter(raf, header.version);
            if (footer.indexOffset < header.headerSize
                    || footer.indexSize < 16
                    || footer.indexOffset + footer.indexSize > raf.length() - 32) {
                throw new IOException("Invalid SBA1 index bounds");
            }

            if (footer.indexSize > Integer.MAX_VALUE) {
                throw new IOException("SBA1 index is too large");
            }
            byte[] index = new byte[(int) footer.indexSize];
            raf.seek(footer.indexOffset);
            raf.readFully(index);

            CRC32 crc = new CRC32();
            crc.update(index);
            if ((int) crc.getValue() != footer.indexCrc) {
                throw new IOException("SBA1 index CRC mismatch");
            }

            return readIndexEntries(raf, index, footer.indexOffset, footer.indexOffset + footer.indexSize);
        }
    }

    private static Header readHeader(RandomAccessFile raf) throws IOException {
        raf.seek(0);
        byte[] magic = new byte[4];
        raf.readFully(magic);
        if (!"SBA1".equals(new String(magic, StandardCharsets.US_ASCII))) {
            throw new IOException("Not a Reference SBA1 archive");
        }
        int version = raf.readUnsignedShort();
        int headerSize = raf.readUnsignedShort();
        if ((version != 1 && version != 2) || headerSize != (version == 1 ? 96 : 144)) {
            throw new IOException("Not a Reference SBA1 archive");
        }
        int flags = raf.readInt();
        long creationTime = raf.readLong();
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
        byte[] mac = new byte[16];
        raf.readFully(salt);
        raf.readFully(nonceSeed);
        raf.readFully(mac);
        int macLength = raf.readUnsignedShort();
        int chunkSize = raf.readInt();
        if (version == 1) {
            byte[] reserved = new byte[4];
            raf.readFully(reserved);
        } else {
            // Reference v2 appends six v2 fields after the common header:
            // chunkSize, encryption KDF/mode fields and a 32-byte value,
            // followed by eight reserved bytes. We only need the already
            // validated compression/encryption methods for the reader.
            int v2ChunkSize = chunkSize;
            raf.readUnsignedShort();
            raf.readUnsignedShort();
            raf.readUnsignedShort();
            raf.readUnsignedShort();
            byte[] v2Value = new byte[32];
            raf.readFully(v2Value);
            byte[] v2Reserved = new byte[8];
            raf.readFully(v2Reserved);
        }
        return new Header(version, headerSize, flags, creationTime, compressionMethod,
                compressionLevel, encryptionMethod, kdfMethod, iterations, keyCheckLength,
                saltLength, nonceSeedLength, macLength, chunkSize);
    }

    private static Footer readFooter(RandomAccessFile raf, int version) throws IOException {
        long footerOffset = raf.length() - 32;
        if (footerOffset < 0) throw new IOException("SBA1 footer missing");
        raf.seek(footerOffset);
        byte[] magic = new byte[4];
        raf.readFully(magic);
        if (!"SAF1".equals(new String(magic, StandardCharsets.US_ASCII))) {
            throw new IOException("Reference SBA1 footer signature missing");
        }
        int footerSize = raf.readUnsignedShort();
        int footerVersion = raf.readUnsignedShort();
        if (footerSize != 32 || footerVersion != version) {
            throw new IOException("Invalid SBA1 footer");
        }
        long indexOffset = raf.readLong();
        long indexSize = raf.readLong();
        int indexCrc = raf.readInt();
        byte[] prefix = new byte[28];
        raf.seek(footerOffset);
        raf.readFully(prefix);
        int footerCrc = raf.readInt();

        CRC32 crc = new CRC32();
        crc.update(prefix);
        if ((int) crc.getValue() != footerCrc) {
            throw new IOException("SBA1 footer CRC mismatch");
        }
        return new Footer(indexOffset, indexSize, indexCrc);
    }

    private static Map<String, byte[]> readIndexEntries(
            RandomAccessFile raf, byte[] index, long indexOffset, long indexEnd) throws IOException {
        DataInputStream in = new DataInputStream(new ByteArrayInputStream(index));
        byte[] magic = new byte[4];
        in.readFully(magic);
        if (!"SAI1".equals(new String(magic, StandardCharsets.US_ASCII))) {
            throw new IOException("Reference SBA1 index signature missing");
        }
        int indexHeaderSize = in.readUnsignedShort();
        int indexVersion = in.readUnsignedShort();
        int entryCount = in.readInt();
        int metadataLength = in.readInt();
        if (indexHeaderSize != 16 || (indexVersion != 1 && indexVersion != 2)
                || entryCount < 0 || metadataLength < 0 || metadataLength > 1_048_576) {
            throw new IOException("Invalid SBA1 index header");
        }
        byte[] metadata = new byte[metadataLength];
        in.readFully(metadata);

        Map<String, byte[]> result = new LinkedHashMap<>();
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
                in.readLong(); // tarEntryCount
                in.readLong(); // regularFileCount
                in.readLong(); // directoryCount
            }

            if (nameLength <= 0 || entryMetadataLength != 0 || reserved != 0) {
                throw new IOException("Invalid SBA1 index record " + i);
            }
            byte[] nameBytes = new byte[nameLength];
            in.readFully(nameBytes);
            String entryName = new String(nameBytes, StandardCharsets.UTF_8);
            if (flags != 1) {
                // Reference unencrypted entries use flags=1 for uncompressed and
                // flags=3 for compressed; reject malformed zero flags.
                throw new IOException("Invalid SBA1 entry flags for " + entryName);
            }
            if (entryHeaderOffset < 96 || payloadOffset < entryHeaderOffset + 24
                    || storedSize < 0 || compressedSize < 0 || tarSize < 0
                    || payloadOffset + storedSize > raf.length()) {
                throw new IOException("Invalid SBA1 entry bounds for " + entryName);
            }

            // We only reach here for the unencrypted + uncompressed archive
            // subset, so stored/compressed/tar sizes must agree.
            if (storedSize != compressedSize || storedSize != tarSize) {
                throw new IOException("SBA1 entry is compressed or transformed: " + entryName);
            }
            raf.seek(entryHeaderOffset);
            byte[] entryMagic = new byte[4];
            raf.readFully(entryMagic);
            if (!"SAE1".equals(new String(entryMagic, StandardCharsets.US_ASCII))) {
                throw new IOException("Reference SBA1 entry signature missing for " + entryName);
            }
            int entryHeaderSize = raf.readUnsignedShort();
            if (entryHeaderSize != 24) {
                throw new IOException("Invalid SBA1 entry header for " + entryName);
            }
            byte[] tar = new byte[(int) storedSize];
            if (storedSize > Integer.MAX_VALUE) {
                throw new IOException("SBA1 entry too large: " + entryName);
            }
            raf.seek(payloadOffset);
            raf.readFully(tar);
            extractTarEntries(tar, result);
        }

        return result;
    }

    private static void extractTarEntries(byte[] tar, Map<String, byte[]> result) throws IOException {
        int offset = 0;
        while (offset + 512 <= tar.length) {
            boolean zero = true;
            for (int i = 0; i < 512; i++) {
                if (tar[offset + i] != 0) {
                    zero = false;
                    break;
                }
            }
            if (zero) break;

            String name = ascii(tar, offset, 100);
            char type = (char) tar[offset + 156];
            long size = parseOctal(tar, offset + 124, 12);
            if (size < 0 || size > Integer.MAX_VALUE || offset + 512L + size > tar.length) {
                throw new IOException("Invalid SBA1 tar entry: " + name);
            }

            int dataStart = offset + 512;
            if (type == 0 || type == '0') {
                byte[] data = new byte[(int) size];
                System.arraycopy(tar, dataStart, data, 0, (int) size);
                String base = basename(name);
                if (!base.isEmpty()) result.put(base, data);
            }

            long next = dataStart + ((size + 511L) / 512L) * 512L;
            if (next > Integer.MAX_VALUE) throw new IOException("SBA1 tar overflow");
            offset = (int) next;
        }
    }

    private static String ascii(byte[] data, int offset, int length) {
        int end = offset;
        int max = offset + length;
        while (end < max && data[end] != 0) end++;
        return new String(data, offset, end - offset, StandardCharsets.UTF_8).trim();
    }

    private static long parseOctal(byte[] data, int offset, int length) {
        long value = 0;
        int end = offset + length;
        int i = offset;
        while (i < end && (data[i] == 0 || data[i] == ' ')) i++;
        while (i < end && data[i] >= '0' && data[i] <= '7') {
            value = (value << 3) + (data[i] - '0');
            i++;
        }
        return value;
    }

    private static String basename(String name) {
        String normalized = name.replace('\\', '/');
        int slash = normalized.lastIndexOf('/');
        return slash >= 0 ? normalized.substring(slash + 1) : normalized;
    }

    private static int u16(byte[] b, int offset) {
        return ((b[offset] & 0xff) << 8) | (b[offset + 1] & 0xff);
    }

    private static final class Header {
        final int version, headerSize, flags, compressionMethod, compressionLevel;
        final int encryptionMethod, kdfMethod, iterations, keyCheckLength, saltLength;
        final int nonceSeedLength, macLength, chunkSize;
        final long creationTime;
        Header(int version, int headerSize, int flags, long creationTime, int compressionMethod,
               int compressionLevel, int encryptionMethod, int kdfMethod, int iterations,
               int keyCheckLength, int saltLength, int nonceSeedLength, int macLength, int chunkSize) {
            this.version=version; this.headerSize=headerSize; this.flags=flags; this.creationTime=creationTime;
            this.compressionMethod=compressionMethod; this.compressionLevel=compressionLevel;
            this.encryptionMethod=encryptionMethod; this.kdfMethod=kdfMethod; this.iterations=iterations;
            this.keyCheckLength=keyCheckLength; this.saltLength=saltLength;
            this.nonceSeedLength=nonceSeedLength; this.macLength=macLength; this.chunkSize=chunkSize;
        }
    }

    private static final class Footer {
        final long indexOffset, indexSize;
        final int indexCrc;
        Footer(long indexOffset,long indexSize,int indexCrc){
            this.indexOffset=indexOffset;this.indexSize=indexSize;this.indexCrc=indexCrc;
        }
    }
}
