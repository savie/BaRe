package com.bareapps.barebackup.localaccount;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.provider.Settings;
import android.content.SharedPreferences;
import android.graphics.Typeface;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.util.TypedValue;
import android.os.Build;
import android.os.Environment;
import android.os.Process;
import android.security.keystore.KeyGenParameterSpec;
import android.security.keystore.KeyProperties;
import android.text.InputType;
import android.util.Base64;
import android.view.Gravity;
import android.view.View;
import android.widget.EditText;
import android.widget.LinearLayout;
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
        Object candidate = pendingUser;
        if (candidate != null) {
            try { return isAnonymous(candidate); } catch (Throwable ignored) { return true; }
        }
        if (isIntroPending()) return true;
        if (isLocalSessionInactive()) return false;
        try {
            Object current = Class.forName("d45").getMethod("a").invoke(null);
            return current != null && isAnonymous(current);
        } catch (Throwable ignored) {
            Object cached = cachedLocalUser();
            try { return cached != null && isAnonymous(cached); } catch (Throwable ignoredAgain) { return true; }
        }
    }

    public static boolean clearPendingIntro(Activity activity) {
        if (!writeMarkers(false, false)) {
            showError(activity, "Couldn't save your account choice",
                    "Your account choice couldn't be saved. Please try again.");
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
            showError(activity, "Couldn't set up a Local Account",
                    "BΛR☰ couldn't prepare your account. Nothing was changed. Please try again.");
            return;
        }
        localSelectionPending = true;
        resolutionComplete = false;
        if (!writeMarkers(false, true)) {
            showError(activity, "Couldn't continue setup",
                    "Your account setup couldn't be saved. No account was activated. Please try again.");
        }
    }

    public static void onPermissionReturn(Activity activity) {
        if (!localSelectionPending || activity == null || activity.isFinishing()) return;
        if (!storagePermissionGranted(activity)) {
            requestStoragePermission(activity);
            return;
        }
        resolve(activity);
    }

    private static void requestStoragePermission(final Activity activity) {
        if (activity == null || activity.isFinishing() || dialogOpen) return;
        if (Build.VERSION.SDK_INT >= 30) {
            themedDialogBuilder(activity)
                    .setTitle("Allow access to your saved account")
                    .setMessage("BΛR☰ needs access to the files it uses to keep your Local Account safe. Allow access in Android settings to continue.")
                    .setPositiveButton("Open settings", new DialogInterface.OnClickListener() {
                        @Override public void onClick(DialogInterface dialog, int which) {
                            clearDialogGate();
                            try {
                                Intent intent = new Intent(Settings.ACTION_MANAGE_APP_ALL_FILES_ACCESS_PERMISSION);
                                intent.setData(Uri.parse("package:" + activity.getPackageName()));
                                activity.startActivity(intent);
                            } catch (Throwable error) {
                                try {
                                    activity.startActivity(new Intent(Settings.ACTION_MANAGE_ALL_FILES_ACCESS_PERMISSION));
                                } catch (Throwable ignored) {
                                    showError(activity, "Storage access is still needed",
                                            "In Android settings, open Apps > BΛR☰ > All files access, then turn on Allow access to manage all files.");
                                }
                            }
                        }
                    })
                    .setNegativeButton("Not now", new DialogInterface.OnClickListener() {
                        @Override public void onClick(DialogInterface dialog, int which) {
                            clearDialogGate();
                        }
                    })
                    .setCancelable(false)
                    .show();
            dialogOpen = true;
            dialogActivity = activity;
        } else if (Build.VERSION.SDK_INT >= 23) {
            activity.requestPermissions(new String[] {
                    "android.permission.READ_EXTERNAL_STORAGE",
                    "android.permission.WRITE_EXTERNAL_STORAGE"
            }, 0xBAE);
        } else {
            resolve(activity);
        }
    }

    public static void signOut(Activity activity) {
        if (!writeSignOutMarkers()) {
            showSignOutFailure(activity);
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
            showError(activity, "Storage isn't available",
                    "BΛR☰ can't access your saved account files right now. Check storage access and try again. Nothing was changed.");
            return;
        }

        try {
            File root = rootDirectory();
            if (root.exists() && (!root.isDirectory() || !root.canRead())) {
                showError(activity, "Can't read saved account data",
                        "BΛR☰ can't read the files for your Local Account. Nothing was changed.");
                return;
            }

            File[] files = root.exists() ? root.listFiles() : new File[0];
            if (files == null) {
                showError(activity, "Can't check saved account data",
                        "BΛR☰ couldn't check your saved account files. Nothing was changed.");
                return;
            }

            Set<String> ids = new HashSet<>();
            boolean interruptedWrite = false;
            boolean malformedCandidate = false;
            for (File file : files) {
                String name = file.getName();
                if (name.startsWith(PREFIX) && (name.contains(".tmp-") || name.contains(".bak-"))) {
                    interruptedWrite = true;
                    continue;
                }
                if (name.startsWith(PREFIX) && (name.endsWith(".vault") || name.endsWith(".recovery"))) {
                    String id = candidateId(name);
                    if (id == null) malformedCandidate = true;
                    else ids.add(id);
                }
            }
            if (malformedCandidate) {
                showError(activity, "Account data needs attention",
                        "BΛR☰ found account files it can't safely read. Your files haven't been changed. Please contact support before setting up another account.");
                return;
            }
            if (interruptedWrite) {
                showError(activity, "Account setup needs attention",
                        "An earlier setup didn't finish. Your saved files have been left untouched. Please contact support before continuing.");
                return;
            }
            if (ids.size() > 1) {
                showError(activity, "More than one account found",
                        "BΛR☰ found more than one saved Local Account. Nothing was changed. Please contact support before continuing.");
                return;
            }

            if (ids.size() == 1) {
                String id = ids.iterator().next();
                File vaultFile = new File(root, PREFIX + id + ".vault");
                File recoveryFile = new File(root, PREFIX + id + ".recovery");
                if (!isDirectChild(root, vaultFile) || !isDirectChild(root, recoveryFile)
                        || (vaultFile.exists() && !vaultFile.isFile())
                        || (recoveryFile.exists() && !recoveryFile.isFile())) {
                    showError(activity, "Can't access saved account data",
                            "BΛR☰ can't safely access these account files. Nothing was changed.");
                    return;
                }
                JSONObject vault = vaultFile.isFile() ? readEnvelope(vaultFile, id) : null;
                JSONObject recovery = recoveryFile.isFile() ? readEnvelope(recoveryFile, id) : null;
                if (vault == null && recovery == null) {
                    showNewAccountConfirmation(activity, id, vaultFile, recoveryFile, null);
                    return;
                }

                if (vault != null) {
                    Restored restored = restoreWithDeviceKey(vault, id);
                    if (restored != null) {
                        if (!matchesLegacyCache(restored.user)) {
                            showError(activity, "Account doesn't match",
                                    "The saved account doesn't match the account on this device. Nothing was changed.");
                            return;
                        }
                        if (!recoveryMatchesVault(recovery, vault, restored.uid)) {
                            JSONObject repairedRecovery = makeRecoveryEnvelopeFromVault(vault);
                            byte[] repairedBytes = repairedRecovery.toString().getBytes(StandardCharsets.UTF_8);
                            if (recoveryFile.exists()) replaceAtomically(recoveryFile, repairedBytes);
                            else writeAtomically(recoveryFile, repairedBytes);
                        }
                        activate(activity, restored.user);
                        return;
                    }
                }

                JSONObject recoverySource = recovery != null ? recovery : vault;
                if (recoverySource == null || !recoverySource.has("recoveryWrappedDek")) {
                    showNewAccountConfirmation(activity, id, vaultFile, recoveryFile, null);
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
                showError(activity, "Couldn't verify this account",
                        "BΛR☰ couldn't verify the selected account. Nothing was saved.");
                return;
            }
            if (pendingEnrollment == null) beginEnrollment(activity, user);
            else showRecoveryCode(activity, pendingEnrollment);
        } catch (Throwable error) {
            showError(activity, "Couldn't check your account",
                    "BΛR☰ couldn't safely check your saved account. Nothing was changed.");
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
        showRecoveryPrompt(activity, id, vaultFile, recoveryFile, source, null);
    }

    private static void showRecoveryPrompt(final Activity activity, final String id,
                                           final File vaultFile, final File recoveryFile,
                                           final JSONObject source, String previousCode) {
        if (activity == null || activity.isFinishing()) return;
        final EditText input = new EditText(activity);
        input.setInputType(InputType.TYPE_CLASS_TEXT | InputType.TYPE_TEXT_VARIATION_VISIBLE_PASSWORD | InputType.TYPE_TEXT_FLAG_NO_SUGGESTIONS);
        input.setHint("Enter recovery code");
        input.setSingleLine(false);
        input.setMaxLines(2);
        if (previousCode != null) input.setText(previousCode);
        themedDialogBuilder(activity)
                .setTitle("Restore your Local Account")
                .setMessage("This device can't access your saved account. Enter the recovery code you saved when you set it up.")
                .setView(input)
                .setPositiveButton("Restore account", new DialogInterface.OnClickListener() {
                    @Override public void onClick(DialogInterface dialog, int which) {
                        clearDialogGate();
                        try {
                            recoverFromCode(activity, id, vaultFile, recoveryFile, source, input.getText().toString());
                        } catch (Throwable error) {
                            String attemptedCode = input.getText().toString();
                            toast(activity, "That code didn't work. Check it and try again.");
                            showRecoveryPrompt(activity, id, vaultFile, recoveryFile, source, attemptedCode);
                        }
                    }
                })
                .setNegativeButton("Set up a new account", new DialogInterface.OnClickListener() {
                    @Override public void onClick(DialogInterface dialog, int which) {
                        String attemptedCode = input.getText().toString();
                        clearDialogGate();
                        showNewAccountConfirmation(activity, id, vaultFile, recoveryFile, attemptedCode);
                    }
                })
                .setCancelable(false)
                .show();
        dialogOpen = true;
        dialogActivity = activity;
    }

    private static void showNewAccountConfirmation(final Activity activity, final String id,
                                                   final File vaultFile, final File recoveryFile,
                                                   final String previousCode) {
        if (activity == null || activity.isFinishing()) return;
        themedDialogBuilder(activity)
                .setTitle("Set up a new Local Account?")
                .setMessage("Your previous account can't be restored without its recovery code. BΛR☰ will keep its saved files separate and set up a fresh Local Account. You can still restore the previous account later with its recovery code.")
                .setPositiveButton("Set up new account",  new DialogInterface.OnClickListener() {
                    @Override public void onClick(DialogInterface dialog, int which) {
                        clearDialogGate();
                        try {
                            Object previousCache = cachedLocalUser();
                            Object freshUser = newLocalUser();
                            File archive = archiveExistingArtifacts(id, vaultFile, recoveryFile);
                            try {
                                setCachedLocalUser(null);
                                if (!writeMarkers(false, true)) {
                                    throw new IllegalStateException("Could not save the new Local Account setup state");
                                }
                                pendingUser = freshUser;
                                pendingEnrollment = null;
                                localSelectionPending = true;
                                resolutionComplete = false;
                                toast(activity, "Setting up your new Local Account…");
                                resolve(activity);
                            } catch (Throwable setupError) {
                                try { setCachedLocalUser(previousCache); } catch (Throwable ignored) {}
                                restoreArchivedArtifacts(archive, vaultFile, recoveryFile);
                                throw setupError;
                            }
                        } catch (Throwable error) {
                            showError(activity, "Couldn't set up a new account",
                                    "Your previous account has been kept safe. Check storage access and try again.");
                        }
                    }
                })
                .setNegativeButton("Try recovery again",  new DialogInterface.OnClickListener() {
                    @Override public void onClick(DialogInterface dialog, int which) {
                        clearDialogGate();
                        JSONObject retrySource = recoveryFile.isFile() ? readEnvelope(recoveryFile, id) : null;
                        if (retrySource == null) retrySource = vaultFile.isFile() ? readEnvelope(vaultFile, id) : null;
                        if (retrySource != null) {
                            showRecoveryPrompt(activity, id, vaultFile, recoveryFile, retrySource, previousCode);
                        } else {
                            showError(activity, "Can't restore this account",
                                    "BΛR☰ can't read the saved recovery information. Nothing was changed.");
                        }
                    }
                })
                .setCancelable(false)
                .show();
        dialogOpen = true;
        dialogActivity = activity;
    }

    private static File archiveExistingArtifacts(String id, File vaultFile, File recoveryFile) throws Exception {
        File root = rootDirectory();
        File archiveRoot = new File(root, "recovery-archive");
        if (!archiveRoot.exists() && !archiveRoot.mkdirs()) {
            throw new IllegalStateException("Cannot create recovery archive directory");
        }
        if (!archiveRoot.isDirectory() || !archiveRoot.canWrite()) {
            throw new IllegalStateException("Recovery archive directory is unavailable");
        }
        File archive = new File(archiveRoot, id + "-" + UUID.randomUUID().toString());
        if (!archive.mkdir()) throw new IllegalStateException("Cannot create account archive");
        boolean movedVault = false;
        boolean movedRecovery = false;
        try {
            if (vaultFile.exists()) {
                if (!vaultFile.isFile() || !vaultFile.renameTo(new File(archive, vaultFile.getName()))) {
                    throw new IllegalStateException("Cannot archive existing vault");
                }
                movedVault = true;
            }
            if (recoveryFile.exists()) {
                if (!recoveryFile.isFile() || !recoveryFile.renameTo(new File(archive, recoveryFile.getName()))) {
                    throw new IllegalStateException("Cannot archive existing recovery artifact");
                }
                movedRecovery = true;
            }
            if (!movedVault && !movedRecovery) throw new IllegalStateException("No existing account artifacts to archive");
            return archive;
        } catch (Throwable error) {
            if (movedVault) new File(archive, vaultFile.getName()).renameTo(vaultFile);
            if (movedRecovery) new File(archive, recoveryFile.getName()).renameTo(recoveryFile);
            archive.delete();
            throw error;
        }
    }

    private static void restoreArchivedArtifacts(File archive, File vaultFile, File recoveryFile) {
        if (archive == null || !archive.isDirectory()) return;
        File archivedVault = new File(archive, vaultFile.getName());
        File archivedRecovery = new File(archive, recoveryFile.getName());
        if (archivedVault.exists() && !vaultFile.exists()) archivedVault.renameTo(vaultFile);
        if (archivedRecovery.exists() && !recoveryFile.exists()) archivedRecovery.renameTo(recoveryFile);
        archive.delete();
    }

    private static synchronized void recoverFromCode(Activity activity, String id, File vaultFile,
                                        File recoveryFile, JSONObject source, String suppliedCode) throws Exception {
        String normalized = normalizeRecoveryCode(suppliedCode);
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
            showError(activity, "Account doesn't match",
                    "This recovery code belongs to a different account. Nothing was changed.");
            return;
        }

        String alias = "bare_local_vault_" + id.replace("-", "") + "_" + UUID.randomUUID().toString().replace("-", "");
        SecretKey deviceKey = createDeviceKey(alias);
        JSONObject updatedVault = makeVaultEnvelope(id, restored.uid, alias, dek, payload,
                deviceKey, recoveryBytes);
        // Both files must carry the exact same AES-GCM wrapped-DEK envelope.
        // Re-encrypting it twice creates different random IVs and makes the
        // byte-for-byte recoveryMatchesVault verification fail every time.
        JSONObject updatedRecovery = makeRecoveryEnvelopeFromVault(updatedVault);
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
        activate(activity, restored.user);
        toast(activity, "Your Local Account has been restored.");
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
        int monoFont = activity.getResources().getIdentifier("mono_bold", "font", activity.getPackageName());
        if (monoFont != 0 && Build.VERSION.SDK_INT >= 26) {
            try {
                codeView.setTypeface(activity.getResources().getFont(monoFont));
            } catch (Throwable ignored) {
                codeView.setTypeface(Typeface.create("monospace", Typeface.BOLD));
            }
        } else {
            codeView.setTypeface(Typeface.create("monospace", Typeface.BOLD));
        }
        codeView.setGravity(Gravity.CENTER);
        codeView.setTextSize(16f);
        int pad = (int) (24 * activity.getResources().getDisplayMetrics().density);
        codeView.setPadding(pad, pad, pad, pad);
        themedDialogBuilder(activity)
                .setTitle("Save your recovery code")
                .setMessage("Keep this code somewhere safe. You'll need it to restore your Local Account on another device or if this device can't access it. This is different from your backup password. BΛR☰ will ask you to confirm the code before setup is complete.")
                .setView(codeView)
                .setPositiveButton("I've saved my code",  new DialogInterface.OnClickListener() {
                    @Override public void onClick(DialogInterface dialog, int which) {
                        clearDialogGate();
                        confirmRecoveryCode(activity, enrollment);
                    }
                })
                .setNegativeButton("Cancel setup",  new DialogInterface.OnClickListener() {
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
        input.setInputType(InputType.TYPE_CLASS_TEXT | InputType.TYPE_TEXT_VARIATION_VISIBLE_PASSWORD | InputType.TYPE_TEXT_FLAG_NO_SUGGESTIONS);
        input.setHint("Enter recovery code");
        input.setSingleLine(false);
        input.setMaxLines(2);
        themedDialogBuilder(activity)
                .setTitle("Confirm your recovery code")
                .setMessage("Enter the code you just saved. We'll finish setting up your Local Account when it matches.")
                .setView(input)
                .setPositiveButton("Confirm code",  new DialogInterface.OnClickListener() {
                    @Override public void onClick(DialogInterface dialog, int which) {
                        clearDialogGate();
                        if (!enrollment.code.equals(normalizeRecoveryCode(input.getText().toString()))) {
                            toast(activity, "That code doesn't match. Save your recovery code and try again.");
                            showRecoveryCode(activity, enrollment);
                            return;
                        }
                        try {
                            commitEnrollment(activity, enrollment);
                        } catch (Throwable error) {
                            showError(activity, "Couldn't finish setup",
                                    "BΛR☰ couldn't safely save and verify your account. Your account hasn't been activated. Please try again.");
                        }
                    }
                })
                .setNegativeButton("Cancel setup", new DialogInterface.OnClickListener() {
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
        // Reuse the vault's wrapped-DEK ciphertext so the paired artifacts
        // have one canonical recovery envelope and can be verified consistently.
        JSONObject recovery = makeRecoveryEnvelopeFromVault(vault);

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
        activate(activity, enrollment.user);
        pendingEnrollment = null;
        toast(activity, "Your Local Account is ready.");
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

    private static void activate(Activity activity, Object user) throws Exception {
        setCachedLocalUser(user);
        if (!writeMarkers(true, false)) throw new IllegalStateException("Session marker commit failed");
        pendingUser = null;
        pendingEnrollment = null;
        localSelectionPending = false;
        resolutionComplete = true;
        try { notifyAccountObservers(); } catch (Throwable ignored) {}
        // Enrollment/recovery is a completed account-selection transition.
        // IntroActivity is the launcher only; recreating it leaves its intro
        // ViewModel/navigation state alive and can strand the user on a blank
        // Intro screen. Start the declared HomeActivity explicitly, then retire
        // IntroActivity so Android cannot return to the unresolved setup screen.
        if (activity != null && !activity.isFinishing()) {
            try {
                Class<?> home = Class.forName("com.bareapps.barebackup.home.HomeActivity");
                Intent intent = new Intent(activity, home);
                intent.addFlags(Intent.FLAG_ACTIVITY_CLEAR_TOP | Intent.FLAG_ACTIVITY_NEW_TASK);
                activity.startActivity(intent);
                activity.finish();
            } catch (Throwable navigationError) {
                android.util.Log.e("LocalAccountVault", "Home navigation failed after local activation", navigationError);
                toast(activity, "Your Local Account is ready. Reopen BΛR☰ to continue.");
            }
        }
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

    private static String normalizeRecoveryCode(String value) {
        if (value == null) return "";
        String normalized = value.trim().replaceAll("\\s+", "");
        normalized = normalized.replace("\u200B", "").replace("\u200C", "")
                .replace("\u200D", "").replace("\uFEFF", "");
        normalized = normalized.replace('+', '-').replace('/', '_').replace("=", "");
        return normalized;
    }

    private static byte[] decode(String value) {
        return Base64.decode(normalizeRecoveryCode(value), B64_FLAGS);
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

    private static void showSignOutFailure(final Activity activity) {
        if (activity == null || activity.isFinishing()) return;
        try {
            themedDialogBuilder(activity)
                    .setTitle("Couldn't sign out")
                    .setMessage("BΛR☰ couldn't save your sign-out. Your Local Account is still active.")
                    .setPositiveButton("Try again",  new DialogInterface.OnClickListener() {
                        @Override public void onClick(DialogInterface dialog, int which) {
                            clearDialogGate();
                            signOut(activity);
                        }
                    })
                    .setNegativeButton("Stay signed in",  new DialogInterface.OnClickListener() {
                        @Override public void onClick(DialogInterface dialog, int which) {
                            clearDialogGate();
                        }
                    })
                    .setCancelable(false)
                    .show();
            dialogOpen = true;
            dialogActivity = activity;
        } catch (Throwable ignored) {
            clearDialogGate();
            toast(activity, "Couldn't sign out. Your Local Account is still active.");
        }
    }

    private static DialogBuilder themedDialogBuilder(Activity activity) {
        return new DialogBuilder(activity);
    }

    /**
     * BΛR☰-native dialog surface. It deliberately builds the content instead
     * of delegating the visible layout to the platform AlertDialog template.
     * Colors are resolved from the currently applied BareTheme/BareThemeDark.
     */
    private static final class DialogBuilder {
        private final Activity activity;
        private CharSequence title;
        private CharSequence message;
        private View customView;
        private CharSequence positiveLabel;
        private DialogInterface.OnClickListener positiveListener;
        private CharSequence negativeLabel;
        private DialogInterface.OnClickListener negativeListener;
        private boolean cancelable = true;

        DialogBuilder(Activity activity) {
            this.activity = activity;
        }

        DialogBuilder setTitle(CharSequence value) {
            title = value;
            return this;
        }

        DialogBuilder setMessage(CharSequence value) {
            message = value;
            return this;
        }

        DialogBuilder setView(View value) {
            customView = value;
            return this;
        }

        DialogBuilder setPositiveButton(CharSequence label, DialogInterface.OnClickListener listener) {
            positiveLabel = label;
            positiveListener = listener;
            return this;
        }

        DialogBuilder setNegativeButton(CharSequence label, DialogInterface.OnClickListener listener) {
            negativeLabel = label;
            negativeListener = listener;
            return this;
        }

        DialogBuilder setCancelable(boolean value) {
            cancelable = value;
            return this;
        }

        void show() {
            final AlertDialog dialog = new AlertDialog.Builder(activity).create();
            final int surface = themeColor("dialogBackground", android.R.attr.colorBackgroundFloating, Color.rgb(34, 34, 34));
            final int primary = themeColor("colorPrimary", android.R.attr.colorAccent, Color.rgb(236, 64, 122));
            final int text = themeColor(null, android.R.attr.textColorPrimary, Color.WHITE);
            final int secondary = themeColor(null, android.R.attr.textColorSecondary, 0xffbdbdbd);
            final int panel = themeColor("colorBackgroundActivated", android.R.attr.colorBackground, 0xff292929);
            final int densityPad = dp(24);

            LinearLayout content = new LinearLayout(activity);
            content.setOrientation(LinearLayout.VERTICAL);
            content.setPadding(densityPad, dp(24), densityPad, dp(16));
            content.setBackground(roundRect(surface, dp(22), 0x00000000, 0));

            if (title != null && title.length() > 0) {
                TextView heading = new TextView(activity);
                heading.setText(title);
                heading.setTextColor(text);
                heading.setTextSize(20f);
                heading.setTypeface(Typeface.create("sans-serif-medium", Typeface.NORMAL));
                heading.setIncludeFontPadding(true);
                content.addView(heading, new LinearLayout.LayoutParams(
                        LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT));
            }

            if (message != null && message.length() > 0) {
                TextView body = new TextView(activity);
                body.setText(message);
                body.setTextColor(secondary);
                body.setTextSize(15f);
                body.setLineSpacing(dp(3), 1.0f);
                LinearLayout.LayoutParams bodyParams = new LinearLayout.LayoutParams(
                        LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT);
                bodyParams.topMargin = dp(10);
                content.addView(body, bodyParams);
            }

            if (customView != null) {
                if (customView instanceof EditText) {
                    EditText field = (EditText) customView;
                    field.setTextColor(text);
                    field.setHintTextColor(secondary);
                    field.setTextSize(16f);
                    field.setPadding(dp(14), dp(13), dp(14), dp(13));
                    field.setBackground(roundRect(panel, dp(12), primary, dp(1)));
                    field.setSelectAllOnFocus(false);
                } else if (customView instanceof TextView) {
                    TextView panelText = (TextView) customView;
                    panelText.setTextColor(text);
                    panelText.setBackground(roundRect(panel, dp(14), 0x00000000, 0));
                }
                LinearLayout.LayoutParams viewParams = new LinearLayout.LayoutParams(
                        LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT);
                viewParams.topMargin = dp(18);
                content.addView(customView, viewParams);
            }

            if (positiveLabel != null || negativeLabel != null) {
                LinearLayout actions = new LinearLayout(activity);
                actions.setOrientation(LinearLayout.HORIZONTAL);
                actions.setGravity(Gravity.CENTER_VERTICAL);
                actions.setGravity(Gravity.RIGHT | Gravity.CENTER_VERTICAL);
                LinearLayout.LayoutParams actionsParams = new LinearLayout.LayoutParams(
                        LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT);
                actionsParams.topMargin = dp(22);
                content.addView(actions, actionsParams);

                if (negativeLabel != null) {
                    TextView secondaryAction = actionText(negativeLabel, primary, false);
                    LinearLayout.LayoutParams buttonParams = new LinearLayout.LayoutParams(
                            LinearLayout.LayoutParams.WRAP_CONTENT, dp(48));
                    buttonParams.rightMargin = dp(8);
                    actions.addView(secondaryAction, buttonParams);
                    secondaryAction.setOnClickListener(v -> {
                        dialog.dismiss();
                        if (negativeListener != null) negativeListener.onClick(dialog, DialogInterface.BUTTON_NEGATIVE);
                    });
                }

                if (positiveLabel != null) {
                    TextView primaryAction = actionText(positiveLabel, Color.WHITE, true);
                    actions.addView(primaryAction, new LinearLayout.LayoutParams(
                            LinearLayout.LayoutParams.WRAP_CONTENT, dp(48)));
                    primaryAction.setOnClickListener(v -> {
                        dialog.dismiss();
                        if (positiveListener != null) positiveListener.onClick(dialog, DialogInterface.BUTTON_POSITIVE);
                    });
                }
            }

            dialog.setView(content, 0, 0, 0, 0);
            dialog.setCancelable(cancelable);
            dialog.setCanceledOnTouchOutside(cancelable);
            dialog.setOnDismissListener(new DialogInterface.OnDismissListener() {
                @Override public void onDismiss(DialogInterface ignored) {
                    // Dialog lifecycle gates are cleared by the existing action handlers.
                }
            });
            dialog.show();
            if (dialog.getWindow() != null) {
                dialog.getWindow().setBackgroundDrawableResource(android.R.color.transparent);
                int screenWidth = activity.getResources().getDisplayMetrics().widthPixels;
                int maxWidth = dp(480);
                int width = Math.min(screenWidth - dp(40), maxWidth);
                dialog.getWindow().setLayout(Math.max(dp(280), width), -2);
            }
        }

        private TextView actionText(CharSequence label, int color, boolean filled) {
            TextView action = new TextView(activity);
            action.setText(label);
            action.setTextColor(color);
            action.setTextSize(14f);
            action.setTypeface(Typeface.create("sans-serif-medium", Typeface.NORMAL));
            action.setGravity(Gravity.CENTER);
            action.setSingleLine(true);
            action.setPadding(dp(16), 0, dp(16), 0);
            action.setMinWidth(dp(76));
            action.setBackground(roundRect(filled ? themeColor("colorPrimary", android.R.attr.colorAccent,
                    Color.rgb(236, 64, 122)) : Color.TRANSPARENT, dp(24),
                    filled ? Color.TRANSPARENT : color, filled ? 0 : dp(1)));
            action.setClickable(true);
            action.setFocusable(true);
            return action;
        }

        private int dp(float value) {
            return (int) (value * activity.getResources().getDisplayMetrics().density + 0.5f);
        }

        private GradientDrawable roundRect(int fill, int radius, int stroke, int strokeWidth) {
            GradientDrawable drawable = new GradientDrawable();
            drawable.setColor(fill);
            drawable.setCornerRadius(radius);
            if (strokeWidth > 0) drawable.setStroke(strokeWidth, stroke);
            return drawable;
        }

        private int themeColor(String attrName, int platformAttr, int fallback) {
            TypedValue value = new TypedValue();
            if (attrName != null) {
                int id = activity.getResources().getIdentifier(attrName, "attr", activity.getPackageName());
                if (id != 0 && activity.getTheme().resolveAttribute(id, value, true)) {
                    if (value.resourceId != 0) {
                        try { return activity.getResources().getColor(value.resourceId); } catch (Throwable ignored) {}
                    }
                    if (value.type >= TypedValue.TYPE_FIRST_COLOR_INT && value.type <= TypedValue.TYPE_LAST_COLOR_INT) {
                        return value.data;
                    }
                }
            }
            if (activity.getTheme().resolveAttribute(platformAttr, value, true)) {
                if (value.resourceId != 0) {
                    try { return activity.getResources().getColor(value.resourceId); } catch (Throwable ignored) {}
                }
                if (value.type >= TypedValue.TYPE_FIRST_COLOR_INT && value.type <= TypedValue.TYPE_LAST_COLOR_INT) {
                    return value.data;
                }
            }
            return fallback;
        }
    }

    private static void showError(final Activity activity, String title, String message) {
        if (activity == null || activity.isFinishing()) return;
        try {
            themedDialogBuilder(activity)
                    .setTitle(title)
                    .setMessage(message)
                    .setPositiveButton("Cancel setup",  new DialogInterface.OnClickListener() {
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
