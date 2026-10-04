package com.bare.appslist.metadata;

import com.bare.appslist.planning.AppBackupRetentionPlanner;

public final class BackupMetadataState implements AppBackupRetentionPlanner.BackupEntry {
    private final String id;
    private final String packageName;
    private final boolean protectedBackup;

    public BackupMetadataState(String id, String packageName, boolean protectedBackup) {
        this.id = id;
        this.packageName = packageName;
        this.protectedBackup = protectedBackup;
    }

    public String getId() {
        return id;
    }

    public String getPackageName() {
        return packageName;
    }

    @Override
    public boolean isProtectedBackup() {
        return protectedBackup;
    }
}
