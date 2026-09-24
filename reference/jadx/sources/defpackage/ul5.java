package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ul5 extends jm1 {
    public final pl5 g;

    public ul5(pl5 pl5Var) {
        pl5Var.getClass();
        this.g = pl5Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && ul5.class == obj.getClass() && pe4.d(this.g, ((ul5) obj).g);
    }

    public final int hashCode() {
        return this.g.hashCode() - 31;
    }

    public final String toString() {
        return "InProgress(latestEvent=" + this.g + ", direction=-1)";
    }
}
