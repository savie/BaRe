package com.bare.schedule.contracts;

import java.util.List;
import java.util.Map;
import java.util.Collections;

/**
 * P5.5 R-E bounded scheduler/task contracts.
 *
 * Static/domain contracts only. Alarm delivery, Android FGS execution, task
 * execution, filesystem mutation and device/runtime effects remain downstream.
 */
public final class ReScheduleContracts {
    private ReScheduleContracts() {}

    /** F22 — schedule state/service boundary. */
    public enum F22RunMode { SCHEDULES, SINGLE_SCHEDULE, MULTIPLE_SCHEDULES }
    public record F22ScheduleState(
            boolean enabled, boolean runnable, boolean forced,
            F22RunMode runMode, String repeatMode,
            String nextRunState, String lastRunState) {}

    /** F27 — task lifecycle/UI/service boundary. */
    public enum F27TaskState { WAITING, RUNNING, COMPLETE, CANCELLED, CANCEL_COMPLETE }
    public record F27TaskLifecycle(
            String taskId, F27TaskState state, int progress,
            String preconditionState, String cancellationState,
            String terminalResult) {}

    /** F50 — schedule selection and last-run diagnostic boundary. */
    public enum F50LastRunState {
        NEVER_RUN, STARTED, BLOCKED_LOW_BATTERY, BLOCKED_NOT_CHARGING,
        BLOCKED_WIFI_PRIVILEGED_ACCESS, FAILED_WIFI_DEVICE_READ,
        SKIPPED_UPLOAD_NETWORK_ERROR, SKIPPED_UPLOAD_CLOUD_NOT_CONNECTED,
        SKIPPED_UPLOAD_SYNC_OPTIONS_ERROR
    }
    public record F50ScheduleSelection(
            List<String> selectedLabels, List<String> selectedFolders,
            F50LastRunState lastRunState, long lastRunTimeMillis,
            String lastRunDetail, String blockedReason) {}

    /** F74 — scheduler eligibility/handoff boundary. */
    public enum F74Decision { RUN, SKIP, BLOCKED }
    public record F74Eligibility(
            boolean enabled, boolean runnable, boolean forced,
            boolean chargingSatisfied, boolean batterySatisfied,
            boolean cloudSatisfied, F74Decision decision,
            String handoffState) {}

    /** F75 — task-manager/provider lifecycle boundary. */
    public record F75ProviderRun(
            String providerId, String taskId, String state, int progress,
            boolean overlapBlocked, boolean cancellationRequested,
            String terminalResult) {
        public static boolean overlapAllowed(boolean taskRunning, boolean cancelling) {
            return !taskRunning && !cancelling;
        }
    }

    /** F76 — DataSync FGS runtime-ledger boundary. */
    public record F76RuntimeLedgerEntry(
            String id, String serviceName, long startTimeMillis,
            Long endTimeMillis, boolean scheduleRun, boolean forcedRun,
            String runMode, String outcome, String note) {
        public long durationMillis(long nowMillis) {
            long end = endTimeMillis == null ? nowMillis : endTimeMillis;
            return Math.max(0L, end - startTimeMillis);
        }
    }

    /** F77 — Apps task execution input/state boundary. */
    public enum F77Operation { BACKUP, RESTORE }
    public record F77AppsTask(
            String taskId, List<String> packageNames, F77Operation operation,
            String destination, String state, boolean cancellationRequested,
            String artifactState, String cloudTransferState, String installState) {
        public List<String> packages() {
            return Collections.unmodifiableList(packageNames);
        }
    }

    /** F107 — scheduled Apps Quick Actions preparation. */
    public record F107QuickActionsPreparation(
            List<String> quickActionIds, List<String> packageNames,
            String partSelection, List<String> locations,
            boolean syncEnabled, String lastRunState) {}

    /** F108 — scheduled Apps custom-config preparation. */
    public record F108ConfigPreparation(
            String configId, String cloudDestination, boolean fallbackUsed,
            String taskProjection, String lastRunState) {}

    /** F109 — scheduled Apps label-selection preparation. */
    public record F109LabelPreparation(
            String labelId, List<String> packageNames, List<String> matchedPackages,
            String partSelection, String orderingState, String lastRunState) {}

    /** F122 — persisted ScheduleData aggregate. */
    public enum F122BatteryMode { NONE, CHARGING, MINIMUM_PERCENT }
    public record F122ScheduleAggregate(
            int startHour, int startMinute, F122BatteryMode batteryMode,
            int batteryPercent, List<String> subtypeIds,
            List<String> orderedItems, Map<String, String> persistedValues) {
        public int normalizedBatteryPercent() {
            return batteryPercent >= 10 && batteryPercent <= 100 ? batteryPercent : 50;
        }
    }

    /** F161 — execution-time disk-space preflight. */
    public record F161DiskPreflight(
            long requiredBytes, long availableBytes, long reservedHeadroomBytes,
            boolean skipCheck, String decision, String reason) {
        public static final long RESERVED_BYTES = 52_428_800L;
        public static final long MIN_HEADROOM_BYTES = 16_777_216L;
        public static F161DiskPreflight evaluate(long artifactBytes, long freeBytes, boolean skip) {
            long headroom = Math.max(MIN_HEADROOM_BYTES, artifactBytes / 100L);
            if (skip) return new F161DiskPreflight(artifactBytes + headroom, freeBytes,
                    RESERVED_BYTES, true, "SKIPPED", "skip_disk_space_checks");
            long usable = Math.max(0L, freeBytes - RESERVED_BYTES);
            boolean critical = usable <= RESERVED_BYTES;
            boolean enough = usable >= artifactBytes + headroom;
            return new F161DiskPreflight(artifactBytes + headroom, usable, RESERVED_BYTES,
                    false, enough ? "PASS" : (critical ? "CRITICAL_LOW_SPACE" : "INSUFFICIENT"),
                    enough ? "" : "insufficient_space");
        }
    }

    /** F166 — exact-alarm/boot recovery adapter boundary. */
    public record F166AlarmBootState(
            String scheduleId, String alarmState, boolean exactAlarmAvailable,
            boolean recoveryRequired, String bootRecoveryState, String failureReason) {
        public boolean shouldRecover(boolean scheduleEnabled) {
            return scheduleEnabled && exactAlarmAvailable;
        }
    }

    /** F169 — DataSync FGS runtime-governance boundary. */
    public record F169RuntimeGovernance(
            String sessionId, long rolling24hDurationMillis, long quotaMillis,
            boolean quotaBlocked, String terminalOutcome,
            String processRestartState, String pruningState) {
        public boolean withinQuota() {
            return rolling24hDurationMillis < quotaMillis;
        }
    }
}
