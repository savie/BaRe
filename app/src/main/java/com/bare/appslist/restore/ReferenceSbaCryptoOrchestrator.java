package com.bare.appslist.restore;

import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.util.Arrays;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

/**
 * Exact Java-side reconstruction of the Reference SBA key/index integrity layer.
 *
 * This intentionally does not implement the Reference's internal/optional payload
 * cipher backends. It provides the common Argon2id-derived key checks and SBA2
 * encrypted-index MAC that precede payload extraction.
 */
public final class ReferenceSbaCryptoOrchestrator {
    private static final byte[] INDEX_MAC_KEY_LABEL =
            "SBA2-index-mac-key-v1".getBytes(StandardCharsets.UTF_8);
    private static final byte[] INDEX_METADATA_MAC_LABEL =
            "SBA2-index-metadata-mac-v1".getBytes(StandardCharsets.UTF_8);

    private ReferenceSbaCryptoOrchestrator() {}

    public static byte[] deriveIndexMacKey(byte[] derivedKey, byte[] salt, byte[] nonceSeed) {
        require(derivedKey, "derivedKey");
        requireLength(salt, 16, "salt");
        requireLength(nonceSeed, 16, "nonceSeed");

        try {
            MessageDigest digest = MessageDigest.getInstance("SHA-256");
            digest.update(INDEX_MAC_KEY_LABEL);
            digest.update(salt);
            digest.update(nonceSeed);
            digest.update(derivedKey);
            return digest.digest();
        } catch (Exception e) {
            throw new IllegalStateException(e);
        }
    }

    public static byte[] computeIndexMetadataMac(
            byte[] indexMacKey,
            byte[] header,
            long indexOffset,
            long indexSize,
            int indexCrc,
            byte[] indexBytes) {
        require(indexMacKey, "indexMacKey");
        require(header, "header");
        require(indexBytes, "indexBytes");
        if (header.length < 136) {
            throw new IllegalArgumentException("SBA v2 header must contain the 32-byte index MAC field");
        }

        byte[] macHeader = Arrays.copyOf(header, header.length);
        Arrays.fill(macHeader, 104, 136, (byte) 0);
        try {
            Mac mac = Mac.getInstance("HmacSHA256");
            mac.init(new SecretKeySpec(indexMacKey, "HmacSHA256"));
            mac.update(INDEX_METADATA_MAC_LABEL);
            mac.update(macHeader);
            updateLong(mac, indexOffset);
            updateLong(mac, indexSize);
            updateInt(mac, indexCrc);
            mac.update(indexBytes);
            return mac.doFinal();
        } catch (Exception e) {
            throw new IllegalStateException(e);
        } finally {
            Arrays.fill(macHeader, (byte) 0);
        }
    }

    public static void verifyIndexMetadataMac(
            byte[] indexMacKey,
            byte[] header,
            long indexOffset,
            long indexSize,
            int indexCrc,
            byte[] indexBytes,
            byte[] expectedMac) {
        requireLength(expectedMac, 32, "expected index MAC");
        byte[] actual = computeIndexMetadataMac(
                indexMacKey, header, indexOffset, indexSize, indexCrc, indexBytes);
        try {
            if (!MessageDigest.isEqual(actual, expectedMac)) {
                throw new IllegalArgumentException("SBA encrypted index MAC mismatch");
            }
        } finally {
            Arrays.fill(actual, (byte) 0);
        }
    }

    public static byte[] keyCheck(
            int encryptionMethod,
            byte[] derivedKey,
            byte[] salt,
            byte[] nonceSeed) {
        require(derivedKey, "derivedKey");
        requireLength(salt, 16, "salt");
        requireLength(nonceSeed, 16, "nonceSeed");

        String label;
        switch (encryptionMethod) {
            case 1:
                label = "SBA1-7zAES-key-check-v1";
                break;
            case 2:
                label = "SBA1-AES256GCM-key-check-v1";
                break;
            case 3:
                label = "SBA1-AES256GCMSIV-key-check-v1";
                break;
            case 4:
                label = "SBA1-AEGIS256-key-check-v1";
                break;
            case 5:
                label = "SBA1-AEGIS128X2-key-check-v1";
                break;
            default:
                throw new IllegalArgumentException(
                        "SBA encryption method required for key check: " + encryptionMethod);
        }

        return SbaArchiveCreationExecutor.keyCheck(label, derivedKey, salt, nonceSeed);
    }

    public static boolean isPublicNativeAead(int encryptionMethod) {
        return encryptionMethod == 4 || encryptionMethod == 5;
    }

    public static boolean isInternalCompatibilityMethod(int encryptionMethod) {
        return encryptionMethod == 1 || encryptionMethod == 2 || encryptionMethod == 3;
    }

    private static void updateLong(Mac mac, long value) {
        for (int i = 7; i >= 0; i--) {
            mac.update((byte) (value >>> (i * 8)));
        }
    }

    private static void updateInt(Mac mac, int value) {
        for (int i = 3; i >= 0; i--) {
            mac.update((byte) (value >>> (i * 8)));
        }
    }

    private static void require(byte[] value, String name) {
        if (value == null) throw new IllegalArgumentException(name);
    }

    private static void requireLength(byte[] value, int expected, String name) {
        require(value, name);
        if (value.length != expected) {
            throw new IllegalArgumentException(name + " must be " + expected + " bytes");
        }
    }
}
