package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class uh1 extends wh1 {
    public final int a;
    public final int b;

    public uh1(int i, int i2) {
        this.a = i;
        this.b = i2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof uh1)) {
            return false;
        }
        uh1 uh1Var = (uh1) obj;
        return this.a == uh1Var.a && this.b == uh1Var.b;
    }

    public final int hashCode() {
        return Integer.hashCode(this.b) + (Integer.hashCode(this.a) * 31);
    }

    public final String toString() {
        return dj7.j("DeleteFinished(deletedCount=", this.a, ", protectedCount=", ")", this.b);
    }
}
