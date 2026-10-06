package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class bg1 extends gs4 implements bt3 {
    public final /* synthetic */ os4 a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bg1(os4 os4Var) {
        super(0);
        this.a = os4Var;
    }

    @Override // defpackage.bt3
    public final Object invoke() {
        return ((zl8) this.a.getValue()).getViewModelStore();
    }
}
