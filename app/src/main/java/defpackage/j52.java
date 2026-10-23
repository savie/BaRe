package defpackage;

import org.swiftapps.swiftbackup.cloud.connect.CsActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class j52 extends ws7 implements qt3 {
    public int a;
    public final /* synthetic */ CsActivity b;
    public final /* synthetic */ mt3 c;
    public final /* synthetic */ bt3 d;
    public final /* synthetic */ String e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j52(CsActivity csActivity, mt3 mt3Var, bt3 bt3Var, String str, jv1 jv1Var) {
        super(2, jv1Var);
        this.b = csActivity;
        this.c = mt3Var;
        this.d = bt3Var;
        this.e = str;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        return new j52(this.b, this.c, this.d, this.e, jv1Var);
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        return ((j52) create((xx1) obj, (jv1) obj2)).invokeSuspend(be8.a);
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) throws Throwable {
        int i = this.a;
        if (i == 0) {
            lg7.H(obj);
            dz5 dz5Var = dz5.a;
            final boolean zD = dz5.d();
            zn4 zn4Var = zn4.a;
            final CsActivity csActivity = this.b;
            final mt3 mt3Var = this.c;
            final bt3 bt3Var = this.d;
            final String str = this.e;
            bt3 bt3Var2 = new bt3() { // from class: i52
                @Override // defpackage.bt3
                public final Object invoke() {
                    CsActivity csActivity2 = csActivity;
                    csActivity2.N0 = false;
                    mt3 mt3Var2 = mt3Var;
                    if (mt3Var2 != null) {
                        mt3Var2.invoke(Boolean.FALSE);
                    }
                    boolean zIsFinishing = csActivity2.isFinishing();
                    be8 be8Var = be8.a;
                    if (!zIsFinishing && !csActivity2.isDestroyed()) {
                        boolean z = zD;
                        bt3 bt3Var3 = bt3Var;
                        if (!z) {
                            dz5 dz5Var2 = dz5.a;
                            if (!dz5.h("android.permission.ACCESS_LOCAL_NETWORK")) {
                                dz5.a(csActivity2, new e52(bt3Var3, csActivity2, str), "android.permission.ACCESS_LOCAL_NETWORK");
                                return be8Var;
                            }
                        }
                        bt3Var3.invoke();
                    }
                    return be8Var;
                }
            };
            this.a = 1;
            Object objG = zn4.g(bt3Var2, this);
            yx1 yx1Var = yx1.a;
            if (objG == yx1Var) {
                return yx1Var;
            }
        } else {
            if (i != 1) {
                l0.e("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            lg7.H(obj);
        }
        return be8.a;
    }
}
