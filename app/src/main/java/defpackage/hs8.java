package defpackage;

import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class hs8 implements is8 {
    public final List a;
    public final ks8 b;

    public hs8(List list, ks8 ks8Var) {
        list.getClass();
        ks8Var.getClass();
        this.a = list;
        this.b = ks8Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof hs8)) {
            return false;
        }
        hs8 hs8Var = (hs8) obj;
        return pe4.d(this.a, hs8Var.a) && this.b == hs8Var.b;
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "Success(items=" + this.a + ", source=" + this.b + ")";
    }
}
