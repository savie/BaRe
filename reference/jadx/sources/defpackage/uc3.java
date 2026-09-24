package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class uc3 {
    public final od3 a;
    public final nd3 b;
    public boolean c;
    public final boolean d;
    public final String e;

    public uc3(od3 od3Var, nd3 nd3Var, boolean z, boolean z2) {
        nd3Var.getClass();
        this.a = od3Var;
        this.b = nd3Var;
        this.c = z;
        this.d = z2;
        this.e = nd3Var.getDisplayString();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof uc3)) {
            return false;
        }
        uc3 uc3Var = (uc3) obj;
        return pe4.d(this.a, uc3Var.a) && pe4.d(this.b, uc3Var.b) && this.c == uc3Var.c && this.d == uc3Var.d;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.d) + fz5.h((this.b.hashCode() + (this.a.hashCode() * 31)) * 31, 31, this.c);
    }

    public final String toString() {
        return "FilterChipItem(filterType=" + this.a + ", mode=" + this.b + ", isChecked=" + this.c + ", isLinkedItem=" + this.d + ")";
    }
}
