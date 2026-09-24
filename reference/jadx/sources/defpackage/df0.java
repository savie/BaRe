package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class df0 implements x23 {
    public final /* synthetic */ int a;

    public /* synthetic */ df0(int i) {
        this.a = i;
    }

    @Override // defpackage.x23
    public final Object b() {
        switch (this.a) {
            case 0:
                j jVar = new j();
                ny0 ny0Var = new ny0();
                ny0Var.i = new by0();
                ny0Var.j = new by0();
                ny0Var.a = jVar;
                ny0Var.b = 16;
                ny0Var.h = new byte[16];
                return new cf0(ny0Var);
            default:
                return new kr6();
        }
    }
}
