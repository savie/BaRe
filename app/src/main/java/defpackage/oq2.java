package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class oq2 extends wx3 {
    public final tq2 g;

    public oq2(tq2 tq2Var) {
        this.g = tq2Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof oq2) && this.g.equals(((oq2) obj).g);
    }

    public final int hashCode() {
        return this.g.a.hashCode();
    }

    public final String toString() {
        return "Complete(result=" + this.g + ")";
    }
}
