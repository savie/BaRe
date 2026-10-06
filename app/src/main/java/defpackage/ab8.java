package defpackage;

import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ab8 {
    public final long a;
    public final fi7 b;
    public final j87 c;
    public final ru3 d;
    public final di7 e;
    public final cv6 f;

    public ab8(long j, fi7 fi7Var, j87 j87Var, di7 di7Var, xr1 xr1Var, cv6 cv6Var, Set set) {
        this.a = j;
        this.b = fi7Var;
        this.c = j87Var;
        ru3 ru3Var = xr1Var.b;
        this.d = ru3Var;
        this.e = di7Var;
        this.f = cv6Var;
        if (set.contains(lu6.SMB2_SHAREFLAG_ENCRYPT_DATA) && ((us6) ru3Var.e).a()) {
            xr1Var.b();
        }
    }

    public final String toString() {
        return "TreeConnect[" + this.a + "](" + this.b + ")";
    }
}
