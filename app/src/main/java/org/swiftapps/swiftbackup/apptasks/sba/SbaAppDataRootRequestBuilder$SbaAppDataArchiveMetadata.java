package org.swiftapps.swiftbackup.apptasks.sba;

import defpackage.dj7;
import defpackage.eq3;
import defpackage.fz5;
import defpackage.pe4;
import defpackage.xs1;
import defpackage.y77;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
final class SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata {

    @y77("appId")
    private final String appId;

    @y77("backupCache")
    private final boolean backupCache;

    @y77("compressionLevel")
    private final String compressionLevel;

    @y77("dataSize")
    private final long dataSize;

    @y77("deDataSize")
    private final long deDataSize;

    @y77("encrypted")
    private final boolean encrypted;

    @y77("entries")
    private final List<String> entries;

    @y77("includeDeviceProtectedData")
    private final boolean includeDeviceProtectedData;

    @y77("kind")
    private final String kind;

    @y77("packageName")
    private final String packageName;

    @y77("version")
    private final int version;

    @y77("versionCode")
    private final Long versionCode;

    @y77("versionName")
    private final String versionName;

    public /* synthetic */ SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata(String str, int i, String str2, String str3, String str4, Long l, boolean z, boolean z2, String str5, boolean z3, long j, long j2, List list, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? "swiftbackup.app-data" : str, (i2 & 2) != 0 ? 1 : i, str2, str3, str4, l, z, z2, str5, z3, j, j2, list);
    }

    public final String component1() {
        return this.kind;
    }

    public final boolean component10() {
        return this.encrypted;
    }

    public final long component11() {
        return this.dataSize;
    }

    public final long component12() {
        return this.deDataSize;
    }

    public final List<String> component13() {
        return this.entries;
    }

    public final int component2() {
        return this.version;
    }

    public final String component3() {
        return this.packageName;
    }

    public final String component4() {
        return this.appId;
    }

    public final String component5() {
        return this.versionName;
    }

    public final Long component6() {
        return this.versionCode;
    }

    public final boolean component7() {
        return this.backupCache;
    }

    public final boolean component8() {
        return this.includeDeviceProtectedData;
    }

    public final String component9() {
        return this.compressionLevel;
    }

    public final SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata copy(String str, int i, String str2, String str3, String str4, Long l, boolean z, boolean z2, String str5, boolean z3, long j, long j2, List<String> list) {
        str.getClass();
        str2.getClass();
        str3.getClass();
        str5.getClass();
        list.getClass();
        return new SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata(str, i, str2, str3, str4, l, z, z2, str5, z3, j, j2, list);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata)) {
            return false;
        }
        SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata sbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata = (SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata) obj;
        return pe4.d(this.kind, sbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata.kind) && this.version == sbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata.version && pe4.d(this.packageName, sbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata.packageName) && pe4.d(this.appId, sbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata.appId) && pe4.d(this.versionName, sbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata.versionName) && pe4.d(this.versionCode, sbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata.versionCode) && this.backupCache == sbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata.backupCache && this.includeDeviceProtectedData == sbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata.includeDeviceProtectedData && pe4.d(this.compressionLevel, sbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata.compressionLevel) && this.encrypted == sbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata.encrypted && this.dataSize == sbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata.dataSize && this.deDataSize == sbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata.deDataSize && pe4.d(this.entries, sbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata.entries);
    }

    public final String getAppId() {
        return this.appId;
    }

    public final boolean getBackupCache() {
        return this.backupCache;
    }

    public final String getCompressionLevel() {
        return this.compressionLevel;
    }

    public final long getDataSize() {
        return this.dataSize;
    }

    public final long getDeDataSize() {
        return this.deDataSize;
    }

    public final boolean getEncrypted() {
        return this.encrypted;
    }

    public final List<String> getEntries() {
        return this.entries;
    }

    public final boolean getIncludeDeviceProtectedData() {
        return this.includeDeviceProtectedData;
    }

    public final String getKind() {
        return this.kind;
    }

    public final String getPackageName() {
        return this.packageName;
    }

    public final int getVersion() {
        return this.version;
    }

    public final Long getVersionCode() {
        return this.versionCode;
    }

    public final String getVersionName() {
        return this.versionName;
    }

    public int hashCode() {
        int iG = fz5.g(fz5.g(eq3.d(this.version, this.kind.hashCode() * 31, 31), 31, this.packageName), 31, this.appId);
        String str = this.versionName;
        int iHashCode = (iG + (str == null ? 0 : str.hashCode())) * 31;
        Long l = this.versionCode;
        return this.entries.hashCode() + xs1.f(this.deDataSize, xs1.f(this.dataSize, fz5.h(fz5.g(fz5.h(fz5.h((iHashCode + (l != null ? l.hashCode() : 0)) * 31, 31, this.backupCache), 31, this.includeDeviceProtectedData), 31, this.compressionLevel), 31, this.encrypted), 31), 31);
    }

    public String toString() {
        String str = this.kind;
        int i = this.version;
        String str2 = this.packageName;
        String str3 = this.appId;
        String str4 = this.versionName;
        Long l = this.versionCode;
        boolean z = this.backupCache;
        boolean z2 = this.includeDeviceProtectedData;
        String str5 = this.compressionLevel;
        boolean z3 = this.encrypted;
        long j = this.dataSize;
        long j2 = this.deDataSize;
        List<String> list = this.entries;
        StringBuilder sbV = dj7.v("SbaAppDataArchiveMetadata(kind=", str, ", version=", i, ", packageName=");
        xs1.t(sbV, str2, ", appId=", str3, ", versionName=");
        sbV.append(str4);
        sbV.append(", versionCode=");
        sbV.append(l);
        sbV.append(", backupCache=");
        sbV.append(z);
        sbV.append(", includeDeviceProtectedData=");
        sbV.append(z2);
        sbV.append(", compressionLevel=");
        sbV.append(str5);
        sbV.append(", encrypted=");
        sbV.append(z3);
        sbV.append(", dataSize=");
        sbV.append(j);
        fz5.r(sbV, ", deDataSize=", j2, ", entries=");
        return dj7.o(sbV, list, ")");
    }

    public SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata(String str, int i, String str2, String str3, String str4, Long l, boolean z, boolean z2, String str5, boolean z3, long j, long j2, List<String> list) {
        str.getClass();
        str2.getClass();
        str3.getClass();
        str5.getClass();
        list.getClass();
        this.kind = str;
        this.version = i;
        this.packageName = str2;
        this.appId = str3;
        this.versionName = str4;
        this.versionCode = l;
        this.backupCache = z;
        this.includeDeviceProtectedData = z2;
        this.compressionLevel = str5;
        this.encrypted = z3;
        this.dataSize = j;
        this.deDataSize = j2;
        this.entries = list;
    }
}
