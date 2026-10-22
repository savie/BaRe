package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class j7 extends gs4 implements bt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ j7(Object obj, int i) {
        super(0);
        this.a = i;
        this.b = obj;
    }

    @Override // defpackage.bt3
    public final Object invoke() {
        int i = this.a;
        Object obj = this.b;
        switch (i) {
            case 0:
                return (zl8) ((n7) obj).c();
            default:
                zl8 zl8Var = (zl8) ((os4) obj).getValue();
                w24 w24Var = zl8Var instanceof w24 ? (w24) zl8Var : null;
                return w24Var != null ? w24Var.getDefaultViewModelCreationExtras() : m22.b;
        }
    }
}
