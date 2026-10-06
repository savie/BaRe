package defpackage;

import com.microsoft.identity.common.java.authscheme.TokenAuthenticationScheme;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class b58 extends c58 {
    @Override // defpackage.c58, defpackage.qb6
    public final /* bridge */ /* synthetic */ qb6 f() {
        f();
        return this;
    }

    @Override // defpackage.c58
    /* JADX INFO: renamed from: p */
    public final c58 f() {
        super.f();
        this.k = new b80();
        return this;
    }

    public final String toString() {
        b80 b80Var = this.k;
        if (b80Var == null || b80Var.a <= 0) {
            return "<" + n() + ">";
        }
        return "<" + n() + TokenAuthenticationScheme.SCHEME_DELIMITER + this.k.toString() + ">";
    }
}
