package com.bare.schedule.contracts;

import java.util.List;
import java.util.Map;

/**
 * P5.5 R-E bounded scheduler/task contracts.
 *
 * Static/domain contracts only. Alarm delivery, Android FGS execution, task
 * execution, filesystem mutation and device/runtime effects remain downstream.
 */
public final class ReScheduleContracts {
    private ReScheduleContracts() {}

    /** F22 — schedule state/service boundary. */
    public record F22ScheduleState(
            boolean enabled,
            boolean runnable,
            boolean forced,
            String repeatMode,
            String nextRunState,
            String lastRunState) {}

    /** F27 — task lifecycle/UI/service boundary. */
    public record F27TaskLifecycle(
            String taskId,
            String state,
            int progress,
            String preconditionState,
            String cancellationState,
            String terminalResult) {}

    /** F50 — schedule selection and last-run diagnostic boundary. */
    public record F50ScheduleSelection(
            List<String> selectedLabels,
            List<String> selectedFolders,
            String lastRunState,
            String lastRunDetail,
            String blockedReason) {}

    /** F74 — scheduler eligibility/handoff boundary. */
    public record F74Eligibility(
            boolean enabled,
            boolean runnable,
            boolean forced,
            boolean chargingSatisfied,
            boolean batterySatisfied,
            boolean cloudSatisfied,
            String decision,
            String handoffState) {}

    /** F75 — task-manager/provider lifecycle boundary. */
    public record F75ProviderRun(
            String providerId,
            String taskId,
            String state,
            int progress,
            boolean overlapBlocked,
            boolean cancellationRequested,
            String terminalResult) {}

    /** F76 — DataSync FGS runtime-ledger boundary. */
    public record F76RuntimeLedgerEntry(
            String sessionId,
            long startTimeMillis,
            long endTimeMillis,
            long durationMillis,
            String terminalState,
            String restartReconciliationState) {}

    /** F77 — Apps task execution input/state boundary. */
    public record F77AppsTask(
            String taskId,
            List<String> packageNames,
            String operation,
            String destination,
            String state,
            boolean cancellationRequested) {}

    /** F107 — scheduled Apps Quick Actions preparation. */
    public record F107QuickActionsPreparation(
            List<String> quickActionIds,
            List<String> packageNames,
            String partSelection,
            String location,
            boolean syncEnabled,
            String lastRunState) {}

    /** F108 — scheduled Apps custom-config preparation. */
    public record F108ConfigPreparation(
            String configId,
            String cloudDestination,
            boolean fallbackUsed,
            String taskProjection,
            String lastRunState) {}

    /** F109 — scheduled Apps label-selection preparation. */
    public record F109LabelPreparation(
            String labelId,
            List<String> packageNames,
            List<String> matchedPackages,
            String partSelection,
            String orderingState,
            String lastRunState) {}

    /** F122 — persisted ScheduleData aggregate. */
    public record F122ScheduleAggregate(
            String scheduleId,
            String batteryMode,
            List<String> subtypeIds,
            List<String> orderedItems,
            Map<String, String> persistedValues) {}

    /** F161 — execution-time disk-space preflight. */
    public record F161DiskPreflight(
            long requiredBytes,
            long availableBytes,
            long reservedHeadroomBytes,
            boolean skipCheck,
            String decision,
            String reason) {}

    /** F166 — exact-alarm/boot recovery adapter boundary. */
    public record F166AlarmBootState(
            String scheduleId,
            String alarmState,
            boolean exactAlarmAvailable,
            boolean recoveryRequired,
            String bootRecoveryState,
            String failureReason) {}

    /** F169 — DataSync FGS runtime-governance boundary. */
    public record F169RuntimeGovernance(
            String sessionId,
            long rolling24hDurationMillis,
            long quotaMillis,
            boolean quotaBlocked,
            String terminalOutcome,
            String processRestartState,
            String pruningState) {}
}
