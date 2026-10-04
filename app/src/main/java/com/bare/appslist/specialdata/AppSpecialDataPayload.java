package com.bare.appslist.specialdata;

import android.util.Base64;

import com.bare.appslist.restore.SbaNativeBridge;

import org.json.JSONException;
import org.json.JSONObject;

import java.io.File;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
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

        String encoded = Base64.encodeToString(compressed, Base64.NO_WRAP);
        return FORMAT_VERSION_1 + ENCRYPTED_STRING_SEPARATOR
                + userBinding + ENCRYPTED_STRING_SEPARATOR + encoded;
    }

    public static AppSpecialDataPayload decodeV1(
            String encoded, String expectedUserBinding, SbaNativeBridge nativeBridge) throws IOException {
        requireUserBinding(expectedUserBinding);
        if (encoded == null || encoded.isEmpty()) return null;

        String[] parts = encoded.split(java.util.regex.Pattern.quote(ENCRYPTED_STRING_SEPARATOR), -1);
        if (parts.length < 3 || !FORMAT_VERSION_1.equals(parts[0])) {
            throw new IOException("Unsupported special data payload format.");
        }
        if (!expectedUserBinding.equals(parts[1])) {
            throw new IOException("Special data payload belongs to a different user.");
        }
        if (nativeBridge == null) throw new IllegalArgumentException("Native bridge is required.");

        final byte[] compressed;
        try {
            compressed = Base64.decode(parts[2], Base64.DEFAULT);
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

        String encoded = Files.readString(file.toPath(), StandardCharsets.UTF_8);
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
            Files.writeString(temp.toPath(), encoded, StandardCharsets.UTF_8);
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

    private static String emptyToNull(String value) {
        return value == null || value.isEmpty() ? null : value;
    }

    private static void requireUserBinding(String value) {
        if (value == null || value.isEmpty()) {
            throw new IllegalArgumentException("User binding is required.");
        }
    }
}
