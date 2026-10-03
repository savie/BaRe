package com.bare.cloud.metadata;

/** Persisted wallpaper summary; nullable to match the recovered Reference model. */
public final class WallsCloudDetails {
    private Integer wallsBackupCount;

    public WallsCloudDetails() {
        this(null);
    }

    public WallsCloudDetails(Integer wallsBackupCount) {
        if (wallsBackupCount != null && wallsBackupCount < 0) {
            throw new IllegalArgumentException("wallsBackupCount");
        }
        this.wallsBackupCount = wallsBackupCount;
    }

    public Integer getWallsBackupCount() { return wallsBackupCount; }

    public void setWallsBackupCount(Integer value) {
        if (value != null && value < 0) throw new IllegalArgumentException("wallsBackupCount");
        wallsBackupCount = value;
    }
}
