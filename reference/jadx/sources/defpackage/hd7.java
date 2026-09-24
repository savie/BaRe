package defpackage;

import android.util.Log;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class hd7 extends ws7 implements rt3 {
    public int a;
    public /* synthetic */ li3 b;
    public /* synthetic */ Throwable c;
    public final /* synthetic */ kd7 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public hd7(kd7 kd7Var, jv1 jv1Var) {
        super(3, jv1Var);
        this.d = kd7Var;
    }

    @Override // defpackage.rt3
    public final Object a(Object obj, Object obj2, Object obj3) {
        hd7 hd7Var = new hd7(this.d, (jv1) obj3);
        hd7Var.b = (li3) obj;
        hd7Var.c = (Throwable) obj2;
        return hd7Var.invokeSuspend(be8.a);
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        int i = this.a;
        if (i == 0) {
            lg7.H(obj);
            li3 li3Var = this.b;
            Throwable th = this.c;
            u87 u87VarA = this.d.b.a(null);
            q87 q87Var = new q87(u87VarA, null, null);
            Log.d("FirebaseSessions", "Init session datastore failed with exception message: " + th.getMessage() + ". Emit fallback session " + u87VarA.a);
            this.b = null;
            this.a = 1;
            Object objC = li3Var.c(q87Var, this);
            yx1 yx1Var = yx1.a;
            if (objC == yx1Var) {
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
