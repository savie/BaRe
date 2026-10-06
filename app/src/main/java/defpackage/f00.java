package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class f00 {
    public final int a;
    public final int b;
    public final String c;

    public f00(int i, int i2, String str) {
        this.a = i;
        this.b = i2;
        this.c = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f00)) {
            return false;
        }
        f00 f00Var = (f00) obj;
        return this.a == f00Var.a && this.b == f00Var.b && this.c.equals(f00Var.c);
    }

    public final int hashCode() {
        return this.c.hashCode() + eq3.d(this.b, Integer.hashCode(this.a) * 31, 31);
    }

    public final String toString() {
        return dj7.n(xs1.n("V5MigrationProgress(n=", this.a, ", total=", ", message=", this.b), this.c, ")");
    }
}
