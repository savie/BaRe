package com.bare.folders.data;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

/** App-side reconciliation rules for folder metadata; provider I/O stays outside this class. */
public final class FolderMetadataReconciler {
    public enum Action {
        KEEP_EXISTING,
        REPLACE_EXISTING,
        REMOVE_INVALID,
        REJECT_DUPLICATE_INCREMENTAL
    }

    public static final class Decision {
        public final String folderId;
        public final Action action;
        public final String reason;

        public Decision(String folderId, Action action, String reason) {
            this.folderId = folderId;
            this.action = action;
            this.reason = reason;
        }
    }

    public List<Decision> plan(FolderMetadata existing, FolderMetadata incoming) {
        List<Decision> decisions = new ArrayList<>();
        if (incoming == null || !incoming.isValidForCloudWrite()) {
            decisions.add(new Decision(
                    incoming == null ? null : incoming.getItemId(),
                    Action.REMOVE_INVALID,
                    "incoming folder metadata is invalid"));
            return decisions;
        }

        if (hasDuplicateIncrementalTimestamps(incoming)) {
            decisions.add(new Decision(
                    incoming.getItemId(),
                    Action.REJECT_DUPLICATE_INCREMENTAL,
                    "incremental backup timestamps are not unique"));
            return decisions;
        }

        if (existing == null) {
            decisions.add(new Decision(incoming.getItemId(), Action.REPLACE_EXISTING, "no existing metadata"));
            return decisions;
        }

        if (equivalent(existing, incoming)) {
            decisions.add(new Decision(incoming.getItemId(), Action.KEEP_EXISTING, "metadata is equivalent"));
        } else {
            decisions.add(new Decision(incoming.getItemId(), Action.REPLACE_EXISTING, "metadata changed"));
        }
        return decisions;
    }

    private boolean equivalent(FolderMetadata a, FolderMetadata b) {
        if (!a.getItemId().equals(b.getItemId())) return false;
        if (!sameBase(a.baseBackup, b.baseBackup)) return false;

        Map<String, FolderMetadata.IncrementalBackup> left = a.incrementalBackups;
        Map<String, FolderMetadata.IncrementalBackup> right = b.incrementalBackups;
        if (left == null || left.isEmpty()) return right == null || right.isEmpty();
        if (right == null || left.size() != right.size()) return false;

        for (Map.Entry<String, FolderMetadata.IncrementalBackup> entry : left.entrySet()) {
            FolderMetadata.IncrementalBackup other = right.get(entry.getKey());
            if (!sameIncremental(entry.getValue(), other)) return false;
        }
        return true;
    }

    private boolean sameBase(FolderMetadata.BaseBackup a, FolderMetadata.BaseBackup b) {
        if (a == null || b == null) return a == b;
        return same(a.backupLink, b.backupLink)
                && same(a.manifestLink, b.manifestLink)
                && same(a.timestamp, b.timestamp)
                && value(a.backupSize) == value(b.backupSize)
                && value(a.originalSize) == value(b.originalSize)
                && value(a.manifestSize) == value(b.manifestSize);
    }

    private boolean sameIncremental(
            FolderMetadata.IncrementalBackup a,
            FolderMetadata.IncrementalBackup b) {
        if (a == null || b == null) return a == b;
        return same(a.backupLink, b.backupLink)
                && same(a.manifestLink, b.manifestLink)
                && same(a.timestamp, b.timestamp)
                && value(a.backupSize) == value(b.backupSize)
                && value(a.originalSize) == value(b.originalSize)
                && value(a.manifestSize) == value(b.manifestSize);
    }

    private boolean hasDuplicateIncrementalTimestamps(FolderMetadata metadata) {
        if (metadata.incrementalBackups == null) return false;
        Set<String> timestamps = new HashSet<>();
        for (FolderMetadata.IncrementalBackup backup : metadata.incrementalBackups.values()) {
            if (backup == null || !backup.isValid()) return true;
            if (!timestamps.add(backup.timestamp)) return true;
        }
        return false;
    }

    private boolean same(String a, String b) {
        return a == null ? b == null : a.equals(b);
    }

    private long value(Long value) {
        return value == null ? 0L : value;
    }
}
