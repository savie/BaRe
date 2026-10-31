package com.bareapps.barebackup.localaccount;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.SharedPreferences;
import android.os.Build;
import android.os.Environment;
import android.os.Process;
import android.security.keystore.KeyGenParameterSpec;
import android.security.keystore.KeyProperties;
import android.text.InputType;
import android.util.Base64;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;

import org.json.JSONObject;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.nio.charset.StandardCharsets;
import java.security.KeyStore;
import java.security.SecureRandom;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import java.util.UUID;

import javax.crypto.Cipher;
import javax.crypto.KeyGenerator;
import javax.crypto.SecretKey;
import javax.crypto.spec.GCMParameterSpec;
import javax.crypto.spec.SecretKeySpec;

public final class LocalAccountVault {
    private static final String PREFIX = "local-account-";
    private static final String PREF_ACTIVE = "local_account_session_active";
    private static final String PREF_INTRO = "local_signout_pending_intro";
    private static final int VERSION = 1;
    private static final int MAX_FILE_BYTES = 1024 * 1024;
    private static final int B64_FLAGS = Base64.URL_SAFE | Base64.NO_WRAP | Base64.NO_PADDING;

    private static volatile Object pendingUser;
    private static volatile boolean localSelectionPending;
    private static volatile boolean resolutionComplete;
    private static volatile boolean dialogOpen;
    private static volatile Activity dialogActivity;
    private static volatile Enrollment pendingEnrollment;

    private LocalAccountVault() {}

    public static Object getPendingUser() {
        return pendingUser;
    }

    public static boolean isIntroPending() {
        try {
            return prefs().getBoolean(PREF_INTRO, false);
        } catch (Throwable ignored) {
            return true;
        }
    }

    public static boolean hasPendingSelection() {
        return localSelectionPending;
    }

    public static boolean isLocalSessionInactive() {
        try {
            SharedPreferences preferences = prefs();
            return preferences.contains(PREF_ACTIVE) && !preferences.getBoolean(PREF_ACTIVE, false);
        } catch (Throwable ignored) {
            return true;
        }
    }

    public static boolean canCompleteIntro() {
        return !localSelectionPending || resolutionComplete;
    }

    public static boolean isCurrentUserLocal() {
        try {
            Object candidate = pendingUser;
            if (candidate != null) return isAnonymous(candidate);
            if (isIntroPending()) return true;
            Object current = Class.forName("d45").getMethod("a").invoke(null);
            return current != null && isAnonymous(current);
        } catch (Throwable ignored) {
            return false;
        }
    }

    public static boolean clearPendingIntro(Activity activity) {
        if (!writeMarkers(false, false)) {
            showError(activity, "Could not switch account",
                    "The account-selection state could not be saved. Google sign-in was not started.");
            return false;
        }
        pendingUser = null;
        pendingEnrollment = null;
        localSelectionPending = false;
        resolutionComplete = false;
        return true;
    }

    public static void selectLocal(Activity activity) {
        if (localSelectionPending) {
            onPermissionReturn(activity);
            return;
        }
        Object legacy = cachedLocalUser();
        try {
            pendingUser = legacy != null && isAnonymous(legacy) ? legacy : newLocalUser();
        } catch (Throwable error) {
            localSelectionPending = true;
            resolutionComplete = false;
            showError(activity, "Local Account unavailable",
                    "The Local Account identity could not be prepared. No account was created.");
            return;
        }
        localSelectionPending = true;
        resolutionComplete = false;
        if (!writeMarkers(false, true)) {
            showError(activity, "Local Account setup unavailable",
                    "The pending Intro state could not be saved. No Local Account was activated.");
        }
    }

    public static void onPermissionReturn(Activity activity) {
        if (!localSelectionPending || activity == null || activity.isFinishing()) return;
        if (!storagePermissionGranted(activity)) return;
        resolve(activity);
    }

    public static void signOut(Activity activity) {
        if (!writeSignOutMarkers()) {
            showError(activity, "Could not sign out safely",
                    "The Local Account session marker could not be saved. The application was not closed so the account is not silently reactivated.");
            return;
        }
        pendingUser = null;
        pendingEnrollment = null;
        localSelectionPending = false;
        resolutionComplete = false;
        if (activity != null) {
            try { activity.finishAffinity(); } catch (Throwable ignored) {}
            if (Build.VERSION.SDK_INT >= 21) {
                try { activity.finishAndRemoveTask(); } catch (Throwable ignored) {}
            }
        }
        Process.killProcess(Process.myPid());
        System.exit(0);
    }

    private static synchronized void resolve(Activity activity) {
        if (dialogOpen && (dialogActivity == null || dialogActivity.isFinishing() || dialogActivity != activity)) {
            clearDialogGate();
        }
        if (!localSelectionPending || resolutionComplete || dialogOpen) return;
        if (!storageReady(activity)) {
            showError(activity, "Storage unavailable",
                    "Grant the existing All Files Access permission and make sure shared storage is mounted. No Local Account was created.");
            return;
        }

        try {
            File root = rootDirectory();
            if (root.exists() && (!root.isDirectory() || !root.canRead())) {
                showError(activity, "Local Account storage error",
                        "The Local Account directory is not readable. No new account was created.");
                return;
            }

            File[] files = root.exists() ? root.listFiles() : new File[0];
            if (files == null) {
                showError(activity, "Local Account storage error",
                        "The Local Account directory could not be listed. No new account was created.");
                return;
            }

            Set<String> ids = new HashSet<>();
            boolean interruptedWrite = false;
            for (File file : files) {
                String name = file.getName();
                if (name.startsWith(PREFIX) && name.contains(".tmp-")) interruptedWrite = true;
                String id = candidateId(name);
                if (id != null) ids.add(id);
            }
            if (interruptedWrite) {
                showError(activity, "Local Account recovery required",
                        "An interrupted Local Account write was found. Resolve the existing vault files before creating another account.");
                return;
            }
            if (ids.size() > 1) {
                showError(activity, "Local Account conflict",
                        "More than one Local Account vault was found in " + root.getAbsolutePath()
                                + ". No account was selected or overwritten.");
                return;
            }

            if (ids.size() == 1) {
                String id = ids.iterator().next();
                File vaultFile = new File(root, PREFIX + id + ".vault");
                File recoveryFile = new File(root, PREFIX + id + ".recovery");
                if (!isDirectChild(root, vaultFile) || !isDirectChild(root, recoveryFile)
                        || (vaultFile.exists() && !vaultFile.isFile())
                        || (recoveryFile.exists() && !recoveryFile.isFile())) {
                    showError(activity, "Local Account storage conflict",
                            "A vault path is not a regular file inside the Local Account directory. No data was changed.");
                    return;
                }
                JSONObject vault = vaultFile.isFile() ? readEnvelope(vaultFile, id) : null;
                JSONObject recovery = recoveryFile.isFile() ? readEnvelope(recoveryFile, id) : null;
                if (vault == null && recovery == null) {
                    showError(activity, "Local Account vault is damaged",
                            "The existing Local Account files are missing or invalid. A new account will not be created automatically.");
                    return;
                }

                if (vault != null) {
                    Restored restored = restoreWithDeviceKey(vault, id);
                    if (restored != null) {
                        if (!matchesLegacyCache(restored.user)) {
                            showError(activity, "Local Account identity conflict",
                                    "The vault identity does not match the legacy Local Account cache. No data was changed.");
                            return;
                        }
                        if (!recoveryMatchesVault(recovery, vault, restored.uid)) {
                            JSONObject repairedRecovery = makeRecoveryEnvelopeFromVault(vault);
                            byte[] repairedBytes = repairedRecovery.toString().getBytes(StandardCharsets.UTF_8);
                            if (recoveryFile.exists()) replaceAtomically(recoveryFile, repairedBytes);
                            else writeAtomically(recoveryFile, repairedBytes);
                        }
                        activate(restored.user);
                        return;
                    }
                }

                JSONObject recoverySource = recovery != null ? recovery : vault;
                if (recoverySource == null || !recoverySource.has("recoveryWrappedDek")) {
                    showError(activity, "Local Account recovery unavailable",
                            "The device key is unavailable and no valid recovery artifact exists. The existing account was not replaced.");
                    return;
                }
                showRecoveryPrompt(activity, id, vaultFile, recoveryFile, recoverySource);
                return;
            }

            Object legacy = cachedLocalUser();
            Object user = legacy != null && isAnonymous(legacy) ? legacy : pendingUser;
            if (user == null) {
                user = newLocalUser();
                pendingUser = user;
            }
            if (!isAnonymous(user)) {
                showError(activity, "Local Account identity error",
                        "The selected identity is not a Local Account. No vault was written.");
                return;
            }
            if (pendingEnrollment == null) beginEnrollment(activity, user);
            else showRecoveryCode(activity, pendingEnrollment);
        } catch (Throwable error) {
            showError(activity, "Local Account storage error",
                    "The Local Account vault could not be inspected safely. No new identity was created.");
        }
    }

    private static boolean storageReady(Activity activity) {
        if (!storagePermissionGranted(activity)) return false;
        if (!Environment.MEDIA_MOUNTED.equals(Environment.getExternalStorageState())) return false;
        File root = rootDirectory();
        if (root.exists()) return root.isDirectory() && root.canRead() && root.canWrite();
        File ancestor = root;
        while (ancestor != null && !ancestor.exists()) ancestor = ancestor.getParentFile();
        return ancestor != null && ancestor.isDirectory() && ancestor.canWrite();
    }

    private static boolean storagePermissionGranted(Activity activity) {
        if (Build.VERSION.SDK_INT >= 30) return Environment.isExternalStorageManager();
        if (Build.VERSION.SDK_INT >= 23) {
            return activity.checkSelfPermission("android.permission.READ_EXTERNAL_STORAGE") == 0
                    && activity.checkSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE") == 0;
        }
        return true;
    }

    private static File rootDirectory() {
        return new File("/storage/emulated/0/BΛR☰/accounts");
    }

    private static boolean isDirectChild(File root, File child) {
        try {
            File canonicalRoot = root.getCanonicalFile();
            File canonicalParent = child.getCanonicalFile().getParentFile();
            return canonicalRoot.equals(canonicalParent);
        } catch (Throwable ignored) {
            return false;
        }
    }

    private static String candidateId(String name) {
        if (!name.startsWith(PREFIX)) return null;
        String suffix;
        if (name.endsWith(".vault")) suffix = ".vault";
        else if (name.endsWith(".recovery")) suffix = ".recovery";
        else return null;
        String id = name.substring(PREFIX.length(), name.length() - suffix.length());
        try {
            return UUID.fromString(id).toString().equalsIgnoreCase(id) ? id : null;
        } catch (Throwable ignored) {
            return null;
        }
    }

    private static JSONObject readEnvelope(File file, String expectedId) {
        try {
            if (!file.isFile() || !file.canRead() || file.length() <= 0 || file.length() > MAX_FILE_BYTES) return null;
            JSONObject value = new JSONObject(new String(readBytes(file), StandardCharsets.UTF_8));
            if (value.getInt("schemaVersion") != VERSION) return null;
            if (!expectedId.equals(value.getString("localAccountId"))) return null;
            if (value.getString("legacyUid").length() == 0) return null;
            if (!"AES-256-GCM".equals(value.getString("algorithm"))) return null;
            if (!value.has("payloadCiphertext") || !value.has("recoveryWrappedDek")) return null;
            return value;
        } catch (Throwable ignored) {
            return null;
        }
    }

    private static Restored restoreWithDeviceKey(JSONObject envelope, String id) {
        try {
            String alias = envelope.getString("deviceKeyAlias");
            SecretKey key = loadDeviceKey(alias);
            if (key == null) return null;
            byte[] dek = decrypt(key, decode(envelope.getString("deviceWrappedDek")),
                    aad(id, "device:" + alias));
            byte[] payload = decrypt(new SecretKeySpec(dek, "AES"),
                    decode(envelope.getString("payloadCiphertext")), aad(id, "payload"));
            Restored restored = parsePayload(payload, id);
            if (!envelope.getString("legacyUid").equals(restored.uid)) return null;
            return restored;
        } catch (Throwable ignored) {
            return null;
        }
    }

    private static void showRecoveryPrompt(final Activity activity, final String id,
                                           final File vaultFile, final File recoveryFile,
                                           final JSONObject source) {
        if (activity == null || activity.isFinishing()) return;
        final EditText input = new EditText(activity);
        input.setSingleLine(true);
        input.setInputType(InputType.TYPE_CLASS_TEXT | InputType.TYPE_TEXT_VARIATION_VISIBLE_PASSWORD | InputType.TYPE_TEXT_FLAG_NO_SUGGESTIONS);
        input.setHint("Recovery code");
        new AlertDialog.Builder(activity)
                .setTitle("Recover Local Account")
                .setMessage("The device key is unavailable. Enter the recovery code saved during Local Account setup.")
                .setView(input)
                .setPositiveButton("Recover", new DialogInterface.OnClickListener() {
                    @Override public void onClick(DialogInterface dialog, int which) {
                        clearDialogGate();
                        try {
                            recoverFromCode(activity, id, vaultFile, recoveryFile, source, input.getText().toString());
                        } catch (Throwable error) {
                            toast(activity, "Recovery code is invalid or the recovery artifact is damaged.");
                            showRecoveryPrompt(activity, id, vaultFile, recoveryFile, source);
                        }
                    }
                })
                .setNegativeButton("Cancel Local setup", new DialogInterface.OnClickListener() {
                    @Override public void onClick(DialogInterface dialog, int which) {
                        clearDialogGate();
                        cancelPendingSelection();
                    }
                })
                .setCancelable(false)
                .show();
        dialogOpen = true;
        dialogActivity = activity;
        dialogActivity = activity;
    }

    private static synchronized void recoverFromCode(Activity activity, String id, File vaultFile,
                                        File recoveryFile, JSONObject source, String suppliedCode) throws Exception {
        String normalized = suppliedCode == null ? "" : suppliedCode.replaceAll("\\s", "");
        byte[] recoveryBytes = decode(normalized);
        if (recoveryBytes.length != 32) throw new SecurityException("Invalid recovery code");
        SecretKey recoveryKey = new SecretKeySpec(recoveryBytes, "AES");
        byte[] dek = decrypt(recoveryKey, decode(source.getString("recoveryWrappedDek")),
                aad(id, "recovery"));
        byte[] payload = decrypt(new SecretKeySpec(dek, "AES"),
                decode(source.getString("payloadCiphertext")), aad(id, "payload"));
        Restored restored = parsePayload(payload, id);
        if (!source.getString("legacyUid").equals(restored.uid)) throw new SecurityException("Legacy UID mismatch");
        if (!matchesLegacyCache(restored.user)) {
            showError(activity, "Local Account identity conflict",
                    "The recovery artifact does not match the existing Local Account cache. No data was changed.");
            return;
        }

        String alias = "bare_local_vault_" + id.replace("-", "") + "_" + UUID.randomUUID().toString().replace("-", "");
        SecretKey deviceKey = createDeviceKey(alias);
        JSONObject updatedVault = makeVaultEnvelope(id, restored.uid, alias, dek, payload,
                deviceKey, recoveryBytes);
        JSONObject updatedRecovery = makeRecoveryEnvelope(id, restored.uid, payload, dek, recoveryBytes);
        replaceAtomically(vaultFile, updatedVault.toString().getBytes(StandardCharsets.UTF_8));
        JSONObject persistedVault = readEnvelope(vaultFile, id);
        JSONObject oldRecovery = recoveryFile.exists() ? readEnvelope(recoveryFile, id) : null;
        if (!recoveryMatchesVault(oldRecovery, persistedVault, restored.uid)) {
            if (recoveryFile.exists()) replaceAtomically(recoveryFile, updatedRecovery.toString().getBytes(StandardCharsets.UTF_8));
            else writeAtomically(recoveryFile, updatedRecovery.toString().getBytes(StandardCharsets.UTF_8));
        }
        Restored verified = restoreWithDeviceKey(readEnvelope(vaultFile, id), id);
        if (verified == null || !restored.uid.equals(verified.uid)
                || !recoveryMatchesVault(readEnvelope(recoveryFile, id), readEnvelope(vaultFile, id), restored.uid)) {
            throw new SecurityException("Recovered vault verification failed");
        }
        activate(restored.user);
        toast(activity, "Local Account restored. Vault location: /storage/emulated/0/BΛR☰/accounts");
    }

    private static void beginEnrollment(Activity activity, Object user) throws Exception {
        byte[] dek = randomBytes(32);
        byte[] recovery = randomBytes(32);
        String code = Base64.encodeToString(recovery, B64_FLAGS);
        pendingEnrollment = new Enrollment(user, UUID.randomUUID().toString(), dek, recovery, code);
        showRecoveryCode(activity, pendingEnrollment);
    }

    private static void showRecoveryCode(final Activity activity, final Enrollment enrollment) {
        if (activity == null || activity.isFinishing()) return;
        TextView codeView = new TextView(activity);
        codeView.setText(enrollment.code);
        codeView.setTextIsSelectable(true);
        int pad = (int) (24 * activity.getResources().getDisplayMetrics().density);
        codeView.setPadding(pad, pad, pad, pad);
        new AlertDialog.Builder(activity)
                .setTitle("Save your Local Account recovery code")
                .setMessage("This code is shown only during setup. Long-press the code to copy it and keep it somewhere safe. The recovery artifact will be saved as " + PREFIX + enrollment.id + ".recovery under /storage/emulated/0/BΛR☰/accounts. It is not your backup Password Strategy password.")
                .setView(codeView)
                .setPositiveButton("I saved it", new DialogInterface.OnClickListener() {
                    @Override public void onClick(DialogInterface dialog, int which) {
                        clearDialogGate();
                        confirmRecoveryCode(activity, enrollment);
                    }
                })
                .setNegativeButton("Cancel Local setup", new DialogInterface.OnClickListener() {
                    @Override public void onClick(DialogInterface dialog, int which) {
                        clearDialogGate();
                        cancelPendingSelection();
                    }
                })
                .setCancelable(false)
                .show();
        dialogOpen = true;
        dialogActivity = activity;
    }

    private static void confirmRecoveryCode(final Activity activity, final Enrollment enrollment) {
        final EditText input = new EditText(activity);
        input.setSingleLine(true);
        input.setInputType(InputType.TYPE_CLASS_TEXT | InputType.TYPE_TEXT_VARIATION_VISIBLE_PASSWORD | InputType.TYPE_TEXT_FLAG_NO_SUGGESTIONS);
        input.setHint("Enter the recovery code");
        new AlertDialog.Builder(activity)
                .setTitle("Confirm recovery code")
                .setMessage("Enter the code again before the Local Account vault is created.")
                .setView(input)
                .setPositiveButton("Confirm", new DialogInterface.OnClickListener() {
                    @Override public void onClick(DialogInterface dialog, int which) {
                        clearDialogGate();
                        if (!enrollment.code.equals(input.getText().toString().replaceAll("\\s", ""))) {
                            toast(activity, "Recovery code did not match. Save and confirm the code to continue.");
                            showRecoveryCode(activity, enrollment);
                            return;
                        }
                        try {
                            commitEnrollment(activity, enrollment);
                        } catch (Throwable error) {
                            showError(activity, "Local Account setup failed",
                                    "The encrypted vault could not be committed and verified. No Local Account was activated.");
                        }
                    }
                })
                .setNegativeButton("Cancel Local setup", new DialogInterface.OnClickListener() {
                    @Override public void onClick(DialogInterface dialog, int which) {
                        clearDialogGate();
                        cancelPendingSelection();
                    }
                })
                .setCancelable(false)
                .show();
        dialogOpen = true;
        dialogActivity = activity;
    }

    private static synchronized void commitEnrollment(Activity activity, Enrollment enrollment) throws Exception {
        File root = rootDirectory();
        if (!root.exists() && !root.mkdirs()) throw new IllegalStateException("Cannot create vault directory");
        if (!root.isDirectory() || !root.canRead() || !root.canWrite()) throw new IllegalStateException("Vault directory unavailable");

        String uid = getUid(enrollment.user);
        String alias = "bare_local_vault_" + enrollment.id.replace("-", "") + "_" + UUID.randomUUID().toString().replace("-", "");
        SecretKey deviceKey = createDeviceKey(alias);
        byte[] payload = makePayload(enrollment.id, uid, enrollment.user);
        JSONObject vault = makeVaultEnvelope(enrollment.id, uid, alias, enrollment.dek,
                payload, deviceKey, enrollment.recovery);
        JSONObject recovery = makeRecoveryEnvelope(enrollment.id, uid, payload,
                enrollment.dek, enrollment.recovery);

        byte[] deviceCheck = decrypt(deviceKey, decode(vault.getString("deviceWrappedDek")),
                aad(enrollment.id, "device:" + alias));
        byte[] payloadCheck = decrypt(new SecretKeySpec(deviceCheck, "AES"),
                decode(vault.getString("payloadCiphertext")), aad(enrollment.id, "payload"));
        parsePayload(payloadCheck, enrollment.id);
        byte[] recoveryCheck = decrypt(new SecretKeySpec(enrollment.recovery, "AES"),
                decode(recovery.getString("recoveryWrappedDek")), aad(enrollment.id, "recovery"));
        decrypt(new SecretKeySpec(recoveryCheck, "AES"),
                decode(recovery.getString("payloadCiphertext")), aad(enrollment.id, "payload"));

        File vaultFile = new File(root, PREFIX + enrollment.id + ".vault");
        File recoveryFile = new File(root, PREFIX + enrollment.id + ".recovery");
        writePairAtomically(vaultFile, vault.toString().getBytes(StandardCharsets.UTF_8),
                recoveryFile, recovery.toString().getBytes(StandardCharsets.UTF_8));
        Restored persisted = restoreWithDeviceKey(readEnvelope(vaultFile, enrollment.id), enrollment.id);
        JSONObject persistedRecovery = readEnvelope(recoveryFile, enrollment.id);
        if (persisted == null || persistedRecovery == null
                || !uid.equals(persisted.uid)) {
            vaultFile.delete();
            recoveryFile.delete();
            throw new SecurityException("Post-write vault verification failed");
        }
        byte[] persistedDek = decrypt(new SecretKeySpec(enrollment.recovery, "AES"),
                decode(persistedRecovery.getString("recoveryWrappedDek")), aad(enrollment.id, "recovery"));
        parsePayload(decrypt(new SecretKeySpec(persistedDek, "AES"),
                decode(persistedRecovery.getString("payloadCiphertext")), aad(enrollment.id, "payload")), enrollment.id);
        activate(enrollment.user);
        pendingEnrollment = null;
        toast(activity, "Local Account vault saved to /storage/emulated/0/BΛR☰/accounts");
    }

    private static JSONObject makeVaultEnvelope(String id, String uid, String alias,
                                                byte[] dek, byte[] payload, SecretKey deviceKey,
                                                byte[] recoveryBytes) throws Exception {
        JSONObject value = new JSONObject();
        value.put("schemaVersion", VERSION);
        value.put("localAccountId", id);
        value.put("legacyUid", uid);
        value.put("deviceKeyAlias", alias);
        value.put("algorithm", "AES-256-GCM");
        value.put("payloadCiphertext", encode(encrypt(new SecretKeySpec(dek, "AES"), payload, aad(id, "payload"))));
        value.put("deviceWrappedDek", encode(encrypt(deviceKey, dek, aad(id, "device:" + alias))));
        value.put("recoveryWrappedDek", encode(encrypt(new SecretKeySpec(recoveryBytes, "AES"), dek, aad(id, "recovery"))));
        return value;
    }

    private static boolean recoveryMatchesVault(JSONObject recovery, JSONObject vault, String uid) {
        if (recovery == null || vault == null) return false;
        try {
            return uid.equals(recovery.getString("legacyUid"))
                    && vault.getString("localAccountId").equals(recovery.getString("localAccountId"))
                    && vault.getString("payloadCiphertext").equals(recovery.getString("payloadCiphertext"))
                    && vault.getString("recoveryWrappedDek").equals(recovery.getString("recoveryWrappedDek"));
        } catch (Throwable ignored) {
            return false;
        }
    }

    private static JSONObject makeRecoveryEnvelopeFromVault(JSONObject vault) throws Exception {
        JSONObject recovery = new JSONObject();
        recovery.put("schemaVersion", vault.getInt("schemaVersion"));
        recovery.put("localAccountId", vault.getString("localAccountId"));
        recovery.put("legacyUid", vault.getString("legacyUid"));
        recovery.put("algorithm", vault.getString("algorithm"));
        recovery.put("payloadCiphertext", vault.getString("payloadCiphertext"));
        recovery.put("recoveryWrappedDek", vault.getString("recoveryWrappedDek"));
        return recovery;
    }

    private static JSONObject makeRecoveryEnvelope(String id, String uid, byte[] payload,
                                                   byte[] dek, byte[] recoveryBytes) throws Exception {
        JSONObject value = new JSONObject();
        value.put("schemaVersion", VERSION);
        value.put("localAccountId", id);
        value.put("legacyUid", uid);
        value.put("algorithm", "AES-256-GCM");
        value.put("payloadCiphertext", encode(encrypt(new SecretKeySpec(dek, "AES"), payload, aad(id, "payload"))));
        value.put("recoveryWrappedDek", encode(encrypt(new SecretKeySpec(recoveryBytes, "AES"), dek, aad(id, "recovery"))));
        return value;
    }

    private static byte[] makePayload(String id, String uid, Object user) throws Exception {
        JSONObject payload = new JSONObject();
        payload.put("schemaVersion", VERSION);
        payload.put("localAccountId", id);
        payload.put("legacyUid", uid);
        payload.put("userJson", serializeUser(user));
        return payload.toString().getBytes(StandardCharsets.UTF_8);
    }

    private static Restored parsePayload(byte[] bytes, String expectedId) throws Exception {
        JSONObject payload = new JSONObject(new String(bytes, StandardCharsets.UTF_8));
        if (payload.getInt("schemaVersion") != VERSION) throw new SecurityException("Unsupported vault version");
        String id = payload.getString("localAccountId");
        String uid = payload.getString("legacyUid");
        if (!expectedId.equals(id)) throw new SecurityException("LocalAccountId mismatch");
        Object user = deserializeUser(payload.getString("userJson"));
        if (!uid.equals(getUid(user)) || !isAnonymous(user)) throw new SecurityException("Identity payload mismatch");
        return new Restored(user, id, uid);
    }

    private static boolean matchesLegacyCache(Object restoredUser) throws Exception {
        Object cached = cachedLocalUser();
        if (cached == null || !isAnonymous(cached)) return true;
        return getUid(cached).equals(getUid(restoredUser));
    }

    private static void activate(Object user) throws Exception {
        setCachedLocalUser(user);
        if (!writeMarkers(true, false)) throw new IllegalStateException("Session marker commit failed");
        pendingUser = null;
        pendingEnrollment = null;
        localSelectionPending = false;
        resolutionComplete = true;
        notifyAccountObservers();
    }

    private static SecretKey createDeviceKey(String alias) throws Exception {
        KeyStore store = KeyStore.getInstance("AndroidKeyStore");
        store.load(null);
        if (store.containsAlias(alias)) store.deleteEntry(alias);
        KeyGenerator generator = KeyGenerator.getInstance(KeyProperties.KEY_ALGORITHM_AES, "AndroidKeyStore");
        KeyGenParameterSpec spec = new KeyGenParameterSpec.Builder(alias,
                KeyProperties.PURPOSE_ENCRYPT | KeyProperties.PURPOSE_DECRYPT)
                .setKeySize(256)
                .setBlockModes(KeyProperties.BLOCK_MODE_GCM)
                .setEncryptionPaddings(KeyProperties.ENCRYPTION_PADDING_NONE)
                .build();
        generator.init(spec);
        generator.generateKey();
        return (SecretKey) store.getKey(alias, null);
    }

    private static SecretKey loadDeviceKey(String alias) throws Exception {
        KeyStore store = KeyStore.getInstance("AndroidKeyStore");
        store.load(null);
        if (!store.containsAlias(alias)) return null;
        return (SecretKey) store.getKey(alias, null);
    }

    private static byte[] encrypt(SecretKey key, byte[] plain, byte[] aad) throws Exception {
        Cipher cipher = Cipher.getInstance("AES/GCM/NoPadding");
        cipher.init(Cipher.ENCRYPT_MODE, key);
        cipher.updateAAD(aad);
        byte[] encrypted = cipher.doFinal(plain);
        byte[] iv = cipher.getIV();
        byte[] result = new byte[iv.length + encrypted.length];
        System.arraycopy(iv, 0, result, 0, iv.length);
        System.arraycopy(encrypted, 0, result, iv.length, encrypted.length);
        return result;
    }

    private static byte[] decrypt(SecretKey key, byte[] combined, byte[] aad) throws Exception {
        if (combined == null || combined.length < 28) throw new SecurityException("Invalid AES-GCM envelope");
        byte[] iv = new byte[12];
        byte[] encrypted = new byte[combined.length - 12];
        System.arraycopy(combined, 0, iv, 0, 12);
        System.arraycopy(combined, 12, encrypted, 0, encrypted.length);
        Cipher cipher = Cipher.getInstance("AES/GCM/NoPadding");
        cipher.init(Cipher.DECRYPT_MODE, key, new GCMParameterSpec(128, iv));
        cipher.updateAAD(aad);
        return cipher.doFinal(encrypted);
    }

    private static byte[] aad(String id, String purpose) {
        return ("BARE-LOCAL-VAULT|" + VERSION + "|" + id + "|" + purpose).getBytes(StandardCharsets.UTF_8);
    }

    private static byte[] randomBytes(int count) {
        byte[] bytes = new byte[count];
        new SecureRandom().nextBytes(bytes);
        return bytes;
    }

    private static byte[] decode(String value) {
        return Base64.decode(value, B64_FLAGS);
    }

    private static String encode(byte[] value) {
        return Base64.encodeToString(value, B64_FLAGS);
    }

    private static byte[] readBytes(File file) throws Exception {
        if (file.length() > MAX_FILE_BYTES) throw new IllegalStateException("Vault file too large");
        ByteArrayOutputStream output = new ByteArrayOutputStream();
        FileInputStream input = new FileInputStream(file);
        try {
            byte[] buffer = new byte[8192];
            int count;
            while ((count = input.read(buffer)) != -1) output.write(buffer, 0, count);
        } finally {
            input.close();
        }
        return output.toByteArray();
    }

    private static void writePairAtomically(File vault, byte[] vaultBytes,
                                            File recovery, byte[] recoveryBytes) throws Exception {
        if (vault.exists() || recovery.exists()) throw new IllegalStateException("Vault target already exists");
        File vaultTemp = new File(vault.getParentFile(), vault.getName() + ".tmp-" + UUID.randomUUID());
        File recoveryTemp = new File(recovery.getParentFile(), recovery.getName() + ".tmp-" + UUID.randomUUID());
        boolean recoveryCommitted = false;
        try {
            writeTemp(vaultTemp, vaultBytes);
            writeTemp(recoveryTemp, recoveryBytes);
            if (!recoveryTemp.renameTo(recovery)) throw new IllegalStateException("Recovery artifact commit failed");
            recoveryCommitted = true;
            if (!vaultTemp.renameTo(vault)) throw new IllegalStateException("Vault commit failed");
        } catch (Throwable error) {
            vaultTemp.delete();
            recoveryTemp.delete();
            if (recoveryCommitted) recovery.delete();
            throw error;
        }
    }

    private static void writeAtomically(File target, byte[] bytes) throws Exception {
        if (target.exists()) throw new IllegalStateException("Target already exists");
        File temp = new File(target.getParentFile(), target.getName() + ".tmp-" + UUID.randomUUID());
        try {
            writeTemp(temp, bytes);
            if (!temp.renameTo(target)) throw new IllegalStateException("Atomic rename failed");
        } finally {
            if (temp.exists()) temp.delete();
        }
    }

    private static void replaceAtomically(File target, byte[] bytes) throws Exception {
        File backup = new File(target.getParentFile(), target.getName() + ".bak-" + UUID.randomUUID());
        boolean hadOld = target.exists();
        if (hadOld && !target.renameTo(backup)) throw new IllegalStateException("Cannot preserve previous vault");
        try {
            writeAtomically(target, bytes);
            if (hadOld) backup.delete();
        } catch (Throwable error) {
            if (target.exists()) target.delete();
            if (hadOld) backup.renameTo(target);
            throw error;
        }
    }

    private static void writeTemp(File file, byte[] bytes) throws Exception {
        FileOutputStream output = new FileOutputStream(file);
        try {
            output.write(bytes);
            output.flush();
            output.getFD().sync();
        } finally {
            output.close();
        }
    }

    private static Object newLocalUser() throws Exception {
        Class<?> type = Class.forName("com.bareapps.barebackup.anonymous.MFirebaseUser");
        Constructor<?> constructor = type.getConstructor(String.class, String.class, boolean.class,
                String.class, String.class, java.util.List.class, String.class);
        String uid = UUID.randomUUID().toString().replace("-", "");
        return constructor.newInstance(uid, "anonymous@barebackup.app", true,
                "Anonymous user", null, Collections.emptyList(), "anonymous");
    }

    private static String serializeUser(Object user) throws Exception {
        Class<?> helper = Class.forName("w14");
        Object gson = helper.getMethod("c").invoke(null);
        return (String) gson.getClass().getMethod("i", Object.class).invoke(gson, user);
    }

    private static Object deserializeUser(String json) throws Exception {
        Class<?> helper = Class.forName("w14");
        Object gson = helper.getMethod("c").invoke(null);
        Class<?> userType = Class.forName("com.bareapps.barebackup.anonymous.MFirebaseUser");
        return gson.getClass().getMethod("c", String.class, Class.class).invoke(gson, json, userType);
    }

    private static String getUid(Object user) throws Exception {
        return (String) user.getClass().getMethod("getUid").invoke(user);
    }

    private static boolean isAnonymous(Object user) throws Exception {
        return ((Boolean) user.getClass().getMethod("isAnonymous").invoke(user)).booleanValue();
    }

    private static Object cachedLocalUser() {
        try {
            Class<?> type = Class.forName("com.bareapps.barebackup.common.V");
            Object instance = type.getField("INSTANCE").get(null);
            return type.getMethod("getNon").invoke(instance);
        } catch (Throwable ignored) {
            return null;
        }
    }

    private static void setCachedLocalUser(Object user) throws Exception {
        Class<?> type = Class.forName("com.bareapps.barebackup.common.V");
        Object instance = type.getField("INSTANCE").get(null);
        Class<?> userType = Class.forName("com.bareapps.barebackup.anonymous.MFirebaseUser");
        type.getMethod("setNon", userType).invoke(instance, user);
    }

    private static SharedPreferences prefs() throws Exception {
        Class<?> type = Class.forName("cz4");
        Field field = type.getDeclaredField("f");
        field.setAccessible(true);
        return (SharedPreferences) field.get(null);
    }

    private static boolean writeSignOutMarkers() {
        try {
            SharedPreferences preferences = prefs();
            return preferences.edit()
                    .putBoolean(PREF_ACTIVE, false)
                    .putBoolean(PREF_INTRO, true)
                    .putBoolean("KEY_FIRST_START", true)
                    .putBoolean("KEY_FIRST_RUN_CLOUD_RESTORE_COMPLETED", false)
                    .commit();
        } catch (Throwable ignored) {
            return false;
        }
    }

    private static boolean writeMarkers(boolean active, boolean introPending) {
        try {
            SharedPreferences preferences = prefs();
            return preferences.edit()
                    .putBoolean(PREF_ACTIVE, active)
                    .putBoolean(PREF_INTRO, introPending)
                    .commit();
        } catch (Throwable ignored) {
            return false;
        }
    }

    private static void cancelPendingSelection() {
        if (!writeSignOutMarkers()) return;
        pendingUser = null;
        pendingEnrollment = null;
        localSelectionPending = false;
        resolutionComplete = false;
        try { notifyAccountObservers(); } catch (Throwable ignored) {}
    }

    private static void notifyAccountObservers() throws Exception {
        Class<?> type = Class.forName("d45");
        Object singleton = type.getField("b").get(null);
        type.getMethod("b").invoke(singleton);
    }

    private static void clearDialogGate() {
        dialogOpen = false;
        dialogActivity = null;
    }

    private static void toast(Activity activity, String message) {
        try { Toast.makeText(activity, message, Toast.LENGTH_LONG).show(); } catch (Throwable ignored) {}
    }

    private static void showError(final Activity activity, String title, String message) {
        if (activity == null || activity.isFinishing()) return;
        try {
            new AlertDialog.Builder(activity)
                    .setTitle(title)
                    .setMessage(message)
                    .setPositiveButton("Cancel Local setup", new DialogInterface.OnClickListener() {
                        @Override public void onClick(DialogInterface dialog, int which) {
                            clearDialogGate();
                            cancelPendingSelection();
                        }
                    })
                    .setCancelable(false)
                    .show();
            dialogOpen = true;
        dialogActivity = activity;
        } catch (Throwable ignored) {
            clearDialogGate();
            toast(activity, message);
        }
    }

    private static final class Enrollment {
        final Object user;
        final String id;
        final byte[] dek;
        final byte[] recovery;
        final String code;
        Enrollment(Object user, String id, byte[] dek, byte[] recovery, String code) {
            this.user = user;
            this.id = id;
            this.dek = dek;
            this.recovery = recovery;
            this.code = code;
        }
    }

    private static final class Restored {
        final Object user;
        final String id;
        final String uid;
        Restored(Object user, String id, String uid) {
            this.user = user;
            this.id = id;
            this.uid = uid;
        }
    }
}
