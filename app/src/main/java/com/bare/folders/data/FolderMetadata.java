package com.bare.folders.data;

import java.util.LinkedHashMap;
import java.util.Map;

/** Evidence-backed port of Reference FolderMetadata's persisted shape. */
public final class FolderMetadata {
    public final BaReFolderItem folderItem;
    public final BaseBackup baseBackup;
    public final Map<String, IncrementalBackup> incrementalBackups;

    public FolderMetadata(BaReFolderItem folderItem, BaseBackup baseBackup,
                          Map<String, IncrementalBackup> incrementalBackups) {
        if (folderItem == null) throw new IllegalArgumentException("folderItem");
        this.folderItem = folderItem;
        this.baseBackup = baseBackup;
        this.incrementalBackups = incrementalBackups == null
                ? null : new LinkedHashMap<>(incrementalBackups);
    }

    public boolean hasBaseBackup() { return baseBackup != null && baseBackup.isValid(); }

    public boolean hasIncrementalBackups() {
        if (incrementalBackups == null) return false;
        for (IncrementalBackup backup : incrementalBackups.values()) {
            if (backup != null && backup.isValid()) return true;
        }
        return false;
    }

    public boolean hasAnyBackup() { return hasBaseBackup() || hasIncrementalBackups(); }

    /** Reference hasBackups() returns base-backup presence, not merely incremental presence. */
    public boolean hasBackups() { return hasBaseBackup(); }

    public long getBaseBackupSize() { return baseBackup == null ? 0L : baseBackup.getSize(); }

    public long getIncrementalBackupsSize() {
        long total = 0L;
        if (incrementalBackups != null) {
            for (IncrementalBackup backup : incrementalBackups.values()) {
                if (backup != null) total += backup.getSize();
            }
        }
        return total;
    }

    public long getTotalSize() { return getBaseBackupSize() + getIncrementalBackupsSize(); }
    public String getItemId() { return folderItem.id; }

    public boolean isValid() {
        return folderItem.isValid() && hasBaseBackup() &&
                (incrementalBackups == null || allIncrementalBackupsValid());
    }

    private boolean allIncrementalBackupsValid() {
        for (IncrementalBackup backup : incrementalBackups.values()) {
            if (backup == null || !backup.isValid()) return false;
        }
        return true;
    }

    public static class BaseBackup {
        public String backupLink;
        public Long backupSize;
        public Long originalSize;
        public String manifestLink;
        public Long manifestSize;
        public String timestamp;
        public boolean isBaseBackup = true;

        public boolean isValid() {
            return backupLink != null && !backupLink.isEmpty() &&
                    manifestLink != null && !manifestLink.isEmpty() &&
                    backupSize != null && backupSize >= 0;
        }
        public long getSize() { return backupSize == null ? 0L : backupSize; }
    }

    public static class IncrementalBackup {
        public String backupLink;
        public Long backupSize;
        public Long originalSize;
        public String manifestLink;
        public Long manifestSize;
        public String timestamp;
        public boolean isBaseBackup;

        public boolean isValid() {
            return backupLink != null && !backupLink.isEmpty() &&
                    manifestLink != null && !manifestLink.isEmpty() &&
                    backupSize != null && backupSize >= 0 &&
                    timestamp != null && !timestamp.isEmpty();
        }
        public long getSize() { return backupSize == null ? 0L : backupSize; }
    }
}
