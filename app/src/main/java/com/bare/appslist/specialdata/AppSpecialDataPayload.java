package com.bare.appslist.specialdata;

import android.util.Base64;

import com.bare.appslist.restore.SbaNativeBridge;

import org.json.JSONException;
import org.json.JSONObject;

import java.io.File;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.security.GeneralSecurityException;
import java.util.Arrays;
import javax.crypto.Cipher;
import javax.crypto.spec.GCMParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import java.nio.file.Files;
import java.nio.file.StandardCopyOption;

/**
 * Reference-compatible special-data container.
 *
 * Format: v1:::userBinding:::base64(zstd(json)).
 * This class owns only the local payload format; account/backend wiring is supplied by the caller.
 */
public final class AppSpecialDataPayload {
    public static final String ENCRYPTED_STRING_SEPARATOR = ":::";
    public static final String FORMAT_VERSION_1 = "v1";
    public static final int MAX_FILE_BYTES = 1_048_576;
    public static final int VERSION_1 = 1;

    private final int version;
    private final String permissionStatesCsv;
    private final String ssaid;
    private final String ntfAccessComponent;
    private final String accessibilityComponent;
    private final String notificationPolicyXml;

    public AppSpecialDataPayload(
            int version,
            String permissionStatesCsv,
            String ssaid,
            String ntfAccessComponent,
            String accessibilityComponent,
            String notificationPolicyXml) {
        this.version = version;
        this.permissionStatesCsv = emptyToNull(permissionStatesCsv);
        this.ssaid = emptyToNull(ssaid);
        this.ntfAccessComponent = emptyToNull(ntfAccessComponent);
        this.accessibilityComponent = emptyToNull(accessibilityComponent);
        this.notificationPolicyXml = emptyToNull(notificationPolicyXml);
    }

    public int getVersion() { return version; }
    public String getPermissionStatesCsv() { return permissionStatesCsv; }
    public String getSsaid() { return ssaid; }
    public String getNtfAccessComponent() { return ntfAccessComponent; }
    public String getAccessibilityComponent() { return accessibilityComponent; }
    public String getNotificationPolicyXml() { return notificationPolicyXml; }

    public boolean hasPayloads() {
        return permissionStatesCsv != null
                || ssaid != null
                || ntfAccessComponent != null
                || accessibilityComponent != null
                || notificationPolicyXml != null;
    }

    public String encodeV1(String userBinding, SbaNativeBridge nativeBridge) throws IOException {
        requireUserBinding(userBinding);
        if (nativeBridge == null) throw new IllegalArgumentException("Native bridge is required.");
        if (version != VERSION_1) throw new IOException("Unsupported special data payload version: " + version);

        byte[] json = toJson().toString().getBytes(StandardCharsets.UTF_8);
        byte[] compressed = nativeBridge.compressZstdBytes(json, 3);
        if (compressed == null) throw new IOException("Native zstd compression returned no payload.");

        String encodedCompressed = Base64.encodeToString(compressed, Base64.NO_WRAP);
        return FORMAT_VERSION_1 + ENCRYPTED_STRING_SEPARATOR
                + SpecialDataCrypto.encrypt(userBinding, userBinding) + ENCRYPTED_STRING_SEPARATOR
                + SpecialDataCrypto.encrypt(encodedCompressed, userBinding);
    }

    public static AppSpecialDataPayload decodeV1(
            String encoded, String expectedUserBinding, SbaNativeBridge nativeBridge) throws IOException {
        requireUserBinding(expectedUserBinding);
        if (encoded == null || encoded.isEmpty()) return null;

        String[] parts = encoded.split(java.util.regex.Pattern.quote(ENCRYPTED_STRING_SEPARATOR), -1);
        if (parts.length < 3 || !FORMAT_VERSION_1.equals(parts[0])) {
            throw new IOException("Unsupported special data payload format.");
        }
        String actualBinding;
        try {
            actualBinding = SpecialDataCrypto.decrypt(parts[1], expectedUserBinding);
        } catch (GeneralSecurityException e) {
            throw new IOException("Unable to decrypt special data user binding.", e);
        }
        if (!expectedUserBinding.equals(actualBinding)) {
            throw new IOException("Special data payload belongs to a different user.");
        }
        if (nativeBridge == null) throw new IllegalArgumentException("Native bridge is required.");

        final byte[] compressed;
        try {
            String encodedCompressed = SpecialDataCrypto.decrypt(parts[2], expectedUserBinding);
            compressed = Base64.decode(encodedCompressed, Base64.DEFAULT);
        } catch (IllegalArgumentException e) {
            throw new IOException("Invalid special data payload encoding.", e);
        }

        byte[] json = nativeBridge.decompressZstdBytes(compressed);
        if (json == null) throw new IOException("Native zstd decompression returned no payload.");

        try {
            JSONObject object = new JSONObject(new String(json, StandardCharsets.UTF_8));
            int version = object.optInt("version", 0);
            if (version != VERSION_1) {
                throw new IOException("Unsupported special data payload version: " + version);
            }
            return new AppSpecialDataPayload(
                    version,
                    object.optString("permissionStatesCsv", null),
                    object.optString("ssaid", null),
                    object.optString("ntfAccessComponent", null),
                    object.optString("accessibilityComponent", null),
                    object.optString("notificationPolicyXml", null));
        } catch (JSONException e) {
            throw new IOException("Invalid special data payload JSON.", e);
        }
    }

    public static AppSpecialDataPayload read(
            File file, String expectedUserBinding, SbaNativeBridge nativeBridge) throws IOException {
        if (file == null || !file.isFile()) return null;
        long length = file.length();
        if (length > MAX_FILE_BYTES) return null;
        if (length == 0) return null;

        String encoded = new String(Files.readAllBytes(file.toPath()), StandardCharsets.UTF_8);
        return decodeV1(encoded, expectedUserBinding, nativeBridge);
    }

    public static boolean write(
            File file,
            String userBinding,
            String permissionStatesCsv,
            String ssaid,
            String ntfAccessComponent,
            String accessibilityComponent,
            String notificationPolicyXml,
            SbaNativeBridge nativeBridge) {
        if (file == null) throw new IllegalArgumentException("File is required.");
        AppSpecialDataPayload payload = new AppSpecialDataPayload(
                VERSION_1,
                permissionStatesCsv,
                ssaid,
                ntfAccessComponent,
                accessibilityComponent,
                notificationPolicyXml);

        if (!payload.hasPayloads()) {
            if (file.exists() && !file.delete()) return false;
            return false;
        }

        File parent = file.getParentFile();
        if (parent != null && !parent.exists() && !parent.mkdirs() && !parent.isDirectory()) {
            return false;
        }

        File temp = new File(file.getPath() + ".tmp-" + System.nanoTime());
        try {
            String encoded = payload.encodeV1(userBinding, nativeBridge);
            Files.write(temp.toPath(), encoded.getBytes(StandardCharsets.UTF_8));
            Files.move(
                    temp.toPath(),
                    file.toPath(),
                    StandardCopyOption.REPLACE_EXISTING,
                    StandardCopyOption.ATOMIC_MOVE);
            return true;
        } catch (Exception e) {
            if (temp.exists()) temp.delete();
            return false;
        }
    }

    private JSONObject toJson() throws IOException {
        try {
            JSONObject object = new JSONObject();
            object.put("version", version);
            if (permissionStatesCsv != null) object.put("permissionStatesCsv", permissionStatesCsv);
            if (ssaid != null) object.put("ssaid", ssaid);
            if (ntfAccessComponent != null) object.put("ntfAccessComponent", ntfAccessComponent);
            if (accessibilityComponent != null) object.put("accessibilityComponent", accessibilityComponent);
            if (notificationPolicyXml != null) object.put("notificationPolicyXml", notificationPolicyXml);
            return object;
        } catch (JSONException e) {
            throw new IOException("Unable to serialize special data payload.", e);
        }
    }

    private static final class SpecialDataCrypto {
        private static final byte FORMAT_VERSION = 1;
        private static final byte CIPHER_ID = 2;
        private static final byte[] AAD = "SwiftBackup_Entity".getBytes(StandardCharsets.UTF_8);

        static String encrypt(String value, String userBinding) throws GeneralSecurityException {
            byte[] key = key(userBinding);
            byte[] iv = new byte[12];
            new java.security.SecureRandom().nextBytes(iv);
            try {
                Cipher cipher = Cipher.getInstance("AES/GCM/NoPadding");
                cipher.init(Cipher.ENCRYPT_MODE, new SecretKeySpec(key, "AES"),
                        new GCMParameterSpec(128, iv));
                cipher.updateAAD(new byte[]{FORMAT_VERSION});
                cipher.updateAAD(new byte[]{CIPHER_ID});
                cipher.updateAAD(AAD);
                byte[] encrypted = cipher.doFinal(value.getBytes(StandardCharsets.UTF_8));
                byte[] out = new byte[2 + iv.length + encrypted.length];
                out[0] = FORMAT_VERSION;
                out[1] = CIPHER_ID;
                System.arraycopy(iv, 0, out, 2, iv.length);
                System.arraycopy(encrypted, 0, out, 14, encrypted.length);
                return Base64.encodeToString(out, Base64.DEFAULT);
            } finally {
                Arrays.fill(key, (byte) 0);
                Arrays.fill(iv, (byte) 0);
            }
        }

        static String decrypt(String encoded, String userBinding) throws GeneralSecurityException {
            byte[] packed = Base64.decode(encoded, Base64.DEFAULT);
            if (packed.length < 2 + 12 + 16 || packed[0] != FORMAT_VERSION || packed[1] != CIPHER_ID) {
                throw new GeneralSecurityException("Invalid special-data cipher envelope");
            }
            byte[] key = key(userBinding);
            byte[] iv = Arrays.copyOfRange(packed, 2, 14);
            byte[] ciphertext = Arrays.copyOfRange(packed, 14, packed.length);
            try {
                Cipher cipher = Cipher.getInstance("AES/GCM/NoPadding");
                cipher.init(Cipher.DECRYPT_MODE, new SecretKeySpec(key, "AES"),
                        new GCMParameterSpec(128, iv));
                cipher.updateAAD(new byte[]{FORMAT_VERSION});
                cipher.updateAAD(new byte[]{CIPHER_ID});
                cipher.updateAAD(AAD);
                return new String(cipher.doFinal(ciphertext), StandardCharsets.UTF_8);
            } finally {
                Arrays.fill(key, (byte) 0);
                Arrays.fill(iv, (byte) 0);
                Arrays.fill(ciphertext, (byte) 0);
            }
        }

        private static byte[] key(String value) {
            if (value == null || value.isEmpty()) throw new IllegalArgumentException("User identity is required");
            if (value.length() < 32) {
                int need = 32 - value.length();
                if (need > value.length()) throw new IllegalArgumentException("User identity is too short");
                value = value + value.substring(0, need);
            } else if (value.length() > 32) {
                value = value.substring(0, 32);
            }
            return value.getBytes(StandardCharsets.UTF_8);
        }
    }

    private static String emptyToNull(String value) {
        return value == null || value.isEmpty() ? null : value;
    }

    private static void requireUserBinding(String value) {
        if (value == null || value.isEmpty()) {
            throw new IllegalArgumentException("User binding is required.");
        }
    }
}
