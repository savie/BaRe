package com.bare.appslist.engine;

import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.BroadcastReceiver;
import android.content.IntentFilter;
import android.app.PendingIntent;
import android.content.pm.InstallSourceInfo;
import android.content.pm.PackageInstaller;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Parcel;

import java.io.File;
import java.io.FileInputStream;
import java.io.OutputStream;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

/**
 * Reference InstallerSourceProxy-equivalent owner.
 *
 * Builds one PackageInstaller session for base/split APK entries, fsyncs every
 * stream, commits through an IntentSender, waits for the terminal result and
 * verifies installer/initiating/installing package identity.
 */
public final class AppPackageInstaller {
    private static final long RESULT_TIMEOUT_MILLIS = 120000L;
    private final Context context;

    public AppPackageInstaller(Context context) {
        this.context = context.getApplicationContext();
    }

    public Result install(String packageName, List<Entry> entries) throws Exception {
        if (packageName == null || packageName.isEmpty()) {
            throw new IllegalArgumentException("packageName");
        }
        if (entries == null || entries.isEmpty()) {
            throw new IllegalArgumentException("No APK entries");
        }

        PackageInstaller installer = context.getPackageManager().getPackageInstaller();
        PackageInstaller.SessionParams params = new PackageInstaller.SessionParams(
                PackageInstaller.SessionParams.MODE_FULL);
        params.setAppPackageName(packageName);
        params.setInstallReason(PackageManager.INSTALL_REASON_USER);
        if (Build.VERSION.SDK_INT >= 34) params.setInstallerPackageName(context.getPackageName());
        if (Build.VERSION.SDK_INT >= 33) params.setPackageSource(PackageInstaller.PACKAGE_SOURCE_STORE);
        if (Build.VERSION.SDK_INT >= 31) params.setRequireUserAction(PackageInstaller.SessionParams.USER_ACTION_UNSPECIFIED);

        long total = 0L;
        for (Entry entry : entries) total = safeAdd(total, entry.size());

        params.setSize(total);
        int sessionId = installer.createSession(params);
        try (PackageInstaller.Session session = installer.openSession(sessionId)) {
            for (Entry entry : entries) {
                writeEntry(session, entry);
            }
            IntentSender sender = resultSender();
            session.commit(sender);
            Result result = awaitResult();
            if (!result.isSuccess()) return result;
            Result verified = verifyInstallSource(packageName);
            if (!verified.isSuccess()) {
                try { installer.abandonSession(sessionId); } catch (Exception ignored) {}
                return verified;
            }
            return result;
        } catch (Throwable failure) {
            try { installer.abandonSession(sessionId); } catch (Exception ignored) {}
            if (failure instanceof Exception) throw (Exception) failure;
            throw new IllegalStateException(failure);
        }
    }

    private void writeEntry(PackageInstaller.Session session, Entry entry) throws Exception {
        if (entry == null || entry.file == null || !entry.file.isFile()) {
            throw new IllegalArgumentException("Invalid APK entry");
        }
        String name = entry.name;
        if (name == null || name.isEmpty() || name.indexOf('/') >= 0 || name.indexOf('\\') >= 0) {
            throw new IllegalArgumentException("Invalid APK entry name");
        }

        try (FileInputStream input = new FileInputStream(entry.file);
             OutputStream output = session.openWrite(name, 0L, entry.file.length())) {
            byte[] buffer = new byte[262144];
            int n;
            while ((n = input.read(buffer)) != -1) output.write(buffer, 0, n);
            session.fsync(output);
        }
    }

    private IntentSender resultSender() throws Exception {
        ResultReceiver receiver = new ResultReceiver(context);
        return receiver.sender();
    }

    private Result awaitResult() throws InterruptedException {
        ResultReceiver receiver = ResultReceiver.LAST.get();
        try {
            if (!receiver.latch.await(RESULT_TIMEOUT_MILLIS, TimeUnit.MILLISECONDS)) {
                return Result.failure(8, "Timed out waiting for PackageInstaller result");
            }
            Intent intent = receiver.intent;
            if (intent == null) return Result.failure(1, "PackageInstaller result was missing");
            int status = intent.getIntExtra("android.content.pm.extra.STATUS", 1);
            String message = intent.getStringExtra("android.content.pm.extra.STATUS_MESSAGE");
            String installedPackage = intent.getStringExtra("android.content.pm.extra.PACKAGE_NAME");
            return status == PackageInstaller.STATUS_SUCCESS
                    ? Result.success(installedPackage)
                    : Result.failure(status, message);
        } finally {
            receiver.close();
        }
    }

    private Result verifyInstallSource(String packageName) throws Exception {
        String installer = context.getPackageManager().getInstallerPackageName(packageName);
        if (!context.getPackageName().equals(installer)) {
            return Result.failure(1, "Install verification failed: installer package mismatch");
        }
        if (Build.VERSION.SDK_INT >= 30) {
            InstallSourceInfo source = context.getPackageManager().getInstallSourceInfo(packageName);
            if (source == null
                    || !context.getPackageName().equals(source.getInitiatingPackageName())
                    || !context.getPackageName().equals(source.getInstallingPackageName())) {
                return Result.failure(1, "Install verification failed: initiating/installing package mismatch");
            }
        }
        return Result.success(packageName);
    }

    private static long safeAdd(long a, long b) {
        if (b < 0L || Long.MAX_VALUE - a < b) throw new IllegalArgumentException("APK size overflow");
        return a + b;
    }

    public static final class Entry {
        public final String name;
        public final File file;
        public Entry(String name, File file) {
            this.name = name;
            this.file = file;
        }
        long size() { return file == null ? 0L : Math.max(0L, file.length()); }
    }

    public static final class Result {
        public final boolean success;
        public final int status;
        public final String message;
        public final String packageName;

        private Result(boolean success, int status, String message, String packageName) {
            this.success = success;
            this.status = status;
            this.message = message;
            this.packageName = packageName;
        }

        static Result success(String packageName) {
            return new Result(true, PackageInstaller.STATUS_SUCCESS, null, packageName);
        }

        static Result failure(int status, String message) {
            return new Result(false, status, message, null);
        }

        public boolean isSuccess() { return success; }
    }

    /**
     * The platform IntentSender callback is represented by the same local
     * binder bridge used by PackageInstaller; the process-lifetime holder is
     * deliberately isolated from the Activity/domain owner.
     */
    private static final class ResultReceiver {
        static final ThreadLocal<ResultReceiver> LAST = new ThreadLocal<>();
        final Context context;
        final String action;
        final CountDownLatch latch = new CountDownLatch(1);
        final BroadcastReceiver receiver;
        final PendingIntent pendingIntent;
        volatile Intent intent;

        ResultReceiver(Context context) {
            this.context = context;
            this.action = context.getPackageName() + ".SB_INSTALL_" + System.nanoTime();
            this.receiver = new BroadcastReceiver() {
                @Override public void onReceive(Context ignored, Intent value) {
                    intent = value;
                    latch.countDown();
                }
            };
            IntentFilter filter = new IntentFilter(action);
            if (Build.VERSION.SDK_INT >= 33) {
                context.registerReceiver(receiver, filter, Context.RECEIVER_NOT_EXPORTED);
            } else {
                context.registerReceiver(receiver, filter);
            }
            int flags = PendingIntent.FLAG_UPDATE_CURRENT;
            if (Build.VERSION.SDK_INT >= 23) flags |= PendingIntent.FLAG_MUTABLE;
            Intent callback = new Intent(action).setPackage(context.getPackageName());
            pendingIntent = PendingIntent.getBroadcast(
                    context, action.hashCode(), callback, flags);
            LAST.set(this);
        }

        IntentSender sender() {
            return pendingIntent.getIntentSender();
        }

        void close() {
            try { context.unregisterReceiver(receiver); } catch (Exception ignored) {}
            pendingIntent.cancel();
            LAST.remove();
        }
    }
}
