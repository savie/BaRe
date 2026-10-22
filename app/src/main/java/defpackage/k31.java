package defpackage;

import com.microsoft.identity.common.java.authscheme.TokenAuthenticationScheme;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class k31 {
    public final int a;
    public final sb4 b;
    public final sb4 c;
    public final m61 d;
    public final m61 e;

    public k31(int i, sb4 sb4Var, m61 m61Var, m61 m61Var2, sb4 sb4Var2) {
        this.a = i;
        this.b = sb4Var;
        this.d = m61Var;
        this.e = m61Var2;
        this.c = sb4Var2;
    }

    public final String toString() {
        return "Change: " + xs1.x(this.a) + TokenAuthenticationScheme.SCHEME_DELIMITER + this.d;
    }
}
