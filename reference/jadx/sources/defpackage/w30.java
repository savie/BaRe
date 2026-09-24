package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class w30 extends gs4 implements bt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ os4 b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ w30(os4 os4Var, int i) {
        super(0);
        this.a = i;
        this.b = os4Var;
    }

    @Override // defpackage.bt3
    public final Object invoke() {
        w24 w24Var;
        int i = this.a;
        os4 os4Var = this.b;
        switch (i) {
            case 0:
                zl8 zl8Var = (zl8) os4Var.getValue();
                w24Var = zl8Var instanceof w24 ? (w24) zl8Var : null;
                return w24Var != null ? w24Var.getDefaultViewModelCreationExtras() : m22.b;
            default:
                zl8 zl8Var2 = (zl8) os4Var.getValue();
                w24Var = zl8Var2 instanceof w24 ? (w24) zl8Var2 : null;
                return w24Var != null ? w24Var.getDefaultViewModelCreationExtras() : m22.b;
        }
    }
}
