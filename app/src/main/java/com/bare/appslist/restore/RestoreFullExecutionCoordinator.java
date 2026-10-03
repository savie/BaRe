package com.bare.appslist.restore;

import java.io.File;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/**
 * Top-level app-side restore flow: staged artifacts -> selected part work ->
 * terminal outcomes -> optional final actions. No remote restore state is
 * persisted here.
 */
public final class RestoreFullExecutionCoordinator {
    private final RestorePartExecutionCoordinator parts;
    private final RestorePostActionExecutor postActions;

    public RestoreFullExecutionCoordinator() {
        this(new RestorePartExecutionCoordinator(), new RestorePostActionExecutor());
    }

    public RestoreFullExecutionCoordinator(
            RestorePartExecutionCoordinator parts,
            RestorePostActionExecutor postActions) {
        if (parts == null) throw new IllegalArgumentException("parts");
        if (postActions == null) throw new IllegalArgumentException("postActions");
        this.parts = parts;
        this.postActions = postActions;
    }

    public Result execute(
            String packageName,
            long installedUid,
            List<String> selectedParts,
            Map<String, File> stagedArtifacts,
            Map<String, RestorePartExecutor> executors,
            List<RestorePostActionExecutor.Action> actions) {
        RestorePartExecutionCoordinator.Result partResult =
                parts.execute(packageName, installedUid, selectedParts, stagedArtifacts, executors);

        RestorePostActionExecutor.Result postResult =
                partResult.getAggregateStatus()
                        == RestoreOutcomeAggregator.AggregateStatus.FAILED
                        ? new RestorePostActionExecutor.Result(Collections.singletonList(
                                "Post actions skipped because restore failed."))
                        : postActions.run(actions);

        return new Result(partResult, postResult);
    }

    public static final class Result {
        private final RestorePartExecutionCoordinator.Result partResult;
        private final RestorePostActionExecutor.Result postResult;

        Result(
                RestorePartExecutionCoordinator.Result partResult,
                RestorePostActionExecutor.Result postResult) {
            this.partResult = partResult;
            this.postResult = postResult;
        }

        public RestorePartExecutionCoordinator.Result getPartResult() { return partResult; }
        public RestorePostActionExecutor.Result getPostResult() { return postResult; }
        public boolean isSuccess() {
            return partResult.getAggregateStatus()
                    == RestoreOutcomeAggregator.AggregateStatus.RESTORED
                    && postResult.isSuccess();
        }
    }
}
