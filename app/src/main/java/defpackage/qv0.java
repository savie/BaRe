package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class qv0 {
    public final String a;
    public final long b;
    public final String c;
    public final String d;

    public qv0(String str, String str2, long j, String str3) {
        this.a = str;
        this.b = j;
        this.c = str2;
        this.d = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof qv0)) {
            return false;
        }
        qv0 qv0Var = (qv0) obj;
        return this.a.equals(qv0Var.a) && this.b == qv0Var.b && this.c.equals(qv0Var.c) && this.d.equals(qv0Var.d);
    }

    public final int hashCode() {
        return this.d.hashCode() + fz5.g(xs1.f(this.b, this.a.hashCode() * 31, 31), 31, this.c);
    }

    public final String toString() {
        StringBuilder sbO = u48.o("BoxUploadSession(id=", this.a, this.b, ", partSize=");
        xs1.t(sbO, ", uploadPartUrl=", this.c, ", commitUrl=", this.d);
        sbO.append(")");
        return sbO.toString();
    }
}
