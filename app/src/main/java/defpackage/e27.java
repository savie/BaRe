package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class e27 {
    public final boolean a;
    public final boolean b;
    public final boolean c;
    public final boolean d;

    public e27(boolean z, boolean z2, boolean z3, boolean z4) {
        this.a = z;
        this.b = z2;
        this.c = z3;
        this.d = z4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof e27)) {
            return false;
        }
        e27 e27Var = (e27) obj;
        return this.a == e27Var.a && this.b == e27Var.b && this.c == e27Var.c && this.d == e27Var.d;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.d) + fz5.h(fz5.h(Boolean.hashCode(this.a) * 31, 31, this.b), 31, this.c);
    }

    public final String toString() {
        return "SbaTarOptions(includeRootDirectory=" + this.a + ", preserveXattrs=" + this.b + ", preserveSparse=" + this.c + ", skipUnreadableEntries=" + this.d + ")";
    }
}
