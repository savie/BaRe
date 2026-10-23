package defpackage;

import java.util.Set;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class vv1 extends ws7 implements qt3 {
    public final /* synthetic */ wv1 a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public vv1(wv1 wv1Var, jv1 jv1Var) {
        super(2, jv1Var);
        this.a = wv1Var;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        return new vv1(this.a, jv1Var);
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        vv1 vv1Var = (vv1) create((xx1) obj, (jv1) obj2);
        be8 be8Var = be8.a;
        vv1Var.invokeSuspend(be8Var);
        return be8Var;
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        lg7.H(obj);
        wv1 wv1Var = this.a;
        wv1Var.h(R.string.processing);
        wv1Var.e.k(new fm7(qv1.a.getList$default(qv1.Companion, true, (wg5.c) wv1Var.f.getValue(), null, 4, null), (Set) null, false, (String) null, 30));
        wv1Var.f();
        return be8.a;
    }
}
