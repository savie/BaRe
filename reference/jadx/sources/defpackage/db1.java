package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class db1 extends xh8 {
    public final String q;

    public db1(String str) {
        this.q = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof db1) && this.q.equals(((db1) obj).q);
    }

    public final int hashCode() {
        return this.q.hashCode();
    }

    public final String toString() {
        return eq3.k("Error(message=", this.q, ")");
    }
}
