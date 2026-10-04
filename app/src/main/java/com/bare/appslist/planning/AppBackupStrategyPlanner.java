package com.bare.appslist.planning;

import com.bare.settings.MultipleBackupStrategy;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/**
 * Applies the Reference multi-backup rule after change detection has run.
 *
 * It does not write artifacts; it only chooses whether the task should create
 * a new backup, update the latest backup, or skip because nothing changed.
 */
public final class AppBackupStrategyPlanner {

    public enum Decision {
        CREATE_NEW_BACKUP,
        UPDATE_LATEST_BACKUP,
        SKIP_IDENTICAL,
        SKIP_UNCHANGED
    }

    public static final class Plan {
        private final Decision decision;
        private final List<String> changedParts;
        private final String reason;

        private Plan(Decision decision, List<String> changedParts, String reason) {
            this.decision = decision;
            this.changedParts = Collections.unmodifiableList(
                    new ArrayList<>(changedParts == null
                            ? Collections.<String>emptyList() : changedParts));
            this.reason = reason;
        }

        public Decision getDecision() {
            return decision;
        }

        public List<String> getChangedParts() {
            return changedParts;
        }

        public String getReason() {
            return reason;
        }

        public boolean createsNewBackup() {
            return decision == Decision.CREATE_NEW_BACKUP;
        }

        public boolean updatesLatestBackup() {
            return decision == Decision.UPDATE_LATEST_BACKUP;
        }

        public boolean skips() {
            return decision == Decision.SKIP_IDENTICAL
                    || decision == Decision.SKIP_UNCHANGED;
        }
    }

    private AppBackupStrategyPlanner() {
    }

    public static Plan plan(
            MultipleBackupStrategy strategy,
            boolean identicalApk,
            boolean anyChanged,
            boolean apkChanged,
            boolean dataChanged,
            List<String> changedParts) {

        if (strategy == null) {
            strategy = MultipleBackupStrategy.singleBackup();
        }

        List<String> parts = changedParts == null
                ? Collections.<String>emptyList() : changedParts;

        if (!anyChanged) {
            return new Plan(
                    identicalApk
                            ? Decision.SKIP_IDENTICAL
                            : Decision.SKIP_UNCHANGED,
                    Collections.<String>emptyList(),
                    identicalApk
                            ? "identical APK and no changed parts"
                            : "no change in selected backup parts");
        }

        switch (strategy.getType()) {
            case MultipleBackupStrategy.TYPE_DATED_BACKUPS:
                return new Plan(
                        Decision.CREATE_NEW_BACKUP,
                        parts,
                        "dated strategy creates a new backup each time changes are present");

            case MultipleBackupStrategy.TYPE_CONDITIONAL_BACKUP:
                boolean conditionMatched;
                switch (strategy.getCondition()) {
                    case MultipleBackupStrategy.CONDITION_DATA_CHANGES:
                        conditionMatched = dataChanged;
                        break;
                    case MultipleBackupStrategy.CONDITION_ANY_CHANGES:
                        conditionMatched = apkChanged || dataChanged;
                        break;
                    default:
                        conditionMatched = apkChanged;
                        break;
                }
                return new Plan(
                        conditionMatched
                                ? Decision.CREATE_NEW_BACKUP
                                : Decision.UPDATE_LATEST_BACKUP,
                        parts,
                        conditionMatched
                                ? "conditional strategy matched"
                                : "conditional strategy did not match; update latest backup");

            default:
                return new Plan(
                        Decision.UPDATE_LATEST_BACKUP,
                        parts,
                        "single strategy updates the latest backup");
        }
    }
}
