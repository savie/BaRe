package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class cb5 {
    public final int a;
    public final db5 b;

    public cb5(int i, db5 db5Var) {
        db5Var.getClass();
        this.a = i;
        this.b = db5Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof cb5)) {
            return false;
        }
        cb5 cb5Var = (cb5) obj;
        return this.a == cb5Var.a && pe4.d(this.b, cb5Var.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (Integer.hashCode(this.a) * 31);
    }

    public final String toString() {
        return "IndexedMegaChunk(index=" + this.a + ", chunk=" + this.b + ")";
    }
}
