package defpackage;

import org.swiftapps.swiftbackup.model.app.CloudMetadata;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class hq {
    public final ji a;
    public final CloudMetadata b;
    public final fo2 c;
    public final fo2 d;
    public final fo2 e;
    public final fo2 f;
    public final fo2 g;
    public final fo2 h;
    public final fo2 i;
    public final fo2 j;
    public final long k;
    public final long l;

    public hq(ji jiVar, CloudMetadata cloudMetadata, fo2 fo2Var, fo2 fo2Var2, fo2 fo2Var3, fo2 fo2Var4, fo2 fo2Var5, fo2 fo2Var6, fo2 fo2Var7, fo2 fo2Var8, long j, long j2) {
        jiVar.getClass();
        cloudMetadata.getClass();
        this.a = jiVar;
        this.b = cloudMetadata;
        this.c = fo2Var;
        this.d = fo2Var2;
        this.e = fo2Var3;
        this.f = fo2Var4;
        this.g = fo2Var5;
        this.h = fo2Var6;
        this.i = fo2Var7;
        this.j = fo2Var8;
        this.k = j;
        this.l = j2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof hq)) {
            return false;
        }
        hq hqVar = (hq) obj;
        return pe4.d(this.a, hqVar.a) && pe4.d(this.b, hqVar.b) && pe4.d(this.c, hqVar.c) && pe4.d(this.d, hqVar.d) && pe4.d(this.e, hqVar.e) && pe4.d(this.f, hqVar.f) && pe4.d(this.g, hqVar.g) && pe4.d(this.h, hqVar.h) && pe4.d(this.i, hqVar.i) && pe4.d(this.j, hqVar.j) && this.k == hqVar.k && this.l == hqVar.l;
    }

    public final int hashCode() {
        int iHashCode = (this.b.hashCode() + (this.a.hashCode() * 31)) * 31;
        fo2 fo2Var = this.c;
        int iHashCode2 = (iHashCode + (fo2Var == null ? 0 : fo2Var.hashCode())) * 31;
        fo2 fo2Var2 = this.d;
        int iHashCode3 = (iHashCode2 + (fo2Var2 == null ? 0 : fo2Var2.hashCode())) * 31;
        fo2 fo2Var3 = this.e;
        int iHashCode4 = (iHashCode3 + (fo2Var3 == null ? 0 : fo2Var3.hashCode())) * 31;
        fo2 fo2Var4 = this.f;
        int iHashCode5 = (iHashCode4 + (fo2Var4 == null ? 0 : fo2Var4.hashCode())) * 31;
        fo2 fo2Var5 = this.g;
        int iHashCode6 = (iHashCode5 + (fo2Var5 == null ? 0 : fo2Var5.hashCode())) * 31;
        fo2 fo2Var6 = this.h;
        int iHashCode7 = (iHashCode6 + (fo2Var6 == null ? 0 : fo2Var6.hashCode())) * 31;
        fo2 fo2Var7 = this.i;
        int iHashCode8 = (iHashCode7 + (fo2Var7 == null ? 0 : fo2Var7.hashCode())) * 31;
        fo2 fo2Var8 = this.j;
        return Long.hashCode(this.l) + xs1.f(this.k, (iHashCode8 + (fo2Var8 != null ? fo2Var8.hashCode() : 0)) * 31, 31);
    }

    public final String toString() {
        return "AppDownload(app=" + this.a + ", cd=" + this.b + ", apkInfo=" + this.c + ", splitsInfo=" + this.d + ", sharedLibsInfo=" + this.e + ", dataInfo=" + this.f + ", extDataInfo=" + this.g + ", mediaInfo=" + this.h + ", expInfo=" + this.i + ", specialDataInfo=" + this.j + ", totalSize=" + this.k + ", totalDataSize=" + this.l + ")";
    }
}
