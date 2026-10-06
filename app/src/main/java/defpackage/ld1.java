package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class ld1 {
    public final String a;
    public final int b;

    public ld1(String str, int i) {
        this.a = str;
        this.b = i;
    }

    public final String a(String str) {
        return u48.n(this.a, " (", str, ")");
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ld1)) {
            return false;
        }
        ld1 ld1Var = (ld1) obj;
        return this.a.equals(ld1Var.a) && this.b == ld1Var.b;
    }

    public final int hashCode() {
        return Boolean.hashCode(true) + eq3.d(this.b, this.a.hashCode() * 31, 31);
    }

    public final String toString() {
        return u48.m("Marker(localFileName=", this.a, ", fileType=", this.b, ", isTaggedBackup=true)");
    }
}
