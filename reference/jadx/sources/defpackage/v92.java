package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class v92 extends gs4 implements bt3 {
    public final /* synthetic */ x92 a;
    public final /* synthetic */ os4 b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public v92(x92 x92Var, os4 os4Var) {
        super(0);
        this.a = x92Var;
        this.b = os4Var;
    }

    @Override // defpackage.bt3
    public final Object invoke() {
        wl8 defaultViewModelProviderFactory;
        zl8 zl8Var = (zl8) this.b.getValue();
        w24 w24Var = zl8Var instanceof w24 ? (w24) zl8Var : null;
        return (w24Var == null || (defaultViewModelProviderFactory = w24Var.getDefaultViewModelProviderFactory()) == null) ? this.a.getDefaultViewModelProviderFactory() : defaultViewModelProviderFactory;
    }
}
