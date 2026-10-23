package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class av0 {
    public final String a;
    public final String b;
    public final long c;
    public final long d;
    public final long e;
    public final String f;

    public av0(String str, String str2, long j, long j2, long j3, String str3) {
        this.a = str;
        this.b = str2;
        this.c = j;
        this.d = j2;
        this.e = j3;
        this.f = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof av0)) {
            return false;
        }
        av0 av0Var = (av0) obj;
        return this.a.equals(av0Var.a) && this.b.equals(av0Var.b) && this.c == av0Var.c && this.d == av0Var.d && this.e == av0Var.e && pe4.d(this.f, av0Var.f);
    }

    public final int hashCode() {
        int iF = xs1.f(this.e, xs1.f(this.d, xs1.f(this.c, fz5.g(this.a.hashCode() * 31, 31, this.b), 31), 31), 31);
        String str = this.f;
        return iF + (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        StringBuilder sbP = u48.p("BoxFile(id=", this.a, ", name=", this.b, ", size=");
        sbP.append(this.c);
        fz5.r(sbP, ", createdAtMillis=", this.d, ", modifiedAtMillis=");
        sbP.append(this.e);
        sbP.append(", parentId=");
        sbP.append(this.f);
        sbP.append(")");
        return sbP.toString();
    }
}
