package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class nd4 extends ld4 {
    public static final nd4 d = new nd4(1, 0, 1);

    @Override // defpackage.ld4
    public final boolean equals(Object obj) {
        if (!(obj instanceof nd4)) {
            return false;
        }
        if (isEmpty() && ((nd4) obj).isEmpty()) {
            return true;
        }
        nd4 nd4Var = (nd4) obj;
        return this.a == nd4Var.a && this.b == nd4Var.b;
    }

    @Override // defpackage.ld4
    public final int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        return (this.a * 31) + this.b;
    }

    @Override // defpackage.ld4
    public final boolean isEmpty() {
        return this.a > this.b;
    }

    @Override // defpackage.ld4
    public final String toString() {
        return this.a + ".." + this.b;
    }
}
