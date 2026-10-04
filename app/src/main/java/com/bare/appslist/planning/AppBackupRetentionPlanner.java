package com.bare.appslist.planning;

import com.bare.settings.MultipleBackupStrategy;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/**
 * Selects old local app backups that are eligible for multiple-backup cleanup.
 *
 * The input order is the backup order supplied by the inventory layer. Reference
 * cleanup separates protected backups from normal backups, keeps the configured
 * number of normal backups, and only marks the remaining normal backups for deletion.
 */
public final class AppBackupRetentionPlanner {

    public interface BackupEntry {
        boolean isProtectedBackup();
    }

    public static final class CleanupPlan<T extends BackupEntry> {
        private final List<T> retained;
        private final List<T> deletable;

        private CleanupPlan(List<T> retained, List<T> deletable) {
            this.retained = Collections.unmodifiableList(new ArrayList<>(retained));
            this.deletable = Collections.unmodifiableList(new ArrayList<>(deletable));
        }

        public List<T> getRetained() {
            return retained;
        }

        public List<T> getDeletable() {
            return deletable;
        }

        public boolean hasDeletions() {
            return !deletable.isEmpty();
        }
    }

    private AppBackupRetentionPlanner() {
    }

    /**
     * Applies only the multi-backup retention rule.
     *
     * Protected backups never count toward the normal-backup limit and are never
     * returned as deletable. For dated/conditional strategies, the first N normal
     * entries are retained and the remaining normal entries are deletable.
     */
    public static <T extends BackupEntry> CleanupPlan<T> plan(
            MultipleBackupStrategy strategy,
            List<T> backups) {

        if (strategy == null || backups == null || backups.isEmpty()) {
            return new CleanupPlan<>(backups == null
                    ? Collections.<T>emptyList() : backups,
                    Collections.<T>emptyList());
        }

        if (!strategy.isMultipleBackups()) {
            return new CleanupPlan<>(backups, Collections.<T>emptyList());
        }

        int maxNormalBackups = strategy.getMaxNumOfBackups();
        if (maxNormalBackups < MultipleBackupStrategy.MIN_NUM_OF_MULTIPLE_BACKUPS) {
            maxNormalBackups = MultipleBackupStrategy.MIN_NUM_OF_MULTIPLE_BACKUPS;
        }

        List<T> retained = new ArrayList<>();
        List<T> normal = new ArrayList<>();

        for (T backup : backups) {
            if (backup == null) {
                continue;
            }
            if (backup.isProtectedBackup()) {
                retained.add(backup);
            } else {
                normal.add(backup);
            }
        }

        if (normal.size() <= maxNormalBackups) {
            retained.addAll(normal);
            return new CleanupPlan<>(retained, Collections.<T>emptyList());
        }

        retained.addAll(normal.subList(0, maxNormalBackups));
        List<T> deletable = new ArrayList<>(normal.subList(maxNormalBackups, normal.size()));
        return new CleanupPlan<>(retained, deletable);
    }
}
