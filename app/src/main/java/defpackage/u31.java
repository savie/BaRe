package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class u31 implements bt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ sa1 b;

    public /* synthetic */ u31(sa1 sa1Var, int i) {
        this.a = i;
        this.b = sa1Var;
    }

    @Override // defpackage.bt3
    public final Object invoke() {
        int i = this.a;
        sa1 sa1Var = this.b;
        switch (i) {
            case 0:
                return Integer.valueOf(sz8.z(sa1Var));
            default:
                if (!sa1Var.isFinishing() && !sa1Var.isDestroyed() && sa1Var.N) {
                    sa1Var.S();
                }
                return be8.a;
        }
    }
}
