package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class sq2 extends xx3 {
    public final tq2 j;

    public sq2(tq2 tq2Var) {
        this.j = tq2Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof sq2) && this.j.equals(((sq2) obj).j);
    }

    public final int hashCode() {
        return this.j.a.hashCode();
    }

    public final String toString() {
        return "Complete(result=" + this.j + ")";
    }
}
