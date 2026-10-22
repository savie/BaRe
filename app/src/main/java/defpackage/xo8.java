package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class xo8 extends yo8 {
    public final rv7 a;
    public final rv7 b;

    public xo8(rv7 rv7Var, rv7 rv7Var2) {
        rv7Var.getClass();
        this.a = rv7Var;
        this.b = rv7Var2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof xo8)) {
            return false;
        }
        xo8 xo8Var = (xo8) obj;
        return pe4.d(this.a, xo8Var.a) && this.b.equals(xo8Var.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "Success(homeWall=" + this.a + ", lockWall=" + this.b + ")";
    }
}
