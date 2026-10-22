package defpackage;

import org.swiftapps.swiftbackup.model.app.AppCloudBackup;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class wj2 {
    public final AppCloudBackup a;
    public final String b;
    public final boolean c;
    public final boolean d;
    public final CharSequence e;
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
    public final String r;
    public final boolean s;

    public wj2(AppCloudBackup appCloudBackup, String str, boolean z, boolean z2, String str2, boolean z3, String str3, String str4, boolean z4, String str5, String str6, boolean z5, String str7, String str8, String str9, String str10, String str11, String str12, boolean z6) {
        this.a = appCloudBackup;
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
        this.r = str12;
        this.s = z6;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof wj2)) {
            return false;
        }
        wj2 wj2Var = (wj2) obj;
        return this.a.equals(wj2Var.a) && pe4.d(this.b, wj2Var.b) && this.c == wj2Var.c && this.d == wj2Var.d && pe4.d(this.e, wj2Var.e) && this.f == wj2Var.f && pe4.d(this.g, wj2Var.g) && pe4.d(this.h, wj2Var.h) && this.i == wj2Var.i && pe4.d(this.j, wj2Var.j) && pe4.d(this.k, wj2Var.k) && this.l == wj2Var.l && pe4.d(this.m, wj2Var.m) && pe4.d(this.n, wj2Var.n) && pe4.d(this.o, wj2Var.o) && this.p.equals(wj2Var.p) && this.q.equals(wj2Var.q) && this.r.equals(wj2Var.r) && this.s == wj2Var.s;
    }

    public final int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        String str = this.b;
        int iH = fz5.h(fz5.h((iHashCode + (str == null ? 0 : str.hashCode())) * 31, 31, this.c), 31, this.d);
        CharSequence charSequence = this.e;
        int iH2 = fz5.h((iH + (charSequence == null ? 0 : charSequence.hashCode())) * 31, 31, this.f);
        String str2 = this.g;
        int iHashCode2 = (iH2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.h;
        int iH3 = fz5.h((iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31, 31, this.i);
        String str4 = this.j;
        int iHashCode3 = (iH3 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.k;
        int iH4 = fz5.h((iHashCode3 + (str5 == null ? 0 : str5.hashCode())) * 31, 31, this.l);
        String str6 = this.m;
        int iHashCode4 = (iH4 + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.n;
        int iHashCode5 = (iHashCode4 + (str7 == null ? 0 : str7.hashCode())) * 31;
        String str8 = this.o;
        return Boolean.hashCode(this.s) + fz5.g(fz5.g(fz5.g((iHashCode5 + (str8 != null ? str8.hashCode() : 0)) * 31, 31, this.p), 31, this.q), 31, this.r);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("CloudBackupState(backup=");
        sb.append(this.a);
        sb.append(", apkSize=");
        sb.append(this.b);
        sb.append(", hasSplits=");
        sb.append(this.c);
        sb.append(", hasSharedLibs=");
        sb.append(this.d);
        sb.append(", dataSize=");
        sb.append((Object) this.e);
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
        xs1.t(sb, this.m, ", expansionSize=", this.n, ", totalSize=");
        xs1.t(sb, this.o, ", infoString=", this.p, ", versionNameString=");
        xs1.t(sb, this.q, ", versionInfoString=", this.r, ", isProtectedBackup=");
        return dj7.p(sb, this.s, ")");
    }
}
