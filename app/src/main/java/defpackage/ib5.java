package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class ib5 {
    public final int a;
    public final String b;

    public ib5(int i, String str) {
        this.a = i;
        this.b = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ib5)) {
            return false;
        }
        ib5 ib5Var = (ib5) obj;
        return this.a == ib5Var.a && this.b.equals(ib5Var.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (Integer.hashCode(this.a) * 31);
    }

    public final String toString() {
        return "UploadChunkResult(size=" + this.a + ", completionHandle=" + this.b + ")";
    }
}
