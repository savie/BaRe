package com.bare.tasks;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/**
 * Source-level owner registry for Reference task providers.
 *
 * Feature domains register concrete providers here. TaskService consumes the
 * snapshot and never treats an empty registry as successful execution.
 */
public final class TaskProviderRegistry {
    private static final TaskProviderRegistry INSTANCE = new TaskProviderRegistry();
    private final List<TaskManagerEngine.Provider> providers = new ArrayList<>();

    private TaskProviderRegistry() {}

    public static TaskProviderRegistry getInstance() {
        return INSTANCE;
    }

    public synchronized void replace(List<TaskManagerEngine.Provider> next) {
        providers.clear();
        if (next != null) {
            for (TaskManagerEngine.Provider provider : next) {
                if (provider != null) providers.add(provider);
            }
        }
    }

    public synchronized void add(TaskManagerEngine.Provider provider) {
        if (provider != null) providers.add(provider);
    }

    public synchronized List<TaskManagerEngine.Provider> snapshot() {
        return Collections.unmodifiableList(
                new ArrayList<>(providers));
    }
}
