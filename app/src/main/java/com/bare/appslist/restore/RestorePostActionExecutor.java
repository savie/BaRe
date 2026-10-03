package com.bare.appslist.restore;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/**
 * Final restore actions run only after the selected restore work has produced
 * terminal outcomes. Actions are app-owned and contain no backend state.
 */
public final class RestorePostActionExecutor {
    public interface Action {
        void run() throws Exception;
    }

    public Result run(List<Action> actions) {
        List<String> failures = new ArrayList<>();
        if (actions != null) {
            for (Action action : actions) {
                if (action == null) continue;
                try {
                    action.run();
                } catch (Exception e) {
                    failures.add(e.getMessage() == null
                            ? e.getClass().getSimpleName()
                            : e.getMessage());
                }
            }
        }
        return new Result(failures);
    }

    public static final class Result {
        private final List<String> failures;

        Result(List<String> failures) {
            this.failures = Collections.unmodifiableList(new ArrayList<>(failures));
        }

        public boolean isSuccess() { return failures.isEmpty(); }
        public List<String> getFailures() { return failures; }
    }
}
