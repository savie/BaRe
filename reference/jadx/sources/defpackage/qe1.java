package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class qe1 {
    public final q63 a;
    public final q63 b;
    public final String c;
    public final q63 d;

    public qe1(q63 q63Var, q63 q63Var2, String str, q63 q63Var3) {
        this.a = q63Var;
        this.b = q63Var2;
        this.c = str;
        this.d = q63Var3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof qe1)) {
            return false;
        }
        qe1 qe1Var = (qe1) obj;
        return this.a.equals(qe1Var.a) && this.b.equals(qe1Var.b) && this.c.equals(qe1Var.c) && this.d.equals(qe1Var.d);
    }

    public final int hashCode() {
        return this.d.a.hashCode() + fz5.g((this.b.a.hashCode() + (this.a.a.hashCode() * 31)) * 31, 31, this.c);
    }

    public final String toString() {
        return "LocalRoundTripFiles(source=" + this.a + ", download=" + this.b + ", sourceHashSha256=" + this.c + ", testDirectory=" + this.d + ")";
    }
}
