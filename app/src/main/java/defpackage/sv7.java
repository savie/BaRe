package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class sv7 {
    public final rv7 a;
    public final rv7 b;

    public sv7(rv7 rv7Var, rv7 rv7Var2) {
        this.a = rv7Var;
        this.b = rv7Var2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof sv7)) {
            return false;
        }
        sv7 sv7Var = (sv7) obj;
        return pe4.d(this.a, sv7Var.a) && pe4.d(this.b, sv7Var.b);
    }

    public final int hashCode() {
        rv7 rv7Var = this.a;
        int iHashCode = (rv7Var == null ? 0 : rv7Var.hashCode()) * 31;
        rv7 rv7Var2 = this.b;
        return iHashCode + (rv7Var2 != null ? rv7Var2.hashCode() : 0);
    }

    public final String toString() {
        return "SystemWallsData(homeWall=" + this.a + ", lockWall=" + this.b + ")";
    }
}
