package com.bare.appslist.restore;

import java.io.File;

/** App-owned identity carried from local discovery into restore planning. */
public final class LocalRestoreIdentity {
    private final String packageName;
    private final String backupId;
    private final File directory;

    public LocalRestoreIdentity(String packageName, String backupId, File directory) {
        if (packageName == null || packageName.isEmpty()) throw new IllegalArgumentException("packageName");
        if (backupId == null || backupId.isEmpty()) throw new IllegalArgumentException("backupId");
        if (directory == null) throw new IllegalArgumentException("directory");
        this.packageName = packageName;
        this.backupId = backupId;
        this.directory = directory;
    }

    public String getPackageName() { return packageName; }
    public String getBackupId() { return backupId; }
    public File getDirectory() { return directory; }
}
