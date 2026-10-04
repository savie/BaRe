package com.bare.cloud.metadata;

/** Wi-Fi summary metadata; nullable fields match the recovered Reference model. */
public final class WifiCloudDetails {
    private String driveId;
    private Long fileSize;
    private Integer wifiNetworksCount;

    public WifiCloudDetails() {
        this(null, null, null);
    }

    public WifiCloudDetails(String driveId, Long fileSize, Integer wifiNetworksCount) {
        this.driveId = driveId;
        this.fileSize = fileSize;
        this.wifiNetworksCount = wifiNetworksCount;
    }

    public String getDriveId() { return driveId; }
    public Long getFileSize() { return fileSize; }
    public Integer getWifiNetworksCount() { return wifiNetworksCount; }

    public void setDriveId(String value) { driveId = value; }
    public void setFileSize(Long value) {
        fileSize = value;
    }
    public void setWifiNetworksCount(Integer value) {
        wifiNetworksCount = value;
    }
}
