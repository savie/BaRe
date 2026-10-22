package defpackage;

import org.swiftapps.swiftbackup.cloud.orphans.a;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zh1 extends ws7 implements qt3 {
    public int a;
    public /* synthetic */ Object b;
    public final /* synthetic */ kc c;
    public final /* synthetic */ a d;
    public final /* synthetic */ long e;
    public final /* synthetic */ String f;
    public final /* synthetic */ long k;
    public final /* synthetic */ qh4 n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zh1(kc kcVar, a aVar, long j, String str, long j2, qh4 qh4Var, jv1 jv1Var) {
        super(2, jv1Var);
        this.c = kcVar;
        this.d = aVar;
        this.e = j;
        this.f = str;
        this.k = j2;
        this.n = qh4Var;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        zh1 zh1Var = new zh1(this.c, this.d, this.e, this.f, this.k, this.n, jv1Var);
        zh1Var.b = obj;
        return zh1Var;
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        return ((zh1) create((xx1) obj, (jv1) obj2)).invokeSuspend(be8.a);
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        xx1 xx1Var = (xx1) this.b;
        int i = this.a;
        be8 be8Var = be8.a;
        int i2 = 1;
        qh4 qh4Var = this.n;
        long j = this.k;
        a aVar = this.d;
        try {
            if (i == 0) {
                lg7.H(obj);
                pe4 pe4VarB = this.c.b();
                if (!l73.t(xx1Var)) {
                    a.k(aVar, j, qh4Var);
                    return be8Var;
                }
                long j2 = this.e;
                String str = this.f;
                w01 w01Var = new w01(i2, aVar, pe4VarB);
                this.b = null;
                this.a = 1;
                obj = a.l(aVar, j2, str, w01Var, this);
                yx1 yx1Var = yx1.a;
                if (obj == yx1Var) {
                    return yx1Var;
                }
            } else {
                if (i != 1) {
                    l0.e("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                lg7.H(obj);
            }
            ((Boolean) obj).getClass();
            a.k(aVar, j, qh4Var);
            return be8Var;
        } catch (Throwable th) {
            a.k(aVar, j, qh4Var);
            throw th;
        }
    }
}
