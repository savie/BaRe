package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class ly7 extends ny7 {
    public final boolean a;
    public final boolean b;

    public ly7(boolean z, boolean z2) {
        this.a = z;
        this.b = z2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ly7)) {
            return false;
        }
        ly7 ly7Var = (ly7) obj;
        return this.a == ly7Var.a && this.b == ly7Var.b;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.b) + (Boolean.hashCode(this.a) * 31);
    }

    @Override // defpackage.ny7
    public final String toString() {
        return "Batch(keepProtected=" + this.a + ", keepLatest=" + this.b + ")";
    }
}
