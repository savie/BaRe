package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class e00 {
    public final int a;
    public final int b;
    public final int c;

    public e00(int i, int i2, int i3) {
        this.a = i;
        this.b = i2;
        this.c = i3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof e00)) {
            return false;
        }
        e00 e00Var = (e00) obj;
        return this.a == e00Var.a && this.b == e00Var.b && this.c == e00Var.c;
    }

    public final int hashCode() {
        return Integer.hashCode(this.c) + eq3.d(this.b, Integer.hashCode(this.a) * 31, 31);
    }

    public final String toString() {
        return xs1.m(xs1.n("ProcessStateConstants(persistent=", this.a, ", persistentUi=", ", nonexistent=", this.b), this.c, ")");
    }
}
