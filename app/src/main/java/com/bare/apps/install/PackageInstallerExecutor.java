package com.bare.apps.install;

import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageInstaller;
import android.os.Build;
import android.os.Bundle;
import android.os.ParcelFileDescriptor;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

/**
 * F93 concrete PackageInstaller execution adapter.
 *
 * Call from a worker thread. The adapter creates a full-install session,
 * streams one or more APK files, commits the session, waits for the platform
 * result and returns the normalized result. Runtime package verification is
 * deliberately performed by RestoreRuntimeVerifier after this step.
 */
public final class PackageInstallerExecutor {
    private static final String ACTION_INSTALL_RESULT =
            "com.bare.apps.PACKAGE_INSTALL_RESULT";
    private static final long RESULT_TIMEOUT_SECONDS = 120L;

    public PackageInstallerResult install(
            Context context,
            String packageName,
            List<File> apkFiles) throws IOException, InterruptedException {
        if (context == null) throw new IllegalArgumentException("context");
        if (packageName == null || packageName.isEmpty()) {
            throw new IllegalArgumentException("packageName");
        }
        if (apkFiles == null || apkFiles.isEmpty()) {
            throw new IllegalArgumentException("apkFiles");
        }

        PackageInstaller installer = context.getPackageManager().getPackageInstaller();
        PackageInstaller.SessionParams params =
                new PackageInstaller.SessionParams(PackageInstaller.SessionParams.MODE_FULL);
        params.setAppPackageName(packageName);
        if (Build.VERSION.SDK_INT >= 31) {
            params.setRequireUserAction(PackageInstaller.SessionParams.USER_ACTION_UNSPECIFIED);
        }

        int sessionId = installer.createSession(params);
        InstallResultReceiver receiver = new InstallResultReceiver();
        IntentFilter filter = new IntentFilter(ACTION_INSTALL_RESULT);
        if (Build.VERSION.SDK_INT >= 33) {
            context.registerReceiver(receiver, filter, Context.RECEIVER_NOT_EXPORTED);
        } else {
            context.registerReceiver(receiver, filter);
        }

        PackageInstaller.Session session = null;
        try {
            session = installer.openSession(sessionId);
            for (int i = 0; i < apkFiles.size(); i++) {
                File apk = apkFiles.get(i);
                if (apk == null || !apk.isFile() || !apk.canRead()) {
                    throw new IOException("APK unavailable: " + apk);
                }
                String name = apkFiles.size() == 1 ? "base.apk" : apk.getName();
                try (FileInputStream input = new FileInputStream(apk);
                     OutputStream output = session.openWrite(name, 0L, apk.length())) {
                    byte[] buffer = new byte[1024 * 1024];
                    int read;
                    while ((read = input.read(buffer)) != -1) {
                        output.write(buffer, 0, read);
                    }
                    session.fsync(output);
                }
            }

            Intent resultIntent = new Intent(ACTION_INSTALL_RESULT)
                    .setPackage(context.getPackageName());
            PendingIntent pendingIntent = PendingIntent.getBroadcast(
                    context,
                    sessionId,
                    resultIntent,
                    PendingIntent.FLAG_UPDATE_CURRENT | PendingIntent.FLAG_MUTABLE);
            session.commit(pendingIntent.getIntentSender());

            if (!receiver.latch.await(RESULT_TIMEOUT_SECONDS, TimeUnit.SECONDS)) {
                throw new IOException("PackageInstaller result timed out after "
                        + RESULT_TIMEOUT_SECONDS + " seconds.");
            }
            PackageInstallerResult result = receiver.result;
            if (result == null) {
                throw new IOException("PackageInstaller returned no result.");
            }
            return result;
        } finally {
            try {
                if (session != null) session.close();
            } finally {
                context.unregisterReceiver(receiver);
                try {
                    installer.abandonSession(sessionId);
                } catch (RuntimeException ignored) {
                    // A committed session may already be finalized by PackageInstaller.
                }
            }
        }
    }

    private static final class InstallResultReceiver extends BroadcastReceiver {
        final CountDownLatch latch = new CountDownLatch(1);
        volatile PackageInstallerResult result;

        @Override
        public void onReceive(Context context, Intent intent) {
            Bundle extras = intent == null ? null : intent.getExtras();
            if (extras != null) {
                Object raw = extras.get(PackageInstallerSessionAdapter.EXTRA_STATUS);
                if (raw instanceof Number) {
                    result = new PackageInstallerResult(
                            ((Number) raw).intValue(),
                            extras.getString(PackageInstallerSessionAdapter.EXTRA_STATUS_MESSAGE),
                            extras.getString(PackageInstallerSessionAdapter.EXTRA_PACKAGE_NAME));
                }
            }
            latch.countDown();
        }
    }
}
