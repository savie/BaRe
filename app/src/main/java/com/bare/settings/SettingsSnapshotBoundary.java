package com.bare.settings;

/** Explicit snapshot boundary for account-owned settings; runtime/device state stays outside. */
public interface SettingsSnapshotBoundary {
    String exportSnapshot();
    boolean restoreSnapshot(String serialized);
}
