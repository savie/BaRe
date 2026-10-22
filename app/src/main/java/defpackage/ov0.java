package defpackage;

import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class ov0 extends ws7 implements qt3 {
    public /* synthetic */ Object a;
    public final /* synthetic */ pv0 b;
    public final /* synthetic */ g90 c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ov0(pv0 pv0Var, g90 g90Var, jv1 jv1Var) {
        super(2, jv1Var);
        this.b = pv0Var;
        this.c = g90Var;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        ov0 ov0Var = new ov0(this.b, this.c, jv1Var);
        ov0Var.a = obj;
        return ov0Var;
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        ov0 ov0Var = (ov0) create((xx1) obj, (jv1) obj2);
        be8 be8Var = be8.a;
        ov0Var.invokeSuspend(be8Var);
        return be8Var;
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        Object bn6Var;
        lg7.H(obj);
        pv0 pv0Var = this.b;
        pv0Var.h(R.string.processing);
        g90 g90Var = this.c;
        try {
            zu0 zu0Var = zu0.a;
            SwiftApp.Companion companion = SwiftApp.d;
            zu0.h(zu0Var, zu0.a().d(SwiftApp.Companion.c(), g90Var.I()));
            String str = zu0.c().b;
            bn6Var = Boolean.valueOf(!(str == null || nq7.j0(str)));
        } catch (Throwable th) {
            bn6Var = new bn6(th);
        }
        Throwable thA = en6.a(bn6Var);
        if (thA != null) {
            vr6.e$default(vr6.INSTANCE, pv0Var.b, "Error while authenticating with Box", thA, null, 8, null);
        }
        Boolean bool = Boolean.FALSE;
        if (bn6Var instanceof bn6) {
            bn6Var = bool;
        }
        pv0Var.f();
        pv0Var.g.i((Boolean) bn6Var);
        return be8.a;
    }
}
