package defpackage;

import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class dm extends em {
    public final List b;
    public final q63 c;
    public final List d;
    public final gv7 e;
    public final gv7 f;
    public final gv7 g;

    public dm(List list, q63 q63Var) {
        q63Var.getClass();
        this.b = list;
        this.c = q63Var;
        this.d = nc8.I(xl.ARCHIVE);
        this.e = new gv7(new gj(this, 5));
        this.f = new gv7(new ak(this, 2));
        this.g = new gv7(new bk(this, 2));
    }

    @Override // defpackage.em
    public final List a() {
        return this.d;
    }

    @Override // defpackage.em
    public final long b() {
        return ((Number) this.g.getValue()).longValue();
    }

    public final long d() {
        return ((Number) this.f.getValue()).longValue();
    }
}
