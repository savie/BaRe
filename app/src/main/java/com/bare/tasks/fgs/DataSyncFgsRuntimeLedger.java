package com.bare.tasks.fgs;

import com.bare.schedule.contracts.ReScheduleContracts;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/**
 * P5.5 F76/F169 static ledger domain owner.
 *
 * Persistence/Android FGS lifecycle wiring remains downstream. This class only
 * defines the observed ledger data, quota calculation, restart reconciliation,
 * terminal closure and retention decisions.
 */
public final class DataSyncFgsRuntimeLedger {
    public static final long ROLLING_WINDOW_MILLIS = 24L * 60L * 60L * 1000L;
    public static final String PROCESS_RESTARTED = "PROCESS_RESTARTED";
    public static final String START_BLOCKED_QUOTA = "START_BLOCKED_QUOTA";

    private DataSyncFgsRuntimeLedger() {}

    public static long rollingUsage(List<ReScheduleContracts.F76RuntimeLedgerEntry> entries,
                                    long nowMillis) {
        long cutoff = nowMillis - ROLLING_WINDOW_MILLIS;
        long total = 0L;
        for (ReScheduleContracts.F76RuntimeLedgerEntry entry : entries) {
            if (entry.startTimeMillis() >= cutoff) {
                total += entry.durationMillis(nowMillis);
            }
        }
        return total;
    }

    public static boolean quotaAllows(List<ReScheduleContracts.F76RuntimeLedgerEntry> entries,
                                      long nowMillis, long quotaMillis) {
        return rollingUsage(entries, nowMillis) < quotaMillis;
    }

    public static List<ReScheduleContracts.F76RuntimeLedgerEntry> reconcileProcessRestart(
            List<ReScheduleContracts.F76RuntimeLedgerEntry> entries) {
        List<ReScheduleContracts.F76RuntimeLedgerEntry> result = new ArrayList<>(entries);
        for (int i = 0; i < result.size(); i++) {
            ReScheduleContracts.F76RuntimeLedgerEntry e = result.get(i);
            if (e.endTimeMillis() == null) {
                result.set(i, new ReScheduleContracts.F76RuntimeLedgerEntry(
                        e.id(), e.serviceName(), e.startTimeMillis(), e.startTimeMillis(),
                        e.scheduleRun(), e.forcedRun(), e.runMode(), PROCESS_RESTARTED, e.note()));
            }
        }
        return result;
    }

    public static List<ReScheduleContracts.F76RuntimeLedgerEntry> pruneBefore(
            List<ReScheduleContracts.F76RuntimeLedgerEntry> entries, long cutoffMillis) {
        List<ReScheduleContracts.F76RuntimeLedgerEntry> result = new ArrayList<>();
        for (ReScheduleContracts.F76RuntimeLedgerEntry entry : entries) {
            Long end = entry.endTimeMillis();
            if (end == null || end >= cutoffMillis) result.add(entry);
        }
        return result;
    }
}
