package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class oe1 {
    public final boolean a;
    public final boolean b;

    public oe1(boolean z, boolean z2) {
        this.a = z;
        this.b = z2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof oe1)) {
            return false;
        }
        oe1 oe1Var = (oe1) obj;
        return this.a == oe1Var.a && this.b == oe1Var.b;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.b) + (Boolean.hashCode(this.a) * 31);
    }

    public final String toString() {
        return "DownloadOptions(forceMultiThreaded=" + this.a + ", requireMultiThreaded=" + this.b + ")";
    }
}
