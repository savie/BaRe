package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class ne1 {
    public final String a;
    public final ui1 b;
    public final ld1 c;

    public ne1(String str, ui1 ui1Var, ld1 ld1Var) {
        ui1Var.getClass();
        this.a = str;
        this.b = ui1Var;
        this.c = ld1Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ne1)) {
            return false;
        }
        ne1 ne1Var = (ne1) obj;
        return pe4.d(this.a, ne1Var.a) && pe4.d(this.b, ne1Var.b) && pe4.d(this.c, ne1Var.c);
    }

    public final int hashCode() {
        int iHashCode = (this.b.hashCode() + (this.a.hashCode() * 31)) * 31;
        ld1 ld1Var = this.c;
        return iHashCode + (ld1Var == null ? 0 : ld1Var.hashCode());
    }

    public final String toString() {
        return "BackupScan(name=" + this.a + ", result=" + this.b + ", marker=" + this.c + ")";
    }
}
