package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class hp6 {
    public final boolean a;
    public final boolean b;

    public hp6(boolean z, boolean z2) {
        this.a = z;
        this.b = z2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof hp6)) {
            return false;
        }
        hp6 hp6Var = (hp6) obj;
        return this.a == hp6Var.a && this.b == hp6Var.b;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.b) + (Boolean.hashCode(this.a) * 31);
    }

    public final String toString() {
        return "RootCheckResult(isRooted=" + this.a + ", rootStateChanged=" + this.b + ")";
    }
}
