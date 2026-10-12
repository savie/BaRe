package com.bareapps.barebackup.model.account;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Environment;

import com.bareapps.barebackup.model.supabase.SecureSessionStore;

import java.io.File;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
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
        boolean secureReadSucceeded = true;
        try {
            uid = identityStore.get(KEY_UID);
        } catch (Exception error) {
            secureReadSucceeded = false;
            uid = prefs.getString(KEY_UID, null);
            if (uid == null || uid.trim().isEmpty()) {
                // Never silently rotate an identity if encrypted data exists but cannot be decrypted.
                throw new IllegalStateException("Cannot decrypt saved local account UID; refusing to create a different account identity", error);
            }
        }
        if (!secureReadSucceeded || uid == null || uid.trim().isEmpty()) {
            String legacyUid = prefs.getString(KEY_UID, null);
            if (legacyUid != null && !legacyUid.trim().isEmpty()) uid = legacyUid;
            if (uid == null || uid.trim().isEmpty()) uid = UUID.randomUUID().toString();
            try {
                identityStore.put(KEY_UID, uid);
                prefs.edit().remove(KEY_UID).apply();
            } catch (Exception error) {
                // Keep the same UID as a recoverable fallback; retry encryption on the next launch.
                prefs.edit().putString(KEY_UID, uid).apply();
                android.util.Log.w("BaReAccount", "Could not encrypt local UID; retained existing identity", error);
            }
        } else if (prefs.contains(KEY_UID)) {
            prefs.edit().remove(KEY_UID).apply();
        }
        if (prefs.getString(KEY_ACTIVE, null) == null) {
            prefs.edit().putString(KEY_ACTIVE, uid).putString(KEY_KIND, KIND_LOCAL).apply();
        }
        return uid;
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
