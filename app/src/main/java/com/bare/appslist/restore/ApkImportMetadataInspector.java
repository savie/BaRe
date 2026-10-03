package com.bare.appslist.restore;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;

import java.io.File;

/** Reads public Android package metadata from a staged APK. */
public final class ApkImportMetadataInspector {
    public static final class Result {
        private final String packageName;
        private final String label;
        private final long versionCode;
        private final String versionName;
        private final String error;

        private Result(String packageName, String label, long versionCode, String versionName, String error) {
            this.packageName = packageName;
            this.label = label;
            this.versionCode = versionCode;
            this.versionName = versionName;
            this.error = error;
        }

        public static Result ready(String packageName, String label, long versionCode, String versionName) {
            return new Result(packageName, label, versionCode, versionName, null);
        }

        public static Result error(String message) {
            return new Result(null, null, -1L, null, message);
        }

        public boolean isReady() { return error == null && packageName != null && !packageName.isEmpty(); }
        public String getPackageName() { return packageName; }
        public String getLabel() { return label; }
        public long getVersionCode() { return versionCode; }
        public String getVersionName() { return versionName; }
        public String getError() { return error; }
    }

    public Result inspect(Context context, File apk) {
        if (context == null || apk == null || !apk.isFile() || apk.length() <= 0) {
            return Result.error("APK is missing or empty.");
        }

        PackageManager pm = context.getPackageManager();
        PackageInfo info = pm.getPackageArchiveInfo(
                apk.getAbsolutePath(),
                PackageManager.GET_META_DATA | PackageManager.GET_ACTIVITIES
        );
        if (info == null || info.applicationInfo == null || info.packageName == null
                || info.packageName.trim().isEmpty()) {
            return Result.error("Android could not read APK package metadata.");
        }

        ApplicationInfo appInfo = info.applicationInfo;
        appInfo.sourceDir = apk.getAbsolutePath();
        appInfo.publicSourceDir = apk.getAbsolutePath();

        CharSequence labelValue = appInfo.loadLabel(pm);
        String label = labelValue == null ? "" : labelValue.toString();

        long versionCode;
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.P) {
            versionCode = info.getLongVersionCode();
        } else {
            versionCode = info.versionCode;
        }

        return Result.ready(info.packageName, label, versionCode, info.versionName);
    }
}
