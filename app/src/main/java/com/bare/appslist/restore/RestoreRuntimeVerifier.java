package com.bare.appslist.restore;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;

/**
 * Concrete post-execution runtime verifier for app restore.
 *
 * Verifies that the target package exists after installation, that the
 * installed UID is available, and optionally that package/version identity
 * matches the restore target. This is runtime evidence, not source-level
 * intent.
 */
public final class RestoreRuntimeVerifier {
    public Result verify(
            Context context,
            String packageName,
            Long expectedVersionCode) {
        if (context == null) throw new IllegalArgumentException("context");
        if (packageName == null || packageName.isEmpty()) {
            throw new IllegalArgumentException("packageName");
        }

        PackageManager pm = context.getPackageManager();
        try {
            PackageInfo info = pm.getPackageInfo(packageName, 0);
            ApplicationInfo applicationInfo = info.applicationInfo;
            if (applicationInfo == null || applicationInfo.uid < 0) {
                return Result.failure(Status.UID_UNAVAILABLE, "Installed UID unavailable.");
            }

            long installedVersionCode = getVersionCode(info);
            if (expectedVersionCode != null
                    && expectedVersionCode >= 0
                    && installedVersionCode != expectedVersionCode) {
                return Result.failure(
                        Status.VERSION_MISMATCH,
                        "Installed version does not match the expected restore version.");
            }

            return Result.success(packageName, applicationInfo.uid, installedVersionCode);
        } catch (PackageManager.NameNotFoundException e) {
            return Result.failure(Status.NOT_INSTALLED, "Package is not installed.");
        } catch (RuntimeException e) {
            return Result.failure(Status.VERIFICATION_ERROR, e.getMessage());
        }
    }

    private static long getVersionCode(PackageInfo info) {
        if (Build.VERSION.SDK_INT >= 28) {
            return info.getLongVersionCode();
        }
        return info.versionCode;
    }

    public enum Status {
        VERIFIED,
        NOT_INSTALLED,
        UID_UNAVAILABLE,
        VERSION_MISMATCH,
        VERIFICATION_ERROR
    }

    public static final class Result {
        private final Status status;
        private final String packageName;
        private final long uid;
        private final long versionCode;
        private final String message;

        private Result(Status status, String packageName, long uid,
                       long versionCode, String message) {
            this.status = status;
            this.packageName = packageName;
            this.uid = uid;
            this.versionCode = versionCode;
            this.message = message;
        }

        static Result success(String packageName, long uid, long versionCode) {
            return new Result(Status.VERIFIED, packageName, uid, versionCode, null);
        }

        static Result failure(Status status, String message) {
            return new Result(status, null, -1L, -1L, message);
        }

        public Status getStatus() { return status; }
        public String getPackageName() { return packageName; }
        public long getUid() { return uid; }
        public long getVersionCode() { return versionCode; }
        public String getMessage() { return message; }
        public boolean isVerified() { return status == Status.VERIFIED; }
    }
}
