package defpackage;

import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class bm extends em {
    public final ji b;
    public final List c;
    public final gv7 d;

    public bm(ji jiVar) {
        jiVar.getClass();
        this.b = jiVar;
        this.c = nc8.I(xl.ARCHIVE);
        this.d = new gv7(new kf(this, 3));
    }

    @Override // defpackage.em
    public final List a() {
        return this.c;
    }

    @Override // defpackage.em
    public final long b() {
        return ((Number) this.d.getValue()).longValue();
    }
}
