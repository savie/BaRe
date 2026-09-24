package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class x30 extends gs4 implements bt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ os4 b;
    public final /* synthetic */ rl0 c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ x30(rl0 rl0Var, os4 os4Var, int i) {
        super(0);
        this.a = i;
        this.c = rl0Var;
        this.b = os4Var;
    }

    @Override // defpackage.bt3
    public final Object invoke() {
        w24 w24Var;
        wl8 defaultViewModelProviderFactory;
        wl8 defaultViewModelProviderFactory2;
        int i = this.a;
        rl0 rl0Var = this.c;
        os4 os4Var = this.b;
        switch (i) {
            case 0:
                zl8 zl8Var = (zl8) os4Var.getValue();
                w24Var = zl8Var instanceof w24 ? (w24) zl8Var : null;
                return (w24Var == null || (defaultViewModelProviderFactory = w24Var.getDefaultViewModelProviderFactory()) == null) ? ((y30) rl0Var).getDefaultViewModelProviderFactory() : defaultViewModelProviderFactory;
            default:
                zl8 zl8Var2 = (zl8) os4Var.getValue();
                w24Var = zl8Var2 instanceof w24 ? (w24) zl8Var2 : null;
                return (w24Var == null || (defaultViewModelProviderFactory2 = w24Var.getDefaultViewModelProviderFactory()) == null) ? ((m37) rl0Var).getDefaultViewModelProviderFactory() : defaultViewModelProviderFactory2;
        }
    }
}
