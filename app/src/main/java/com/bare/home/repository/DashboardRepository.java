package com.bare.home.repository;

import java.util.Set;

/** Persists dashboard quick-action selection. Reference key: pinned_actions. */
public interface DashboardRepository {
    Set<Integer> getPinnedActionIds();
    void setPinnedActionIds(Set<Integer> ids);
}
