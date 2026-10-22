package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class pe1 {
    public final ld1 a;
    public final q63 b;

    public pe1(ld1 ld1Var, q63 q63Var) {
        this.a = ld1Var;
        this.b = q63Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof pe1)) {
            return false;
        }
        pe1 pe1Var = (pe1) obj;
        return this.a.equals(pe1Var.a) && this.b.equals(pe1Var.b);
    }

    public final int hashCode() {
        return this.b.a.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "LocalBackupScanMarkerFile(marker=" + this.a + ", source=" + this.b + ")";
    }
}
