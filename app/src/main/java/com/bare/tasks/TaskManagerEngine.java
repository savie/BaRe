package com.bare.tasks;

import com.bare.core.model.TaskResult;
import com.bare.core.model.TaskState;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/**
 * Static task-manager/provider lifecycle reconstructed from Reference hy7/pw6.
 *
 * The manager owns provider registration, overlap rejection, sequential
 * provider execution, cancellation observation, and terminal aggregation.
 * Foreground-service startup, Android lifecycle and runtime execution remain
 * outside this class.
 */
public final class TaskManagerEngine {
    public interface Provider {
        String name();
        void run() throws Exception;
        boolean isComplete();
        boolean isCancelled();
        String errorSummary();
    }

    public static final class RunResult {
        public final TaskResult result;
        public final int completedProviders;
        public final int failedProviders;
        public final List<String> errors;

        RunResult(TaskResult result, int completedProviders, int failedProviders,
                  List<String> errors) {
            this.result = result;
            this.completedProviders = completedProviders;
            this.failedProviders = failedProviders;
            this.errors = Collections.unmodifiableList(new ArrayList<>(errors));
        }
    }

    private final TaskStateRegistry stateRegistry;
    private final List<Provider> providers;
    private boolean running;
    private boolean cancelling;

    public TaskManagerEngine(TaskStateRegistry stateRegistry, List<Provider> providers) {
        if (stateRegistry == null) throw new IllegalArgumentException("stateRegistry");
        this.stateRegistry = stateRegistry;
        this.providers = Collections.unmodifiableList(new ArrayList<>(
                providers == null ? Collections.<Provider>emptyList() : providers));
    }

    public synchronized boolean isRunning() {
        return running;
    }

    public synchronized boolean isCancelling() {
        return cancelling;
    }

    public List<Provider> getProviders() {
        return providers;
    }

    /**
     * Reference hy7.b(): reject an overlapping run before registering providers.
     */
    public synchronized boolean register() {
        if (running || cancelling || providers.isEmpty()) return false;
        running = true;
        cancelling = false;
        stateRegistry.beginTask();
        return true;
    }

    /**
     * Reference hy7.g(): execute registered providers strictly in list order.
     */
    public RunResult execute() {
        synchronized (this) {
            if (!running) throw new IllegalStateException("task manager not registered");
        }

        stateRegistry.publishServiceState(TaskState.RUNNING);
        int completed = 0;
        int failed = 0;
        List<String> errors = new ArrayList<>();

        for (Provider provider : providers) {
            if (stateRegistry.isCancelRequested() || stateRegistry.isForceStopRequested()
                    || isCancelling()) {
                break;
            }
            if (provider == null) continue;

            try {
                provider.run();
                if (provider.isComplete()) {
                    completed++;
                } else if (provider.isCancelled()) {
                    break;
                } else {
                    completed++;
                }
                String summary = provider.errorSummary();
                if (summary != null && !summary.isEmpty()) errors.add(summary);
            } catch (Exception e) {
                failed++;
                errors.add(provider.name() + ": " + String.valueOf(e.getMessage()));
            }
        }

        boolean cancelled = stateRegistry.isCancelRequested()
                || stateRegistry.isForceStopRequested() || isCancelling();

        synchronized (this) {
            running = false;
            cancelling = false;
        }

        if (cancelled) {
            stateRegistry.publishServiceState(TaskState.CANCELLED);
            return new RunResult(TaskResult.CANCELLED, completed, failed, errors);
        }
        if (failed == 0) {
            stateRegistry.publishServiceState(TaskState.COMPLETE);
            return new RunResult(TaskResult.COMPLETED, completed, failed, errors);
        }

        stateRegistry.publishServiceState(TaskState.COMPLETE);
        return new RunResult(TaskResult.ERROR, completed, failed, errors);
    }

    public synchronized void cancel() {
        if (!running) return;
        cancelling = true;
        stateRegistry.requestCancel();
        stateRegistry.publishServiceState(TaskState.CANCELLED);
    }

    public synchronized void resetCancellation() {
        // The Reference task manager starts a new task lifecycle with fresh
        // cancellation state; registry remains the observation boundary.
        cancelling = false;
    }
}
