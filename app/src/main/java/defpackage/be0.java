package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class be0 extends nm5 {
    public final mm5 a;
    public final lm5 b;

    public be0(mm5 mm5Var, lm5 lm5Var) {
        this.a = mm5Var;
        this.b = lm5Var;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof nm5) {
            nm5 nm5Var = (nm5) obj;
            mm5 mm5Var = this.a;
            if (mm5Var != null ? mm5Var.equals(((be0) nm5Var).a) : ((be0) nm5Var).a == null) {
                lm5 lm5Var = this.b;
                if (lm5Var != null ? lm5Var.equals(((be0) nm5Var).b) : ((be0) nm5Var).b == null) {
                    return true;
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        mm5 mm5Var = this.a;
        int iHashCode = ((mm5Var == null ? 0 : mm5Var.hashCode()) ^ 1000003) * 1000003;
        lm5 lm5Var = this.b;
        return iHashCode ^ (lm5Var != null ? lm5Var.hashCode() : 0);
    }

    public final String toString() {
        return "NetworkConnectionInfo{networkType=" + this.a + ", mobileSubtype=" + this.b + "}";
    }
}
