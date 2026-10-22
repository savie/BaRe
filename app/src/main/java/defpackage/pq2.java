package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class pq2 extends wx3 {
    public final String g;

    public pq2(String str) {
        this.g = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof pq2) && pe4.d(this.g, ((pq2) obj).g);
    }

    public final int hashCode() {
        String str = this.g;
        if (str == null) {
            return 0;
        }
        return str.hashCode();
    }

    public final String toString() {
        return eq3.k("Failed(errorSummary=", this.g, ")");
    }
}
