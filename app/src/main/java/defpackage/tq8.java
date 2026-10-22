package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class tq8 {
    public final String a;
    public final String b;

    public tq8(String str, String str2) {
        str.getClass();
        this.a = str;
        this.b = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof tq8)) {
            return false;
        }
        tq8 tq8Var = (tq8) obj;
        return pe4.d(this.a, tq8Var.a) && this.b.equals(tq8Var.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return eq3.l("NextcloudChunkEndpoints(uploadRootUrl=", this.a, ", capabilitiesUrl=", this.b, ")");
    }
}
