package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class xz6 {
    public final String a;
    public final boolean b;

    public xz6(String str, boolean z) {
        str.getClass();
        this.a = str;
        this.b = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof xz6)) {
            return false;
        }
        xz6 xz6Var = (xz6) obj;
        return pe4.d(this.a, xz6Var.a) && this.b == xz6Var.b;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.b) + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "SbaNativeInfo(version=" + this.a + ", aegis256Available=" + this.b + ")";
    }
}
