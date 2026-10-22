package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class sx3 {
    public final String a;
    public final boolean b;

    public sx3(String str, boolean z) {
        str.getClass();
        this.a = str;
        this.b = z;
    }

    public final String a() {
        return this.a + ":" + this.b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof sx3)) {
            return false;
        }
        sx3 sx3Var = (sx3) obj;
        return pe4.d(this.a, sx3Var.a) && this.b == sx3Var.b;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.b) + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "Data(packageName=" + this.a + ", isInstalled=" + this.b + ")";
    }
}
