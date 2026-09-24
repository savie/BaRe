package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class uo7 extends vo7 {
    public final boolean a;
    public final boolean b;
    public final int c;

    public uo7(int i, boolean z, boolean z2) {
        this.a = z;
        this.b = z2;
        this.c = i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof uo7)) {
            return false;
        }
        uo7 uo7Var = (uo7) obj;
        return this.a == uo7Var.a && this.b == uo7Var.b && this.c == uo7Var.c;
    }

    public final int hashCode() {
        return Integer.hashCode(this.c) + fz5.h(Boolean.hashCode(this.a) * 31, 31, this.b);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Running(isCopy=");
        sb.append(this.a);
        sb.append(", isIndeterminate=");
        sb.append(this.b);
        sb.append(", percentProgress=");
        return xs1.m(sb, this.c, ")");
    }
}
