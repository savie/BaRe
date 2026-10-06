package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class rq2 extends xx3 {
    public final String j;

    public rq2(String str) {
        this.j = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof rq2) && this.j.equals(((rq2) obj).j);
    }

    public final int hashCode() {
        return this.j.hashCode();
    }

    public final String toString() {
        return eq3.k("AsyncJobId(asyncJobId=", this.j, ")");
    }
}
