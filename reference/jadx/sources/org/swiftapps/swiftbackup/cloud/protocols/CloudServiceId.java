package org.swiftapps.swiftbackup.cloud.protocols;

import defpackage.lj1;
import defpackage.nh4;
import defpackage.pe4;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class CloudServiceId {
    public static final lj1 Companion = new lj1();
    private final String id;
    private final int version;

    /* JADX WARN: Illegal instructions before constructor call */
    public CloudServiceId(int i, String str, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        i = (i2 & 1) != 0 ? 1 : i;
        if ((i2 & 2) != 0) {
            str = nh4.d.i(6, true, true);
            str.getClass();
        }
        this(i, str);
    }

    public static /* synthetic */ CloudServiceId copy$default(CloudServiceId cloudServiceId, int i, String str, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = cloudServiceId.version;
        }
        if ((i2 & 2) != 0) {
            str = cloudServiceId.id;
        }
        return cloudServiceId.copy(i, str);
    }

    public final int component1() {
        return this.version;
    }

    public final String component2() {
        return this.id;
    }

    public final CloudServiceId copy(int i, String str) {
        str.getClass();
        return new CloudServiceId(i, str);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CloudServiceId)) {
            return false;
        }
        CloudServiceId cloudServiceId = (CloudServiceId) obj;
        return this.version == cloudServiceId.version && pe4.d(this.id, cloudServiceId.id);
    }

    public final String getId() {
        return this.id;
    }

    public final int getVersion() {
        return this.version;
    }

    public int hashCode() {
        return this.id.hashCode() + (Integer.hashCode(this.version) * 31);
    }

    public String toString() {
        return "CloudServiceId(version=" + this.version + ", id=" + this.id + ")";
    }

    public CloudServiceId(int i, String str) {
        str.getClass();
        this.version = i;
        this.id = str;
    }

    public CloudServiceId() {
        this(0, null, 3, null);
    }
}
