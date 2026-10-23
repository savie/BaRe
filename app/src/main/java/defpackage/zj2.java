package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zj2 {
    public final iz4 a;
    public final String b;
    public final boolean c;
    public final boolean d;
    public final String e;
    public final boolean f;
    public final String g;
    public final String h;
    public final boolean i;
    public final String j;
    public final String k;
    public final boolean l;
    public final String m;
    public final String n;
    public final String o;
    public final String p;
    public final String q;
    public final boolean r;

    public zj2(iz4 iz4Var, String str, boolean z, boolean z2, String str2, boolean z3, String str3, String str4, boolean z4, String str5, String str6, boolean z5, String str7, String str8, String str9, String str10, String str11, boolean z6) {
        this.a = iz4Var;
        this.b = str;
        this.c = z;
        this.d = z2;
        this.e = str2;
        this.f = z3;
        this.g = str3;
        this.h = str4;
        this.i = z4;
        this.j = str5;
        this.k = str6;
        this.l = z5;
        this.m = str7;
        this.n = str8;
        this.o = str9;
        this.p = str10;
        this.q = str11;
        this.r = z6;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zj2)) {
            return false;
        }
        zj2 zj2Var = (zj2) obj;
        return this.a.equals(zj2Var.a) && pe4.d(this.b, zj2Var.b) && this.c == zj2Var.c && this.d == zj2Var.d && pe4.d(this.e, zj2Var.e) && this.f == zj2Var.f && pe4.d(this.g, zj2Var.g) && pe4.d(this.h, zj2Var.h) && this.i == zj2Var.i && pe4.d(this.j, zj2Var.j) && pe4.d(this.k, zj2Var.k) && this.l == zj2Var.l && pe4.d(this.m, zj2Var.m) && pe4.d(this.n, zj2Var.n) && this.o.equals(zj2Var.o) && this.p.equals(zj2Var.p) && this.q.equals(zj2Var.q) && this.r == zj2Var.r;
    }

    public final int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        String str = this.b;
        int iH = fz5.h(fz5.h((iHashCode + (str == null ? 0 : str.hashCode())) * 31, 31, this.c), 31, this.d);
        String str2 = this.e;
        int iH2 = fz5.h((iH + (str2 == null ? 0 : str2.hashCode())) * 31, 31, this.f);
        String str3 = this.g;
        int iHashCode2 = (iH2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.h;
        int iH3 = fz5.h((iHashCode2 + (str4 == null ? 0 : str4.hashCode())) * 31, 31, this.i);
        String str5 = this.j;
        int iHashCode3 = (iH3 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.k;
        int iH4 = fz5.h((iHashCode3 + (str6 == null ? 0 : str6.hashCode())) * 31, 31, this.l);
        String str7 = this.m;
        int iHashCode4 = (iH4 + (str7 == null ? 0 : str7.hashCode())) * 31;
        String str8 = this.n;
        return Boolean.hashCode(this.r) + fz5.g(fz5.g(fz5.g((iHashCode4 + (str8 != null ? str8.hashCode() : 0)) * 31, 31, this.o), 31, this.p), 31, this.q);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("DeviceBackupState(backupInfo=");
        sb.append(this.a);
        sb.append(", apkSize=");
        sb.append(this.b);
        sb.append(", hasSplits=");
        sb.append(this.c);
        sb.append(", hasSharedLibs=");
        sb.append(this.d);
        sb.append(", dataSize=");
        sb.append(this.e);
        sb.append(", dataEncrypted=");
        sb.append(this.f);
        sb.append(", dataEncryptionLabel=");
        xs1.t(sb, this.g, ", extDataSize=", this.h, ", extDataEncrypted=");
        sb.append(this.i);
        sb.append(", extDataEncryptionLabel=");
        sb.append(this.j);
        sb.append(", mediaSize=");
        sb.append(this.k);
        sb.append(", mediaEncrypted=");
        sb.append(this.l);
        sb.append(", mediaEncryptionLabel=");
        xs1.t(sb, this.m, ", expansionSize=", this.n, ", infoString=");
        xs1.t(sb, this.o, ", versionNameString=", this.p, ", versionInfoString=");
        sb.append(this.q);
        sb.append(", isProtectedBackup=");
        sb.append(this.r);
        sb.append(")");
        return sb.toString();
    }
}
