package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class z73 implements r73 {
    public final /* synthetic */ int a;

    public /* synthetic */ z73(int i) {
        this.a = i;
    }

    @Override // defpackage.r73
    public final int a() {
        switch (this.a) {
            case 0:
                return 1;
            default:
                return 7;
        }
    }

    @Override // defpackage.r73
    public final t73 c(ow0 ow0Var) {
        switch (this.a) {
            case 0:
                long jE = ow0Var.b.e(ow0Var);
                vw2 vw2Var = ow0Var.b;
                vw2Var.e(ow0Var);
                ms8.H(ow0Var);
                ms8.H(ow0Var);
                ms8.H(ow0Var);
                ms8.H(ow0Var);
                vw2Var.f(ow0Var);
                vw2Var.f(ow0Var);
                vw2Var.e(ow0Var);
                return new h73(jE, ow0Var.q(h51.c, ((int) vw2Var.e(ow0Var)) / 2));
            default:
                ow0Var.b.e(ow0Var);
                return new k73();
        }
    }
}
