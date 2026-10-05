package org.swiftapps.swiftbackup.model.firebase;

import defpackage.pe4;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class WallsCloudDetails {
    private Integer wallsBackupCount;

    public /* synthetic */ WallsCloudDetails(Integer num, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? 0 : num);
    }

    public static /* synthetic */ WallsCloudDetails copy$default(WallsCloudDetails wallsCloudDetails, Integer num, int i, Object obj) {
        if ((i & 1) != 0) {
            num = wallsCloudDetails.wallsBackupCount;
        }
        return wallsCloudDetails.copy(num);
    }

    public final Integer component1() {
        return this.wallsBackupCount;
    }

    public final WallsCloudDetails copy(Integer num) {
        return new WallsCloudDetails(num);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof WallsCloudDetails) && pe4.d(this.wallsBackupCount, ((WallsCloudDetails) obj).wallsBackupCount);
    }

    public final Integer getWallsBackupCount() {
        return this.wallsBackupCount;
    }

    public int hashCode() {
        Integer num = this.wallsBackupCount;
        if (num == null) {
            return 0;
        }
        return num.hashCode();
    }

    public final void setWallsBackupCount(Integer num) {
        this.wallsBackupCount = num;
    }

    public String toString() {
        return "WallsCloudDetails(wallsBackupCount=" + this.wallsBackupCount + ")";
    }

    public WallsCloudDetails(Integer num) {
        this.wallsBackupCount = num;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public WallsCloudDetails() {
        this(null, 1, 0 == true ? 1 : 0);
    }
}
