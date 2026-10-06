package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class of4 {
    public final zn7 a;
    public final Exception b;

    public of4(zn7 zn7Var, Exception exc) {
        this.a = zn7Var;
        this.b = exc;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof of4)) {
            return false;
        }
        of4 of4Var = (of4) obj;
        return pe4.d(this.a, of4Var.a) && this.b.equals(of4Var.b);
    }

    public final int hashCode() {
        zn7 zn7Var = this.a;
        return this.b.hashCode() + ((zn7Var == null ? 0 : zn7Var.hashCode()) * 31);
    }

    public final String toString() {
        return "Failure(storage=" + this.a + ", error=" + this.b + ")";
    }
}
