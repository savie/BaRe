package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class hg7 {
    public final Object a;
    public final wc2 b;
    public final boolean c;

    public hg7(Object obj, wc2 wc2Var, int i) {
        obj = (i & 1) != 0 ? null : obj;
        wc2Var = (i & 2) != 0 ? null : wc2Var;
        this.a = obj;
        this.b = wc2Var;
        this.c = wc2Var == null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof hg7)) {
            return false;
        }
        hg7 hg7Var = (hg7) obj;
        return pe4.d(this.a, hg7Var.a) && pe4.d(this.b, hg7Var.b);
    }

    public final int hashCode() {
        Object obj = this.a;
        int iHashCode = (obj == null ? 0 : obj.hashCode()) * 31;
        wc2 wc2Var = this.b;
        return iHashCode + (wc2Var != null ? wc2Var.hashCode() : 0);
    }

    public final String toString() {
        return "SimpleFirebaseReader(data=" + this.a + ", error=" + this.b + ")";
    }
}
