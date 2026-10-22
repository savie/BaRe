package defpackage;

import com.bareapps.barebackup.BareApp;
import com.bareapps.barebackup.common.Const;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ys7 extends ws7 implements qt3 {
    public final /* synthetic */ BareApp a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ys7(BareApp bareApp, jv1 jv1Var) {
        super(2, jv1Var);
        this.a = bareApp;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        return new ys7(this.a, jv1Var);
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        ys7 ys7Var = (ys7) create((xx1) obj, (jv1) obj2);
        be8 be8Var = be8.a;
        ys7Var.invokeSuspend(be8Var);
        return be8Var;
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        lg7.H(obj);
        vr6.i$default(vr6.INSTANCE, "App info", Const.l(), null, 4, null);
        boolean zC = b67.c();
        BareApp bareApp = this.a;
        if (zC) {
            BareApp.a(bareApp);
        }
        if (b67.f()) {
            BareApp.b(bareApp);
        }
        return be8.a;
    }
}
