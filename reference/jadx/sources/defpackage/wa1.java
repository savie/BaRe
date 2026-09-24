package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class wa1 {
    public final String a;
    public final String b;
    public final String c;
    public final va1 d;
    public final long e;
    public final long f;
    public final long g;

    public wa1(String str, String str2, String str3, va1 va1Var, long j, long j2, long j3) {
        str.getClass();
        str2.getClass();
        str3.getClass();
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = va1Var;
        this.e = j;
        this.f = j2;
        this.g = j3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof wa1)) {
            return false;
        }
        wa1 wa1Var = (wa1) obj;
        return pe4.d(this.a, wa1Var.a) && pe4.d(this.b, wa1Var.b) && pe4.d(this.c, wa1Var.c) && this.d == wa1Var.d && this.e == wa1Var.e && this.f == wa1Var.f && this.g == wa1Var.g;
    }

    public final int hashCode() {
        return Long.hashCode(this.g) + xs1.f(this.f, xs1.f(this.e, (this.d.hashCode() + fz5.g(fz5.g(this.a.hashCode() * 31, 31, this.b), 31, this.c)) * 31, 31), 31);
    }

    public final String toString() {
        StringBuilder sbP = u48.p("CloudBackupFile(name=", this.a, ", referenceId=", this.b, ", deleteId=");
        sbP.append(this.c);
        sbP.append(", feature=");
        sbP.append(this.d);
        sbP.append(", size=");
        sbP.append(this.e);
        fz5.r(sbP, ", createdTime=", this.f, ", modifiedTime=");
        return dj7.h(this.g, ")", sbP);
    }
}
