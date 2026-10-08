package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ax5 {
    public xj6 a;
    public gy5 b;

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || ax5.class != obj.getClass()) {
            return false;
        }
        ax5 ax5Var = (ax5) obj;
        if (this.a.equals(ax5Var.a)) {
            return this.b.equals(ax5Var.b);
        }
        return false;
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }
}
