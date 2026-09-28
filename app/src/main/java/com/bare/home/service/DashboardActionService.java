package com.bare.home.service;

import com.bare.home.repository.DashboardRepository;

import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/** Owns pinned dashboard action state; execution is delegated to an injected executor. */
public final class DashboardActionService {
    private final DashboardRepository repository;
    private final Executor executor;

    public DashboardActionService(DashboardRepository repository, Executor executor) {
        this.repository = repository;
        this.executor = executor;
    }

    public Set<Integer> loadPinnedActionIds() {
        return Collections.unmodifiableSet(new HashSet<>(repository.getPinnedActionIds()));
    }

    public void setPinnedActionIds(Set<Integer> ids) {
        repository.setPinnedActionIds(ids);
    }

    public boolean execute(int actionId) {
        return executor.execute(actionId);
    }

    public interface Executor {
        boolean execute(int actionId);
    }
}
