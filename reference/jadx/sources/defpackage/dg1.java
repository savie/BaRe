package defpackage;

import android.content.Context;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class dg1 extends gs4 implements bt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ dg1(int i, Object obj, Object obj2) {
        super(0);
        this.a = i;
        this.b = obj;
        this.c = obj2;
    }

    @Override // defpackage.bt3
    public final Object invoke() {
        wl8 defaultViewModelProviderFactory;
        int i = this.a;
        Object obj = this.c;
        Object obj2 = this.b;
        switch (i) {
            case 0:
                zl8 zl8Var = (zl8) ((os4) obj).getValue();
                w24 w24Var = zl8Var instanceof w24 ? (w24) zl8Var : null;
                return (w24Var == null || (defaultViewModelProviderFactory = w24Var.getDefaultViewModelProviderFactory()) == null) ? ((gg1) obj2).getDefaultViewModelProviderFactory() : defaultViewModelProviderFactory;
            default:
                return ji8.i((Context) obj2, ((x36) obj).a.concat(".preferences_pb"));
        }
    }
}
