package org.swiftapps.swiftbackup.apkshare;

import defpackage.dj7;
import defpackage.fz5;
import defpackage.pe4;
import defpackage.u48;
import defpackage.y77;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class SaiApksMetadata {

    @y77("label")
    private final String label;

    @y77("package")
    private final String packageName;

    @y77("split_apks")
    private final boolean splitApks;

    @y77("version_code")
    private final Long versionCode;

    @y77("version_name")
    private final String versionName;

    public SaiApksMetadata(String str, String str2, String str3, Long l, boolean z) {
        str.getClass();
        str2.getClass();
        this.packageName = str;
        this.label = str2;
        this.versionName = str3;
        this.versionCode = l;
        this.splitApks = z;
    }

    public static /* synthetic */ SaiApksMetadata copy$default(SaiApksMetadata saiApksMetadata, String str, String str2, String str3, Long l, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            str = saiApksMetadata.packageName;
        }
        if ((i & 2) != 0) {
            str2 = saiApksMetadata.label;
        }
        if ((i & 4) != 0) {
            str3 = saiApksMetadata.versionName;
        }
        if ((i & 8) != 0) {
            l = saiApksMetadata.versionCode;
        }
        if ((i & 16) != 0) {
            z = saiApksMetadata.splitApks;
        }
        boolean z2 = z;
        String str4 = str3;
        return saiApksMetadata.copy(str, str2, str4, l, z2);
    }

    public final String component1() {
        return this.packageName;
    }

    public final String component2() {
        return this.label;
    }

    public final String component3() {
        return this.versionName;
    }

    public final Long component4() {
        return this.versionCode;
    }

    public final boolean component5() {
        return this.splitApks;
    }

    public final SaiApksMetadata copy(String str, String str2, String str3, Long l, boolean z) {
        str.getClass();
        str2.getClass();
        return new SaiApksMetadata(str, str2, str3, l, z);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SaiApksMetadata)) {
            return false;
        }
        SaiApksMetadata saiApksMetadata = (SaiApksMetadata) obj;
        return pe4.d(this.packageName, saiApksMetadata.packageName) && pe4.d(this.label, saiApksMetadata.label) && pe4.d(this.versionName, saiApksMetadata.versionName) && pe4.d(this.versionCode, saiApksMetadata.versionCode) && this.splitApks == saiApksMetadata.splitApks;
    }

    public final String getLabel() {
        return this.label;
    }

    public final String getPackageName() {
        return this.packageName;
    }

    public final boolean getSplitApks() {
        return this.splitApks;
    }

    public final Long getVersionCode() {
        return this.versionCode;
    }

    public final String getVersionName() {
        return this.versionName;
    }

    public int hashCode() {
        int iG = fz5.g(this.packageName.hashCode() * 31, 31, this.label);
        String str = this.versionName;
        int iHashCode = (iG + (str == null ? 0 : str.hashCode())) * 31;
        Long l = this.versionCode;
        return Boolean.hashCode(this.splitApks) + ((iHashCode + (l != null ? l.hashCode() : 0)) * 31);
    }

    public String toString() {
        String str = this.packageName;
        String str2 = this.label;
        String str3 = this.versionName;
        Long l = this.versionCode;
        boolean z = this.splitApks;
        StringBuilder sbP = u48.p("SaiApksMetadata(packageName=", str, ", label=", str2, ", versionName=");
        sbP.append(str3);
        sbP.append(", versionCode=");
        sbP.append(l);
        sbP.append(", splitApks=");
        return dj7.p(sbP, z, ")");
    }
}
