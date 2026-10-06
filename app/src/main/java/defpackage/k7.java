package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class k7 extends gs4 implements bt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ k7(Object obj, int i) {
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
                return ((zl8) ((os4) obj).getValue()).getViewModelStore();
            default:
                return ((aa3) ((ic2) obj).j.getValue()).c;
        }
    }
}
