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
        try {
            identityStore = new SecureSessionStore(app, "bare_local_identity_secure", "bare_local_identity_v1");
        } catch (Exception error) {
            throw new IllegalStateException("Unable to initialize encrypted local account identity storage", error);
        }
    }

    public synchronized String ensureLocalUid() {
        String uid = null;

        // The encrypted shared-storage marker survives app-data clearing and reinstall.
        // It is encrypted with a device/app-scoped key so the raw UID is not stored in clear text.
        try {
            uid = readPortableIdentity();
        } catch (Exception error) {
            // A marker can outlive the app's Keystore state across uninstall/reinstall or device
            // restore. Never crash startup because of stale external state. Continue to the
            // app-private encrypted/legacy stores; if neither has the UID, mint a new UID and
            // atomically replace the unreadable marker below. Existing account folders are untouched.
            android.util.Log.w("BaReAccount",
                    "Portable local identity is unreadable; recovering without crashing", error);
        }

        if (uid == null || uid.trim().isEmpty()) {
            try {
                uid = identityStore.get(KEY_UID);
            } catch (Exception error) {
                uid = prefs.getString(KEY_UID, null);
                if (uid == null || uid.trim().isEmpty()) {
                    // After uninstall/reinstall Android Keystore may no longer have the old key,
                    // while the app-private encrypted preference is gone. Recover instead of
                    // crashing; a portable marker (when readable) was checked first above.
                    android.util.Log.w("BaReAccount",
                            "App-private local identity is unavailable; creating a recoverable identity", error);
                }
            }
        }

        if (uid == null || uid.trim().isEmpty()) {
            uid = prefs.getString(KEY_UID, null);
        }
        if (uid == null || uid.trim().isEmpty()) {
            uid = UUID.randomUUID().toString();
        }

        try {
            identityStore.put(KEY_UID, uid);
            prefs.edit().remove(KEY_UID).apply();
        } catch (Exception error) {
            // Keep legacy fallback only if secure storage is temporarily unavailable.
            prefs.edit().putString(KEY_UID, uid).apply();
            android.util.Log.w("BaReAccount", "Could not encrypt local UID; retained existing identity", error);
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
        byte[] packed = new byte[(int) file.length()];
        if (packed.length < 29 || packed.length > 4096) {
            throw new IllegalStateException("Portable local identity marker has an invalid size");
        }
        try (FileInputStream input = new FileInputStream(file)) {
            int offset = 0;
            while (offset < packed.length) {
                int count = input.read(packed, offset, packed.length - offset);
                if (count < 0) throw new java.io.IOException("Unexpected end of local identity marker");
                offset += count;
            }
        }
        byte[] iv = Arrays.copyOfRange(packed, 0, 12);
        byte[] ciphertext = Arrays.copyOfRange(packed, 12, packed.length);
        Cipher cipher = Cipher.getInstance("AES/GCM/NoPadding");
        cipher.init(Cipher.DECRYPT_MODE, new SecretKeySpec(portableIdentityKey(), "AES"),
                new GCMParameterSpec(128, iv));
        String uid = new String(cipher.doFinal(ciphertext), StandardCharsets.UTF_8);
        if (uid.trim().isEmpty()) throw new IllegalStateException("Portable local identity marker is empty");
        return uid;
    }

    private void writePortableIdentity(String uid) throws Exception {
        File file = getPortableIdentityFile();
        File parent = file.getParentFile();
        if (!parent.isDirectory() && !parent.mkdirs() && !parent.isDirectory()) {
            throw new java.io.IOException("Cannot create portable identity directory");
        }
        Cipher cipher = Cipher.getInstance("AES/GCM/NoPadding");
        cipher.init(Cipher.ENCRYPT_MODE, new SecretKeySpec(portableIdentityKey(), "AES"));
        byte[] ciphertext = cipher.doFinal(uid.getBytes(StandardCharsets.UTF_8));
        byte[] iv = cipher.getIV();
        byte[] packed = new byte[iv.length + ciphertext.length];
        System.arraycopy(iv, 0, packed, 0, iv.length);
        System.arraycopy(ciphertext, 0, packed, iv.length, ciphertext.length);

        File temporary = new File(parent, file.getName() + ".tmp");
        try (FileOutputStream output = new FileOutputStream(temporary)) {
            output.write(packed);
            output.getFD().sync();
        }
        if (file.exists() && !file.delete()) {
            temporary.delete();
            throw new java.io.IOException("Cannot replace portable local identity marker");
        }
        if (!temporary.renameTo(file)) {
            temporary.delete();
            throw new java.io.IOException("Cannot finalize portable local identity marker");
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
