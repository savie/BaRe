package defpackage;

import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class yl extends em {
    public final ji b;
    public final boolean c;
    public final List d;
    public final gv7 e;
    public final gv7 f;
    public final gv7 g;
    public final gv7 h;

    public yl(ji jiVar, boolean z) {
        jiVar.getClass();
        this.b = jiVar;
        this.c = z;
        this.d = nc8.I(xl.ARCHIVE);
        this.e = new gv7(new ck(this, 1));
        this.f = new gv7(new dk(this, 3));
        this.g = new gv7(new ek(this, 4));
        this.h = new gv7(new ah(this, 4));
    }

    @Override // defpackage.em
    public final List a() {
        return this.d;
    }

    @Override // defpackage.em
    public final long b() {
        return ((Number) this.h.getValue()).longValue();
    }
}
