package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class s72 {
    public final nc6 a;
    public final boolean b;

    public s72(nc6 nc6Var, boolean z) {
        this.a = nc6Var;
        this.b = z;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof s72) {
            s72 s72Var = (s72) obj;
            if (s72Var.a.equals(this.a) && s72Var.b == this.b) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Boolean.valueOf(this.b).hashCode() ^ ((this.a.hashCode() ^ 1000003) * 1000003);
    }
}
