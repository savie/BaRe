package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class bp6 {
    public final int a;
    public final int b;
    public final String c;

    public bp6(int i, int i2, String str) {
        this.a = i;
        this.b = i2;
        this.c = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof bp6)) {
            return false;
        }
        bp6 bp6Var = (bp6) obj;
        return this.a == bp6Var.a && this.b == bp6Var.b && pe4.d(this.c, bp6Var.c);
    }

    public final int hashCode() {
        int iD = eq3.d(this.b, Integer.hashCode(this.a) * 31, 31);
        String str = this.c;
        return iD + (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        return dj7.n(xs1.n("ProgressKey(operation=", this.a, ", phase=", ", entryName=", this.b), this.c, ")");
    }
}
