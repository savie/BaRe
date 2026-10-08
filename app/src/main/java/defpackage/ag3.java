package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class ag3 {
    public final String a;
    public final String b;

    public ag3(String str) {
        this.a = str;
        this.b = null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ag3)) {
            return false;
        }
        ag3 ag3Var = (ag3) obj;
        return pe4.d(this.a, ag3Var.a) && pe4.d(this.b, ag3Var.b);
    }

    public final int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        String str = this.b;
        return iHashCode + (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        return eq3.l("RootFirewallDiagnostics(message=", this.a, ", underlinedText=", this.b, ")");
    }

    public ag3(String str, String str2) {
        this.a = str;
        this.b = str2;
    }
}
