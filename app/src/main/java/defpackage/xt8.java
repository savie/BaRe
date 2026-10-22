package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class xt8 extends au8 {
    public final boolean a;
    public final boolean b;

    public xt8(int i) {
        boolean z = (i & 1) == 0;
        boolean z2 = (i & 2) == 0;
        this.a = z;
        this.b = z2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof xt8)) {
            return false;
        }
        xt8 xt8Var = (xt8) obj;
        return this.a == xt8Var.a && this.b == xt8Var.b;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.b) + (Boolean.hashCode(this.a) * 31);
    }

    public final String toString() {
        return "Error(driveNotConnected=" + this.a + ", networkError=" + this.b + ")";
    }
}
