package com.bare.appslist.restore;

import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/**
 * Phase-6 per-part restore coordinator.
 *
 * Coordinates already-resolved local artifacts and per-part executors. It
 * records a terminal outcome for every selected part and never persists
 * restore state remotely.
 */
public final class RestorePartExecutionCoordinator {
    public Result execute(
            String packageName,
            long installedUid,
            List<String> selectedParts,
            Map<String, File> stagedArtifacts,
            Map<String, RestorePartExecutor> executors) {
        if (packageName == null || packageName.isEmpty()) {
            throw new IllegalArgumentException("packageName");
        }
        if (installedUid < 0) throw new IllegalArgumentException("installedUid");

        RestoreOutcomeAggregator aggregate = new RestoreOutcomeAggregator();
        List<RestorePartOutcome> outcomes = new ArrayList<>();

        if (selectedParts != null) {
            for (String partId : selectedParts) {
                if (partId == null || partId.isEmpty()) continue;

                File artifact = stagedArtifacts == null ? null : stagedArtifacts.get(partId);
                RestorePartExecutor executor = executors == null ? null : executors.get(partId);

                if (artifact == null) {
                    RestorePartOutcome outcome =
                            new RestorePartOutcome(
                                    partId,
                                    RestorePartOutcome.Status.NO_BACKUP,
                                    "No staged artifact is available.");
                    aggregate.record(outcome);
                    outcomes.add(outcome);
                    continue;
                }

                if (executor == null) {
                    RestorePartOutcome outcome =
                            new RestorePartOutcome(
                                    partId,
                                    RestorePartOutcome.Status.TARGET_UNAVAILABLE,
                                    "No executor is registered for this restore part.");
                    aggregate.record(outcome);
                    outcomes.add(outcome);
                    continue;
                }

                try {
                    RestorePartExecutor.Result result = executor.execute(
                            new RestorePartExecutor.Request(
                                    packageName, partId, artifact, installedUid));
                    if (result == null) {
                        throw new IllegalStateException("Part executor returned null result.");
                    }
                    RestorePartOutcome outcome = result.toOutcome(partId);
                    aggregate.record(outcome);
                    outcomes.add(outcome);
                } catch (Exception e) {
                    RestorePartOutcome outcome =
                            new RestorePartOutcome(
                                    partId,
                                    RestorePartOutcome.Status.FAILED,
                                    e.getMessage() == null
                                            ? e.getClass().getSimpleName()
                                            : e.getMessage());
                    aggregate.record(outcome);
                    outcomes.add(outcome);
                }
            }
        }

        return new Result(outcomes, aggregate.aggregate());
    }

    public static final class Result {
        private final List<RestorePartOutcome> outcomes;
        private final RestoreOutcomeAggregator.AggregateStatus aggregateStatus;

        Result(
                List<RestorePartOutcome> outcomes,
                RestoreOutcomeAggregator.AggregateStatus aggregateStatus) {
            this.outcomes = Collections.unmodifiableList(new ArrayList<>(outcomes));
            this.aggregateStatus = aggregateStatus;
        }

        public List<RestorePartOutcome> getOutcomes() { return outcomes; }
        public RestoreOutcomeAggregator.AggregateStatus getAggregateStatus() {
            return aggregateStatus;
        }
    }
}
