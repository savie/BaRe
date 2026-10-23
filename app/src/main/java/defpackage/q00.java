package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class q00 extends qo0 {
    public final ex6 e = new ex6();
    public n00 f = new n00(null, "", false, null);
    public boolean g;
    public int h;
    public bl7 i;

    @Override // defpackage.a55, defpackage.tl8
    public final void b() {
        bl7 bl7Var = this.i;
        if (bl7Var != null) {
            bl7Var.cancel(null);
        }
        super.b();
    }

    public final void j() {
        n00 n00Var = this.f;
        if (n00Var.c) {
            return;
        }
        int i = this.h + 1;
        this.h = i;
        n00 n00VarA = n00.a(n00Var, null, null, true, null, 2);
        this.f = n00VarA;
        this.e.k(n00VarA);
        bl7 bl7Var = this.i;
        if (bl7Var != null) {
            bl7Var.cancel(null);
        }
        zn4 zn4Var = zn4.a;
        this.i = zn4.b(null, new p00(this, i, null));
    }
}
