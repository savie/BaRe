package defpackage;

import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class am extends em {
    public final ji b;
    public final boolean c;
    public final List d;
    public final gv7 e;

    public am(ji jiVar, boolean z) {
        jiVar.getClass();
        this.b = jiVar;
        this.c = z;
        this.d = nc8.I(xl.ARCHIVE);
        this.e = new gv7(new d76(this, 3));
    }

    @Override // defpackage.em
    public final List a() {
        return this.d;
    }

    @Override // defpackage.em
    public final long b() {
        return ((Number) this.e.getValue()).longValue();
    }
}
