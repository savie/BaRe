package com.bare.home.repository;

import android.content.Context;
import android.content.SharedPreferences;

import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/** Reference-backed local persistence for the dashboard pinned action IDs. */
public final class LocalDashboardRepository implements DashboardRepository {
    private static final String PREFS = "bare_dashboard";
    private static final String KEY_PINNED_ACTIONS = "pinned_actions";
    private final SharedPreferences prefs;

    public LocalDashboardRepository(Context context) {
        prefs = context.getApplicationContext().getSharedPreferences(PREFS, Context.MODE_PRIVATE);
    }

    @Override public Set<Integer> getPinnedActionIds() {
        Set<String> stored = prefs.getStringSet(KEY_PINNED_ACTIONS, null);
        if (stored == null) {
            Set<Integer> defaults = new HashSet<>();
            defaults.add(101);
            defaults.add(201);
            return defaults;
        }
        Set<Integer> result = new HashSet<>();
        for (String value : stored) {
            try { result.add(Integer.parseInt(value)); } catch (NumberFormatException ignored) { }
        }
        return result;
    }

    @Override public void setPinnedActionIds(Set<Integer> ids) {
        Set<String> values = new HashSet<>();
        if (ids != null) for (Integer id : ids) if (id != null) values.add(String.valueOf(id));
        prefs.edit().putStringSet(KEY_PINNED_ACTIONS, values).apply();
    }
}
