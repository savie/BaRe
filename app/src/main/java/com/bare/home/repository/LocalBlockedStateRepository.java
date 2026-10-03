package com.bare.home.repository;

import android.content.Context;
import android.content.SharedPreferences;

/** Local cache only. The app has no public writer for the blocked state. */
public final class LocalBlockedStateRepository implements BlockedStateRepository {
    private static final String PREFS = "bare_account_state";
    private static final String KEY_BLOCKED = "is_blocked";
    private final SharedPreferences prefs;

    public LocalBlockedStateRepository(Context context) {
        prefs = context.getApplicationContext().getSharedPreferences(PREFS, Context.MODE_PRIVATE);
    }

    @Override public boolean isBlocked() {
        return prefs.getBoolean(KEY_BLOCKED, false);
    }
}
