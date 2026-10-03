package com.bare.cloud.metadata;

/** Wi-Fi summary metadata plus an external provider artifact reference. */
public final class WifiCloudDetails {
    private final String driveId;
    private final long fileSize;
    private final int wifiNetworksCount;
    public WifiCloudDetails(String driveId, long fileSize, int wifiNetworksCount) {
        if (driveId == null || driveId.isEmpty()) throw new IllegalArgumentException("driveId");
        if (fileSize < 0 || wifiNetworksCount < 0) throw new IllegalArgumentException("metadata");
        this.driveId = driveId;
        this.fileSize = fileSize;
        this.wifiNetworksCount = wifiNetworksCount;
    }
    public String getDriveId() { return driveId; }
    public long getFileSize() { return fileSize; }
    public int getWifiNetworksCount() { return wifiNetworksCount; }
}
