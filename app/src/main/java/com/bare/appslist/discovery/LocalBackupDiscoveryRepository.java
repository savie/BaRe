package com.bare.appslist.discovery;

import com.bare.account.local.AccountNamespace;

import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/**
 * Local-only backup discovery rooted in the canonical Reference account namespace.
 *
 * Reference layout:
 *   SwiftBackup/accounts/{derived-account-key}/backups/apps/local/{package}/{backup-id}
 *
 * This class discovers filesystem identity only. It does not parse backup
 * metadata, mutate files, or access any cloud/backend service.
 */
public final class LocalBackupDiscoveryRepository {
    public static final String ROOT_DIR = "SwiftBackup";
    public static final String ACCOUNTS_DIR = "accounts";
    public static final String BACKUPS_DIR = "backups";
    public static final String APPS_DIR = "apps";
    public static final String LOCAL_DIR = "local";

    public File accountRoot(File storageRoot, String uid) {
        if (storageRoot == null) throw new IllegalArgumentException("storageRoot");
        return new File(
                new File(new File(storageRoot, ROOT_DIR), ACCOUNTS_DIR),
                AccountNamespace.keyForUid(uid));
    }

    public File appBackupRoot(File storageRoot, String uid, String packageName) {
        if (packageName == null || packageName.isEmpty()) {
            throw new IllegalArgumentException("packageName");
        }
        return new File(
                new File(
                        new File(
                                new File(accountRoot(storageRoot, uid), BACKUPS_DIR),
                                APPS_DIR),
                        LOCAL_DIR),
                packageName);
    }

    public List<LocalBackup> list(String storageRoot, String uid) {
        if (storageRoot == null || uid == null || uid.isEmpty()) {
            return Collections.emptyList();
        }
        return list(new File(storageRoot), uid);
    }

    public List<LocalBackup> list(File storageRoot, String uid) {
        if (storageRoot == null || uid == null || uid.isEmpty()) {
            return Collections.emptyList();
        }

        File localRoot = new File(
                new File(
                        new File(
                                new File(accountRoot(storageRoot, uid), BACKUPS_DIR),
                                APPS_DIR),
                        LOCAL_DIR);

        File[] packages = localRoot.listFiles(File::isDirectory);
        if (packages == null) return Collections.emptyList();

        List<LocalBackup> result = new ArrayList<>();
        for (File packageDir : packages) {
            File[] backupDirs = packageDir.listFiles(File::isDirectory);
            if (backupDirs == null) continue;

            for (File backupDir : backupDirs) {
                String backupId = backupDir.getName();
                if (backupId.isEmpty()) continue;

                result.add(new LocalBackup(
                        packageDir.getName(),
                        backupId,
                        backupDir,
                        backupDir.lastModified()));
            }
        }

        result.sort(Comparator
                .comparing(LocalBackup::getPackageName)
                .thenComparingLong(LocalBackup::getLastModified)
                .thenComparing(LocalBackup::getBackupId));
        return Collections.unmodifiableList(result);
    }

    public static final class LocalBackup {
        private final String packageName;
        private final String backupId;
        private final File directory;
        private final long lastModified;

        public LocalBackup(
                String packageName,
                String backupId,
                File directory,
                long lastModified) {
            this.packageName = packageName;
            this.backupId = backupId;
            this.directory = directory;
            this.lastModified = lastModified;
        }

        public String getPackageName() { return packageName; }
        public String getBackupId() { return backupId; }
        public File getDirectory() { return directory; }
        public long getLastModified() { return lastModified; }
    }
}
