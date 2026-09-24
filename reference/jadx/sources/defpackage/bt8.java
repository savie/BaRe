package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class bt8 extends ct8 {
    public final et8 a;
    public final int b;
    public final int c;

    public bt8(et8 et8Var, int i, int i2) {
        et8Var.getClass();
        this.a = et8Var;
        this.b = i;
        this.c = i2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof bt8)) {
            return false;
        }
        bt8 bt8Var = (bt8) obj;
        return pe4.d(this.a, bt8Var.a) && this.b == bt8Var.b && this.c == bt8Var.c;
    }

    public final int hashCode() {
        return Integer.hashCode(this.c) + eq3.d(this.b, this.a.hashCode() * 31, 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Running(item=");
        sb.append(this.a);
        sb.append(", itemPosition=");
        sb.append(this.b);
        sb.append(", totalItems=");
        return xs1.m(sb, this.c, ")");
    }
}
