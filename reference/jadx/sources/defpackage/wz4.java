package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class wz4 {
    public final String a;
    public final int b;

    public wz4(String str, int i) {
        this.a = str;
        this.b = i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof wz4)) {
            return false;
        }
        wz4 wz4Var = (wz4) obj;
        return this.a.equals(wz4Var.a) && this.b == wz4Var.b;
    }

    public final int hashCode() {
        return Integer.hashCode(this.b) + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return u48.m("TcpProbeEndpoint(host=", this.a, ", port=", this.b, ")");
    }
}
