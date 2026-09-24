package defpackage;

import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class yf3 {
    public final zf3 a;
    public final boolean b;
    public final List c;
    public final ag3 d;

    public yf3(zf3 zf3Var, boolean z, List list, ag3 ag3Var) {
        this.a = zf3Var;
        this.b = z;
        this.c = list;
        this.d = ag3Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof yf3)) {
            return false;
        }
        yf3 yf3Var = (yf3) obj;
        return this.a.equals(yf3Var.a) && this.b == yf3Var.b && this.c.equals(yf3Var.c) && this.d.equals(yf3Var.d);
    }

    public final int hashCode() {
        return this.d.hashCode() + fz5.i(this.c, fz5.h(this.a.hashCode() * 31, 31, this.b), 31);
    }

    public final String toString() {
        return "FirebaseBackendDiagnostics(privateDnsInfo=" + this.a + ", isVpnActive=" + this.b + ", networkDnsServers=" + this.c + ", rootFirewallChecks=" + this.d + ")";
    }
}
