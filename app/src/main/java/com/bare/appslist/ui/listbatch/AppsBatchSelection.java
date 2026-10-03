package com.bare.appslist.ui.listbatch;

import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

/** F05 batch-selection state; execution remains delegated to task owners. */
public final class AppsBatchSelection {
    private final LinkedHashSet<String> selected = new LinkedHashSet<>();

    public void select(String packageName) {
        if (packageName != null && !packageName.isEmpty()) selected.add(packageName);
    }

    public void deselect(String packageName) {
        if (packageName != null) selected.remove(packageName);
    }

    public void toggle(String packageName) {
        if (selected.contains(packageName)) deselect(packageName);
        else select(packageName);
    }

    public void clear() {
        selected.clear();
    }

    public boolean contains(String packageName) {
        return selected.contains(packageName);
    }

    public List<String> snapshot() {
        return new ArrayList<>(selected);
    }

    public AppsBatchState toState(String action) {
        return new AppsBatchState(snapshot(), action);
    }
}
