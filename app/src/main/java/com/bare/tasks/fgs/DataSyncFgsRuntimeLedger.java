package com.bare.tasks.fgs;

import com.bare.schedule.contracts.ReScheduleContracts;

import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

/**
 * P5.5 F76/F169 static ledger domain owner.
 *
 * The Reference ledger stores DataSync FGS sessions with an id, service name,
 * start/end timestamps, schedule/forced flags, run mode, outcome and note.
 * Persistence and Android FGS lifecycle wiring remain downstream; this class
 * deliberately stays a pure domain boundary.
 */
public final class DataSyncFgsRuntimeLedger {
    public static final long ROLLING_WINDOW_MILLIS = 24L * 60L * 60L * 1000L;
    public static final int RETAINED_ENTRY_LIMIT = 200;
    public static final String PROCESS_RESTARTED =
            ReScheduleContracts.F76Outcome.PROCESS_RESTARTED.name();
    public static final String START_BLOCKED_QUOTA =
            ReScheduleContracts.F76Outcome.START_BLOCKED_QUOTA.name();

    private DataSyncFgsRuntimeLedger() {}

    public static ReScheduleContracts.F76RuntimeLedgerEntry start(
            String serviceName, String runMode, boolean scheduleRun, boolean forcedRun,
            long startMillis) {
        return new ReScheduleContracts.F76RuntimeLedgerEntry(
                UUID.randomUUID().toString(), serviceName, startMillis, null,
                scheduleRun, forcedRun, runMode, null, null);
    }

    public static ReScheduleContracts.F76RuntimeLedgerEntry quotaBlocked(
            String serviceName, String runMode, boolean scheduleRun, boolean forcedRun,
            String note, long nowMillis) {
        return new ReScheduleContracts.F76RuntimeLedgerEntry(
                UUID.randomUUID().toString(), serviceName, nowMillis, nowMillis,
                scheduleRun, forcedRun, runMode, START_BLOCKED_QUOTA, note);
    }

    public static List<ReScheduleContracts.F76RuntimeLedgerEntry> finish(
            List<ReScheduleContracts.F76RuntimeLedgerEntry> entries,
            String sessionId, String outcome, String note, long endMillis) {
        List<ReScheduleContracts.F76RuntimeLedgerEntry> result = new ArrayList<>(entries);
        for (int i = 0; i < result.size(); i++) {
            ReScheduleContracts.F76RuntimeLedgerEntry e = result.get(i);
            if (e.id().equals(sessionId)) {
                result.set(i, new ReScheduleContracts.F76RuntimeLedgerEntry(
                        e.id(), e.serviceName(), e.startTimeMillis(), endMillis,
                        e.scheduleRun(), e.forcedRun(), e.runMode(), outcome, note));
            }
        }
        return prune(result, endMillis);
    }

    public static long rollingUsage(
            List<ReScheduleContracts.F76RuntimeLedgerEntry> entries,
            long nowMillis) {
        long cutoff = nowMillis - ROLLING_WINDOW_MILLIS;
        long total = 0L;
        for (ReScheduleContracts.F76RuntimeLedgerEntry entry : entries) {
            long end = entry.endTimeMillis() == null ? nowMillis : entry.endTimeMillis();
            long effectiveStart = Math.max(entry.startTimeMillis(), cutoff);
            long effectiveEnd = Math.min(end, nowMillis);
            if (effectiveEnd > effectiveStart) {
                total += effectiveEnd - effectiveStart;
            }
        }
        return total;
    }

    public static boolean quotaAllows(
            List<ReScheduleContracts.F76RuntimeLedgerEntry> entries,
            long nowMillis, long quotaMillis) {
        return rollingUsage(entries, nowMillis) < quotaMillis;
    }

    public static List<ReScheduleContracts.F76RuntimeLedgerEntry> reconcileProcessRestart(
            List<ReScheduleContracts.F76RuntimeLedgerEntry> entries, long nowMillis) {
        List<ReScheduleContracts.F76RuntimeLedgerEntry> result = new ArrayList<>(entries);
        for (int i = 0; i < result.size(); i++) {
            ReScheduleContracts.F76RuntimeLedgerEntry e = result.get(i);
            if (e.endTimeMillis() == null) {
                result.set(i, new ReScheduleContracts.F76RuntimeLedgerEntry(
                        e.id(), e.serviceName(), e.startTimeMillis(), nowMillis,
                        e.scheduleRun(), e.forcedRun(), e.runMode(), PROCESS_RESTARTED, e.note()));
            }
        }
        return prune(result, nowMillis);
    }

    public static List<ReScheduleContracts.F76RuntimeLedgerEntry> prune(
            List<ReScheduleContracts.F76RuntimeLedgerEntry> entries, long nowMillis) {
        long cutoff = nowMillis - ROLLING_WINDOW_MILLIS;
        List<ReScheduleContracts.F76RuntimeLedgerEntry> retained = new ArrayList<>();
        for (ReScheduleContracts.F76RuntimeLedgerEntry entry : entries) {
            Long end = entry.endTimeMillis();
            if (end == null || end >= cutoff) {
                retained.add(entry);
            }
        }
        if (retained.size() <= RETAINED_ENTRY_LIMIT) {
            return retained;
        }
        return new ArrayList<>(
                retained.subList(retained.size() - RETAINED_ENTRY_LIMIT, retained.size()));
    }

    /** Compatibility alias for callers that already use an explicit cutoff. */
    public static List<ReScheduleContracts.F76RuntimeLedgerEntry> pruneBefore(
            List<ReScheduleContracts.F76RuntimeLedgerEntry> entries, long cutoffMillis) {
        List<ReScheduleContracts.F76RuntimeLedgerEntry> result = new ArrayList<>();
        for (ReScheduleContracts.F76RuntimeLedgerEntry entry : entries) {
            Long end = entry.endTimeMillis();
            if (end == null || end >= cutoffMillis) {
                result.add(entry);
            }
        }
        if (result.size() <= RETAINED_ENTRY_LIMIT) return result;
        return new ArrayList<>(
                result.subList(result.size() - RETAINED_ENTRY_LIMIT, result.size()));
    }
}
