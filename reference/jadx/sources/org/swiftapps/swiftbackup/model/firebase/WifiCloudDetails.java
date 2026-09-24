package org.swiftapps.swiftbackup.model.firebase;

import defpackage.pe4;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class WifiCloudDetails {
    private String driveId;
    private Long fileSize;
    private Integer wifiNetworksCount;

    public /* synthetic */ WifiCloudDetails(String str, Long l, Integer num, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : l, (i & 4) != 0 ? 0 : num);
    }

    public static /* synthetic */ WifiCloudDetails copy$default(WifiCloudDetails wifiCloudDetails, String str, Long l, Integer num, int i, Object obj) {
        if ((i & 1) != 0) {
            str = wifiCloudDetails.driveId;
        }
        if ((i & 2) != 0) {
            l = wifiCloudDetails.fileSize;
        }
        if ((i & 4) != 0) {
            num = wifiCloudDetails.wifiNetworksCount;
        }
        return wifiCloudDetails.copy(str, l, num);
    }

    public final String component1() {
        return this.driveId;
    }

    public final Long component2() {
        return this.fileSize;
    }

    public final Integer component3() {
        return this.wifiNetworksCount;
    }

    public final WifiCloudDetails copy(String str, Long l, Integer num) {
        return new WifiCloudDetails(str, l, num);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof WifiCloudDetails)) {
            return false;
        }
        WifiCloudDetails wifiCloudDetails = (WifiCloudDetails) obj;
        return pe4.d(this.driveId, wifiCloudDetails.driveId) && pe4.d(this.fileSize, wifiCloudDetails.fileSize) && pe4.d(this.wifiNetworksCount, wifiCloudDetails.wifiNetworksCount);
    }

    public final String getDriveId() {
        return this.driveId;
    }

    public final Long getFileSize() {
        return this.fileSize;
    }

    public final Integer getWifiNetworksCount() {
        return this.wifiNetworksCount;
    }

    public int hashCode() {
        String str = this.driveId;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        Long l = this.fileSize;
        int iHashCode2 = (iHashCode + (l == null ? 0 : l.hashCode())) * 31;
        Integer num = this.wifiNetworksCount;
        return iHashCode2 + (num != null ? num.hashCode() : 0);
    }

    public final void setDriveId(String str) {
        this.driveId = str;
    }

    public final void setFileSize(Long l) {
        this.fileSize = l;
    }

    public final void setWifiNetworksCount(Integer num) {
        this.wifiNetworksCount = num;
    }

    public String toString() {
        return "WifiCloudDetails(driveId=" + this.driveId + ", fileSize=" + this.fileSize + ", wifiNetworksCount=" + this.wifiNetworksCount + ")";
    }

    public WifiCloudDetails(String str, Long l, Integer num) {
        this.driveId = str;
        this.fileSize = l;
        this.wifiNetworksCount = num;
    }

    public WifiCloudDetails() {
        this(null, null, null, 7, null);
    }
}
