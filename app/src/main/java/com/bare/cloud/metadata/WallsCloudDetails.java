package com.bare.cloud.metadata;

/** Persisted wallpaper summary; nullable to match the recovered Reference model. */
public final class WallsCloudDetails {
    private Integer wallsBackupCount;

    public WallsCloudDetails() {
        this(0);
    }

    public WallsCloudDetails(Integer wallsBackupCount) {
        this.wallsBackupCount = wallsBackupCount;
    }

    public Integer getWallsBackupCount() { return wallsBackupCount; }

    public void setWallsBackupCount(Integer value) {
        wallsBackupCount = value;
    }
}
