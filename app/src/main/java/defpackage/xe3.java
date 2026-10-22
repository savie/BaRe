package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class xe3 extends l73 {
    public final eb2 n;

    public xe3(eb2 eb2Var) {
        this.n = eb2Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof xe3) && this.n == ((xe3) obj).n;
    }

    public final int hashCode() {
        return this.n.hashCode();
    }

    public final String toString() {
        return "Success(snapshot=" + this.n + ")";
    }
}
