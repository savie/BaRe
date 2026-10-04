package com.bare.appslist.planning;

import com.bare.settings.MultipleBackupStrategy;

import java.util.Collections;
import java.util.List;

/**
 * Single app-side boundary for the two multi-backup decisions:
 * 1) should this run create a new backup or update the latest one;
 * 2) after the run, which old normal backups may be removed.
 */
public final class AppBackupMultiBackupCoordinator {

    public static final class RunPlan {
        private final AppBackupStrategyPlanner.Plan backupPlan;

        private RunPlan(AppBackupStrategyPlanner.Plan backupPlan) {
            this.backupPlan = backupPlan;
        }

        public AppBackupStrategyPlanner.Plan getBackupPlan() {
            return backupPlan;
        }

        public boolean createsNewBackup() {
            return backupPlan.createsNewBackup();
        }

        public boolean updatesLatestBackup() {
            return backupPlan.updatesLatestBackup();
        }

        public boolean skips() {
            return backupPlan.skips();
        }
    }

    private AppBackupMultiBackupCoordinator() {
    }

    public static RunPlan planRun(
            MultipleBackupStrategy strategy,
            boolean identicalApk,
            boolean anyChanged,
            boolean apkChanged,
            boolean dataChanged,
            List<String> changedParts) {

        return new RunPlan(AppBackupStrategyPlanner.plan(
                strategy,
                identicalApk,
                anyChanged,
                apkChanged,
                dataChanged,
                changedParts));
    }

    public static <T extends AppBackupRetentionPlanner.BackupEntry>
    AppBackupRetentionPlanner.CleanupPlan<T> planCleanup(
            MultipleBackupStrategy strategy,
            List<T> backups) {

        return AppBackupRetentionPlanner.plan(
                strategy,
                backups == null ? Collections.<T>emptyList() : backups);
    }
}
