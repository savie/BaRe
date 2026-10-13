package com.bareapps.barebackup.appslist.data;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;

/** Immutable display model for an installed package in the Apps catalog. */
public final class InstalledApp {
    private final String packageName;
    private final String label;
    private final ApplicationInfo applicationInfo;
    private final boolean systemApp;

    public InstalledApp(String packageName, String label, ApplicationInfo applicationInfo) {
        this.packageName = packageName;
        this.label = label;
        this.applicationInfo = applicationInfo;
        this.systemApp = (applicationInfo.flags & ApplicationInfo.FLAG_SYSTEM) != 0
                || (applicationInfo.flags & ApplicationInfo.FLAG_UPDATED_SYSTEM_APP) != 0;
    }

    public String getPackageName() { return packageName; }
    public String getLabel() { return label; }
    public ApplicationInfo getApplicationInfo() { return applicationInfo; }
    public boolean isSystemApp() { return systemApp; }

    public String getBackupStatus() {
        // Backup engine/history is not implemented in this UI-first phase.
        return "No backup on device";
    }

    public android.graphics.drawable.Drawable loadIcon(PackageManager packageManager) {
        try {
            return packageManager.getApplicationIcon(applicationInfo);
        } catch (RuntimeException ignored) {
            return null;
        }
    }
}
