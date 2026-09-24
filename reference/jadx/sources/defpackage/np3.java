package defpackage;

import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class np3 extends qo0 {
    public boolean e;
    public List f;
    public final ex6 g;
    public final ex6 h;
    public dv i;
    public final mp3 j;
    public pw5 k;

    public np3() {
        to3 to3Var = to3.LOCAL;
        this.f = ov2.a;
        ex6 ex6Var = new ex6();
        ex6Var.k(hk6.Loading);
        this.g = ex6Var;
        this.h = new ex6();
        this.j = new mp3(this);
        this.k = zm5.q();
    }

    @Override // defpackage.a55, defpackage.tl8
    public final void b() {
        super.b();
        dv dvVar = this.i;
        if (dvVar != null) {
            dvVar.p(this.j);
        } else {
            pe4.F("repo");
            throw null;
        }
    }

    public final void j(boolean z, boolean z2) {
        zn4 zn4Var = zn4.a;
        zn4.c(new z10(this, z, z2, 1));
    }
}
