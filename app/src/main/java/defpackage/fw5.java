package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class fw5 {
    public final boolean a;
    public final String b;
    public final Exception c;
    public final ew5 d;

    public /* synthetic */ fw5(boolean z, String str, Exception exc, int i) {
        this(z, (i & 2) != 0 ? null : str, (i & 4) != 0 ? null : exc, (ew5) null);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof fw5)) {
            return false;
        }
        fw5 fw5Var = (fw5) obj;
        return this.a == fw5Var.a && pe4.d(this.b, fw5Var.b) && pe4.d(this.c, fw5Var.c) && this.d == fw5Var.d;
    }

    public final int hashCode() {
        int iHashCode = Boolean.hashCode(this.a) * 31;
        String str = this.b;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        Exception exc = this.c;
        int iHashCode3 = (iHashCode2 + (exc == null ? 0 : exc.hashCode())) * 31;
        ew5 ew5Var = this.d;
        return iHashCode3 + (ew5Var != null ? ew5Var.hashCode() : 0);
    }

    public final String toString() {
        return "PackerResult(isSuccess=" + this.a + ", errorMsg=" + this.b + ", exception=" + this.c + ", extractionError=" + this.d + ")";
    }

    public fw5(boolean z, String str, Exception exc, ew5 ew5Var) {
        this.a = z;
        this.b = str;
        this.c = exc;
        this.d = ew5Var;
    }
}
