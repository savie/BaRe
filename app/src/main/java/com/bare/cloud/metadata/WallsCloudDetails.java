package com.bare.cloud.metadata;

/** Persisted wallpaper summary; provider artifact data stays outside this model. */
public final class WallsCloudDetails {
    private final int wallsBackupCount;
    public WallsCloudDetails(int wallsBackupCount) {
        if (wallsBackupCount < 0) throw new IllegalArgumentException("wallsBackupCount");
        this.wallsBackupCount = wallsBackupCount;
    }
    public int getWallsBackupCount() { return wallsBackupCount; }
}
