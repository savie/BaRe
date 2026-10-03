package com.bare.apps.install;

import android.content.Intent;
import android.content.pm.InstallSourceInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;

/**
 * F93 PackageInstaller result/source-verification boundary.
 * Session creation, streaming, commit and runtime waiting remain downstream.
 */
public final class PackageInstallerSessionAdapter {
    public static final String EXTRA_STATUS = "android.content.pm.extra.STATUS";
    public static final String EXTRA_STATUS_MESSAGE = "android.content.pm.extra.STATUS_MESSAGE";
    public static final String EXTRA_PACKAGE_NAME = "android.content.pm.extra.PACKAGE_NAME";

    public PackageInstallerResult parseResult(Intent intent) {
        if (intent == null) return null;
        Bundle extras = intent.getExtras();
        if (extras == null) return null;
        Object raw = extras.get(EXTRA_STATUS);
        if (!(raw instanceof Number)) return null;
        Number status = (Number) raw;
        return new PackageInstallerResult(
                status.intValue(),
                extras.getString(EXTRA_STATUS_MESSAGE),
                extras.getString(EXTRA_PACKAGE_NAME));
    }

    public boolean verifyInstallSource(
            PackageManager packageManager,
            String packageName,
            String expectedInstallerPackage) throws PackageManager.NameNotFoundException {
        if (packageManager == null || packageName == null || expectedInstallerPackage == null) {
            return false;
        }

        String installer = packageManager.getInstallerPackageName(packageName);
        if (!expectedInstallerPackage.equals(installer)) return false;

        if (android.os.Build.VERSION.SDK_INT >= 30) {
            InstallSourceInfo source = packageManager.getInstallSourceInfo(packageName);
            if (source == null) return false;
            if (!expectedInstallerPackage.equals(source.getInitiatingPackageName())) return false;
            if (!expectedInstallerPackage.equals(source.getInstallingPackageName())) return false;
        }
        return true;
    }
}
