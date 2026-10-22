package defpackage;

import org.swiftapps.swiftbackup.model.app.LocalMetadata;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class mz {
    public final rf8 a;
    public final rf8 b;
    public final rf8 c;
    public final rf8 d;
    public final rf8 e;
    public final rf8 f;
    public final rf8 g;
    public final rf8 h;
    public final LocalMetadata i;
    public final long j;
    public final long k;
    public boolean l;

    public mz(rf8 rf8Var, rf8 rf8Var2, rf8 rf8Var3, rf8 rf8Var4, rf8 rf8Var5, rf8 rf8Var6, rf8 rf8Var7, rf8 rf8Var8, LocalMetadata localMetadata, long j, long j2) {
        localMetadata.getClass();
        this.a = rf8Var;
        this.b = rf8Var2;
        this.c = rf8Var3;
        this.d = rf8Var4;
        this.e = rf8Var5;
        this.f = rf8Var6;
        this.g = rf8Var7;
        this.h = rf8Var8;
        this.i = localMetadata;
        this.j = j;
        this.k = j2;
        this.l = false;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof mz)) {
            return false;
        }
        mz mzVar = (mz) obj;
        return pe4.d(this.a, mzVar.a) && pe4.d(this.b, mzVar.b) && pe4.d(this.c, mzVar.c) && pe4.d(this.d, mzVar.d) && pe4.d(this.e, mzVar.e) && pe4.d(this.f, mzVar.f) && pe4.d(this.g, mzVar.g) && pe4.d(this.h, mzVar.h) && pe4.d(this.i, mzVar.i) && this.j == mzVar.j && this.k == mzVar.k && this.l == mzVar.l;
    }

    public final int hashCode() {
        rf8 rf8Var = this.a;
        int iHashCode = (rf8Var == null ? 0 : rf8Var.hashCode()) * 31;
        rf8 rf8Var2 = this.b;
        int iHashCode2 = (iHashCode + (rf8Var2 == null ? 0 : rf8Var2.hashCode())) * 31;
        rf8 rf8Var3 = this.c;
        int iHashCode3 = (iHashCode2 + (rf8Var3 == null ? 0 : rf8Var3.hashCode())) * 31;
        rf8 rf8Var4 = this.d;
        int iHashCode4 = (iHashCode3 + (rf8Var4 == null ? 0 : rf8Var4.hashCode())) * 31;
        rf8 rf8Var5 = this.e;
        int iHashCode5 = (iHashCode4 + (rf8Var5 == null ? 0 : rf8Var5.hashCode())) * 31;
        rf8 rf8Var6 = this.f;
        int iHashCode6 = (iHashCode5 + (rf8Var6 == null ? 0 : rf8Var6.hashCode())) * 31;
        rf8 rf8Var7 = this.g;
        int iHashCode7 = (iHashCode6 + (rf8Var7 == null ? 0 : rf8Var7.hashCode())) * 31;
        rf8 rf8Var8 = this.h;
        return Boolean.hashCode(this.l) + xs1.f(this.k, xs1.f(this.j, (this.i.hashCode() + ((iHashCode7 + (rf8Var8 != null ? rf8Var8.hashCode() : 0)) * 31)) * 31, 31), 31);
    }

    public final String toString() {
        boolean z = this.l;
        StringBuilder sb = new StringBuilder("AppUpload(apkInfo=");
        sb.append(this.a);
        sb.append(", splitsInfo=");
        sb.append(this.b);
        sb.append(", sharedLibsInfo=");
        sb.append(this.c);
        sb.append(", dataInfo=");
        sb.append(this.d);
        sb.append(", extDataInfo=");
        sb.append(this.e);
        sb.append(", mediaInfo=");
        sb.append(this.f);
        sb.append(", expInfo=");
        sb.append(this.g);
        sb.append(", specialDataInfo=");
        sb.append(this.h);
        sb.append(", localMetadata=");
        sb.append(this.i);
        sb.append(", totalSize=");
        sb.append(this.j);
        fz5.r(sb, ", totalDataSize=", this.k, ", isTransferred=");
        return dj7.p(sb, z, ")");
    }
}
