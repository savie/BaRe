package defpackage;

import android.util.Log;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class xo7 extends ws7 implements qt3 {
    public final /* synthetic */ boolean a;
    public final /* synthetic */ yo7 b;
    public final /* synthetic */ q63 c;
    public final /* synthetic */ q63 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public xo7(boolean z, yo7 yo7Var, q63 q63Var, q63 q63Var2, jv1 jv1Var) {
        super(2, jv1Var);
        this.a = z;
        this.b = yo7Var;
        this.c = q63Var;
        this.d = q63Var2;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        return new xo7(this.a, this.b, this.c, this.d, jv1Var);
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        xo7 xo7Var = (xo7) create((xx1) obj, (jv1) obj2);
        be8 be8Var = be8.a;
        xo7Var.invokeSuspend(be8Var);
        return be8Var;
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        q63 q63Var = this.c;
        boolean z = this.a;
        yo7 yo7Var = this.b;
        ix6 ix6Var = yo7Var.f;
        lg7.H(obj);
        try {
            uo7 uo7Var = new uo7(0, z, true);
            ix6Var.k(uo7Var);
            new em2(q63Var, this.d).b(new jj2(9, yo7Var, uo7Var));
            if (!z) {
                cy0.e(q63Var);
            }
        } catch (Exception e) {
            vr6.e$default(vr6.INSTANCE, yo7Var.b, xs1.j("moveFilesToNewStorage: ", e.getMessage()), null, 4, null);
        }
        Log.i(yo7Var.b, "moveFilesToNewStorage: Completed");
        ix6Var.k(to7.a);
        return be8.a;
    }
}
