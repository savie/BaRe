package com.bareapps.barebackup.model.account;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Environment;
import android.provider.Settings;
import android.util.Base64;

import com.bareapps.barebackup.model.supabase.SecureSessionStore;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.util.Arrays;
import javax.crypto.Cipher;
import javax.crypto.spec.GCMParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import java.util.Locale;
import java.util.UUID;

/** Stable local identity and SwiftBackup-compatible account folder naming. */
public final class LocalAccountManager {
    private static final String PREFS = "bare_local_account";
    private static final String KEY_UID = "local_uid";
    private static final String KEY_ACTIVE = "active_uid";
    private static final String KEY_KIND = "active_kind";
    private static final String KEY_SETUP_COMPLETE = "setup_complete";
    private static final String KIND_LOCAL = "local";
    private static final String KIND_SUPABASE = "supabase";

    private final Context app;
    private final SharedPreferences prefs;
    private final SecureSessionStore identityStore;

    public LocalAccountManager(Context context) {
        app = context.getApplicationContext();
        prefs = app.getSharedPreferences(PREFS, Context.MODE_PRIVATE);
        SecureSessionStore store = null;
        try {
            store = new SecureSessionStore(app, "bare_local_identity_secure", "bare_local_identity_v1");
        } catch (Exception error) {
            android.util.Log.w("BaReAccount", "Keystore unavailable for local identity; portable recovery remains enabled", error);
        }
        identityStore = store;
    }

    public synchronized String ensureLocalUid() {
        String uid = null;

        // The portable marker is the source of truth across app-data clearing and reinstall.
        // It contains only the random local UID, never credentials or session tokens.
        File portableIdentityFile = getPortableIdentityFile();
        try {
            uid = readPortableIdentity();
        } catch (Exception error) {
            // An existing encrypted identity marker is authoritative. Never create a second
            // local account when its key exists but cannot be validated/decrypted.
            if (portableIdentityFile.isFile()) {
                throw new IllegalStateException(
                        "Saved local identity key exists but is invalid; refusing to rotate the local account", error);
            }
            android.util.Log.w("BaReAccount",
                    "No usable portable local identity yet; checking app-private legacy stores", error);
        }

        if (uid == null || uid.trim().isEmpty()) {
            try {
                if (identityStore != null) uid = identityStore.get(KEY_UID);
            } catch (Exception error) {
                android.util.Log.w("BaReAccount", "Could not read app-private local identity", error);
            }
        }

        if (uid == null || uid.trim().isEmpty()) {
            uid = prefs.getString(KEY_UID, null);
        }
        if (uid == null || uid.trim().isEmpty()) {
            uid = UUID.randomUUID().toString();
        }

        try {
            if (identityStore == null) throw new IllegalStateException("Keystore identity store unavailable");
            identityStore.put(KEY_UID, uid);
            prefs.edit().remove(KEY_UID).apply();
        } catch (Exception error) {
            prefs.edit().putString(KEY_UID, uid).apply();
            android.util.Log.w("BaReAccount", "Could not encrypt local UID; using private fallback", error);
        }

        try {
            writePortableIdentity(uid);
        } catch (Exception error) {
            // Shared storage may not be accessible until the user grants storage access.
            android.util.Log.i("BaReAccount", "Portable local identity not written; will retry next launch", error);
        }

        String activeKind = prefs.getString(KEY_KIND, null);
        String activeUid = prefs.getString(KEY_ACTIVE, null);
        if (activeUid == null || activeUid.trim().isEmpty()
                || (KIND_LOCAL.equals(activeKind) && !uid.equals(activeUid))) {
            prefs.edit().putString(KEY_ACTIVE, uid).putString(KEY_KIND, KIND_LOCAL).apply();
        }
        return uid;
    }

    /** Dedicated encrypted local identity key; unrelated backup *.enc files are never scanned. */
    private File getPortableIdentityFile() {
        return new File(new File(getRootDirectory(), "accounts"), ".bare_local_identity.enc");
    }

    private byte[] portableIdentityKey() throws Exception {
        String androidId = Settings.Secure.getString(app.getContentResolver(), Settings.Secure.ANDROID_ID);
        if (androidId == null || androidId.trim().isEmpty()) {
            throw new IllegalStateException("Device-scoped identity key is unavailable");
        }
        MessageDigest digest = MessageDigest.getInstance("SHA-256");
        digest.update("BΛR☰-local-identity-v1".getBytes(StandardCharsets.UTF_8));
        digest.update((byte) 0);
        digest.update(app.getPackageName().getBytes(StandardCharsets.UTF_8));
        digest.update((byte) 0);
        digest.update(androidId.getBytes(StandardCharsets.UTF_8));
        return digest.digest();
    }

    private String readPortableIdentity() throws Exception {
        File file = getPortableIdentityFile();
        if (!file.isFile()) return null;
        long length = file.length();
        if (length < 29 || length > 4096) {
            throw new IllegalStateException("Encrypted local identity key has an invalid size");
        }
        byte[] packed = new byte[(int) length];
        try (FileInputStream input = new FileInputStream(file)) {
            int offset = 0;
            while (offset < packed.length) {
                int count = input.read(packed, offset, packed.length - offset);
                if (count < 0) throw new java.io.IOException("Unexpected end of encrypted local identity key");
                offset += count;
            }
        }
        byte[] iv = Arrays.copyOfRange(packed, 0, 12);
        byte[] ciphertext = Arrays.copyOfRange(packed, 12, packed.length);
        Cipher cipher = Cipher.getInstance("AES/GCM/NoPadding");
        cipher.init(Cipher.DECRYPT_MODE, new SecretKeySpec(portableIdentityKey(), "AES"),
                new GCMParameterSpec(128, iv));
        String uid = new String(cipher.doFinal(ciphertext), StandardCharsets.UTF_8).trim();
        if (uid.isEmpty() || uid.length() > 128) {
            throw new IllegalStateException("Encrypted local identity key contains an invalid UID");
        }
        return uid;
    }

    private void writePortableIdentity(String uid) throws Exception {
        File file = getPortableIdentityFile();
        File parent = file.getParentFile();
        if (!parent.isDirectory() && !parent.mkdirs() && !parent.isDirectory()) {
            throw new java.io.IOException("Cannot create local identity directory");
        }
        byte[] iv = new byte[12];
        new java.security.SecureRandom().nextBytes(iv);
        Cipher cipher = Cipher.getInstance("AES/GCM/NoPadding");
        cipher.init(Cipher.ENCRYPT_MODE, new SecretKeySpec(portableIdentityKey(), "AES"),
                new GCMParameterSpec(128, iv));
        byte[] encrypted = cipher.doFinal(uid.getBytes(StandardCharsets.UTF_8));
        File temporary = new File(parent, file.getName() + ".tmp");
        try (FileOutputStream output = new FileOutputStream(temporary)) {
            output.write(iv);
            output.write(encrypted);
            output.getFD().sync();
        }
        if (file.exists() && !file.delete()) {
            temporary.delete();
            throw new java.io.IOException("Cannot replace encrypted local identity key");
        }
        if (!temporary.renameTo(file)) {
            temporary.delete();
            throw new java.io.IOException("Cannot finalize encrypted local identity key");
        }
    }

    public synchronized void useLocalAccount() {
        String uid = ensureLocalUid();
        prefs.edit().putString(KEY_ACTIVE, uid).putString(KEY_KIND, KIND_LOCAL).apply();
    }

    public synchronized void useSupabaseAccount(String supabaseUid) {
        if (supabaseUid == null || supabaseUid.trim().isEmpty()) {
            throw new IllegalArgumentException("Supabase user ID is required");
        }
        prefs.edit().putString(KEY_ACTIVE, supabaseUid).putString(KEY_KIND, KIND_SUPABASE).apply();
    }

    public boolean isSetupComplete() {
        return prefs.getBoolean(KEY_SETUP_COMPLETE, false);
    }

    public void markSetupComplete() {
        prefs.edit().putBoolean(KEY_SETUP_COMPLETE, true).apply();
    }

    /** Return to onboarding without deleting the local UID or any backup files. */
    public void resetSetup() {
        prefs.edit().putBoolean(KEY_SETUP_COMPLETE, false).apply();
    }
    public String getActiveUid() {
        String active = prefs.getString(KEY_ACTIVE, null);
        return active == null || active.trim().isEmpty() ? ensureLocalUid() : active;
    }

    public String getActiveKind() {
        getActiveUid();
        return prefs.getString(KEY_KIND, KIND_LOCAL);
    }

    public File getRootDirectory() {
        return new File(Environment.getExternalStorageDirectory(), "BΛR☰");
    }

    public File getAccountDirectory() {
        return getAccountDirectory(getActiveUid());
    }

    public File getAccountDirectory(String uid) {
        return new File(new File(getRootDirectory(), "accounts"), accountDirectoryName(uid));
    }

    /** Reference naming: MD5 of UID, first half of the hexadecimal digest. */
    public static String accountDirectoryName(String uid) {
        if (uid == null || uid.trim().isEmpty()) throw new IllegalArgumentException("UID is required");
        try {
            byte[] digest = MessageDigest.getInstance("MD5").digest(uid.getBytes(StandardCharsets.UTF_8));
            StringBuilder hex = new StringBuilder(32);
            for (byte b : digest) hex.append(String.format(Locale.ROOT, "%02x", b & 0xff));
            return hex.substring(0, 16);
        } catch (Exception error) {
            throw new IllegalStateException("MD5 is unavailable", error);
        }
    }

    /** Create only the account skeleton; never deletes or migrates existing backup data. */
    public synchronized File ensureAccountDirectories() throws java.io.IOException {
        File root = getRootDirectory();
        File account = getAccountDirectory();
        File[] directories = {
            root,
            new File(root, "accounts"),
            account,
            new File(account, "backups"),
            new File(account, "backups/apps"),
            new File(account, "backups/apps/local"),
            new File(account, "backups/apps/cloud"),
            new File(account, "backups/sms"),
            new File(account, "backups/sms/local"),
            new File(account, "backups/sms/cloud"),
            new File(account, "backups/calls"),
            new File(account, "backups/calls/local"),
            new File(account, "backups/calls/cloud"),
            new File(account, "backups/wifi"),
            new File(account, "backups/wifi/local"),
            new File(account, "backups/wifi/cloud"),
            new File(account, "backups/walls"),
            new File(account, "backups/walls/applied"),
            new File(account, "backups/walls/local"),
            new File(account, "backups/walls/cloud"),
            new File(account, "backups/folders"),
            new File(account, "backups/folders/local"),
            new File(account, "backups/folders/cloud"),
            new File(account, "cache"),
            new File(root, "icon_cache")
        };
        for (File directory : directories) {
            if (!directory.isDirectory() && !directory.mkdirs() && !directory.isDirectory()) {
                throw new java.io.IOException("Unable to create directory: " + directory.getAbsolutePath());
            }
        }
        File noMedia = new File(root, ".nomedia");
        if (!noMedia.exists() && !noMedia.createNewFile()) {
            throw new java.io.IOException("Unable to create .nomedia in " + root.getAbsolutePath());
        }
        return account;
    }
}
