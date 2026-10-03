package com.bare.appslist.restore;

import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/**
 * Phase-6 restore outcome aggregation boundary.
 *
 * The Reference reports restore status per selected part and does not treat
 * "some work happened" as equivalent to every part being restored. This
 * aggregator keeps one terminal outcome per part and derives the aggregate
 * state without introducing backend persistence.
 */
public final class RestoreOutcomeAggregator {
    public enum AggregateStatus {
        RESTORED,
        PARTIAL,
        FAILED,
        SKIPPED,
        NO_RESTORABLE_PARTS
    }

    private final LinkedHashMap<String, RestorePartOutcome> outcomes = new LinkedHashMap<>();

    public void record(RestorePartOutcome outcome) {
        if (outcome == null) throw new IllegalArgumentException("outcome");
        String partId = outcome.getPartId();
        if (outcomes.containsKey(partId)) {
            throw new IllegalStateException("Outcome already recorded for part: " + partId);
        }
        outcomes.put(partId, outcome);
    }

    public void recordAll(List<RestorePartOutcome> values) {
        if (values == null) return;
        for (RestorePartOutcome value : values) record(value);
    }

    public boolean isCompleteFor(List<String> selectedParts) {
        if (selectedParts == null) return outcomes.isEmpty();
        for (String partId : selectedParts) {
            if (partId != null && !partId.isEmpty() && !outcomes.containsKey(partId)) {
                return false;
            }
        }
        return true;
    }

    public List<RestorePartOutcome> getOutcomes() {
        return Collections.unmodifiableList(new ArrayList<>(outcomes.values()));
    }

    public Map<String, RestorePartOutcome> getByPartId() {
        return Collections.unmodifiableMap(new LinkedHashMap<>(outcomes));
    }

    public AggregateStatus aggregate() {
        if (outcomes.isEmpty()) return AggregateStatus.NO_RESTORABLE_PARTS;

        boolean restored = false;
        boolean failed = false;
        boolean skipped = false;
        boolean noBackup = false;

        for (RestorePartOutcome outcome : outcomes.values()) {
            switch (outcome.getStatus()) {
                case RESTORED:
                    restored = true;
                    break;
                case FAILED:
                case TARGET_UNAVAILABLE:
                    failed = true;
                    break;
                case SKIPPED:
                    skipped = true;
                    break;
                case NO_BACKUP:
                    noBackup = true;
                    break;
                default:
                    throw new IllegalStateException("Unhandled outcome: "
                            + outcome.getStatus());
            }
        }

        if (restored && !failed && !skipped && !noBackup) {
            return AggregateStatus.RESTORED;
        }
        if (failed) {
            return restored ? AggregateStatus.PARTIAL : AggregateStatus.FAILED;
        }
        if (restored) return AggregateStatus.PARTIAL;
        return AggregateStatus.SKIPPED;
    }
}
