package defpackage;

import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class wl extends em {
    public final q63 b;
    public final List c = nc8.I(xl.NA);
    public final gv7 d = new gv7(new ak(this, 1));
    public final gv7 e = new gv7(new bk(this, 1));

    public wl(q63 q63Var) {
        this.b = q63Var;
    }

    @Override // defpackage.em
    public final List a() {
        return this.c;
    }

    @Override // defpackage.em
    public final long b() {
        return ((Number) this.e.getValue()).longValue();
    }

    public final long d() {
        return ((Number) this.d.getValue()).longValue();
    }
}
