package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class vu3 implements Cloneable {
    public boolean a;
    public boolean b;
    public boolean c;
    public boolean d;
    public int e;
    public int f;

    public final Object clone() {
        try {
            return super.clone();
        } catch (CloneNotSupportedException e) {
            throw new UnsupportedOperationException("GeneralPurposeBit is not Cloneable?", e);
        }
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof vu3)) {
            return false;
        }
        vu3 vu3Var = (vu3) obj;
        return vu3Var.c == this.c && vu3Var.d == this.d && vu3Var.a == this.a && vu3Var.b == this.b;
    }

    public final int hashCode() {
        return (((((((this.c ? 1 : 0) * 17) + (this.d ? 1 : 0)) * 13) + (this.a ? 1 : 0)) * 7) + (this.b ? 1 : 0)) * 3;
    }
}
