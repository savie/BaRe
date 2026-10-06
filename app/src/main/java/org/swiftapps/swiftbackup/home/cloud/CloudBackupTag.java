package org.swiftapps.swiftbackup.home.cloud;

import defpackage.ob1;
import defpackage.pe4;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.swiftapps.swiftbackup.model.app.AppCloudBackups;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class CloudBackupTag {
    public static final ob1 Companion = new ob1();
    private Integer callsBackupCount;
    private List<AppCloudBackups> cloudBackupsList;
    private Integer smsBackupCount;
    private Boolean toBeDeleted;
    private Boolean userCreated;

    public /* synthetic */ CloudBackupTag(List list, Integer num, Integer num2, Boolean bool, Boolean bool2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : list, (i & 2) != 0 ? null : num, (i & 4) != 0 ? null : num2, (i & 8) != 0 ? null : bool, (i & 16) != 0 ? null : bool2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ CloudBackupTag copy$default(CloudBackupTag cloudBackupTag, List list, Integer num, Integer num2, Boolean bool, Boolean bool2, int i, Object obj) {
        if ((i & 1) != 0) {
            list = cloudBackupTag.cloudBackupsList;
        }
        if ((i & 2) != 0) {
            num = cloudBackupTag.callsBackupCount;
        }
        if ((i & 4) != 0) {
            num2 = cloudBackupTag.smsBackupCount;
        }
        if ((i & 8) != 0) {
            bool = cloudBackupTag.userCreated;
        }
        if ((i & 16) != 0) {
            bool2 = cloudBackupTag.toBeDeleted;
        }
        Boolean bool3 = bool2;
        Integer num3 = num2;
        return cloudBackupTag.copy(list, num, num3, bool, bool3);
    }

    public final List<AppCloudBackups> component1() {
        return this.cloudBackupsList;
    }

    public final Integer component2() {
        return this.callsBackupCount;
    }

    public final Integer component3() {
        return this.smsBackupCount;
    }

    public final Boolean component4() {
        return this.userCreated;
    }

    public final Boolean component5() {
        return this.toBeDeleted;
    }

    public final CloudBackupTag copy(List<AppCloudBackups> list, Integer num, Integer num2, Boolean bool, Boolean bool2) {
        return new CloudBackupTag(list, num, num2, bool, bool2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CloudBackupTag)) {
            return false;
        }
        CloudBackupTag cloudBackupTag = (CloudBackupTag) obj;
        return pe4.d(this.cloudBackupsList, cloudBackupTag.cloudBackupsList) && pe4.d(this.callsBackupCount, cloudBackupTag.callsBackupCount) && pe4.d(this.smsBackupCount, cloudBackupTag.smsBackupCount) && pe4.d(this.userCreated, cloudBackupTag.userCreated) && pe4.d(this.toBeDeleted, cloudBackupTag.toBeDeleted);
    }

    public final Integer getCallsBackupCount() {
        return this.callsBackupCount;
    }

    public final List<AppCloudBackups> getCloudBackupsList() {
        return this.cloudBackupsList;
    }

    public final Integer getSmsBackupCount() {
        return this.smsBackupCount;
    }

    public final Boolean getToBeDeleted() {
        return this.toBeDeleted;
    }

    public final Boolean getUserCreated() {
        return this.userCreated;
    }

    public int hashCode() {
        List<AppCloudBackups> list = this.cloudBackupsList;
        int iHashCode = (list == null ? 0 : list.hashCode()) * 31;
        Integer num = this.callsBackupCount;
        int iHashCode2 = (iHashCode + (num == null ? 0 : num.hashCode())) * 31;
        Integer num2 = this.smsBackupCount;
        int iHashCode3 = (iHashCode2 + (num2 == null ? 0 : num2.hashCode())) * 31;
        Boolean bool = this.userCreated;
        int iHashCode4 = (iHashCode3 + (bool == null ? 0 : bool.hashCode())) * 31;
        Boolean bool2 = this.toBeDeleted;
        return iHashCode4 + (bool2 != null ? bool2.hashCode() : 0);
    }

    public final void setCallsBackupCount(Integer num) {
        this.callsBackupCount = num;
    }

    public final void setCloudBackupsList(List<AppCloudBackups> list) {
        this.cloudBackupsList = list;
    }

    public final void setSmsBackupCount(Integer num) {
        this.smsBackupCount = num;
    }

    public final void setToBeDeleted(Boolean bool) {
        this.toBeDeleted = bool;
    }

    public final void setUserCreated(Boolean bool) {
        this.userCreated = bool;
    }

    public String toString() {
        return "CloudBackupTag(cloudBackupsList=" + this.cloudBackupsList + ", callsBackupCount=" + this.callsBackupCount + ", smsBackupCount=" + this.smsBackupCount + ", userCreated=" + this.userCreated + ", toBeDeleted=" + this.toBeDeleted + ")";
    }

    public CloudBackupTag(List<AppCloudBackups> list, Integer num, Integer num2, Boolean bool, Boolean bool2) {
        this.cloudBackupsList = list;
        this.callsBackupCount = num;
        this.smsBackupCount = num2;
        this.userCreated = bool;
        this.toBeDeleted = bool2;
    }

    public CloudBackupTag() {
        this(null, null, null, null, null, 31, null);
    }
}
