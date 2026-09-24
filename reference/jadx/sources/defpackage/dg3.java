package defpackage;

import com.nimbusds.jose.jwk.source.JWKSourceBuilder;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class dg3 extends ws7 implements qt3 {
    public int a;
    public final /* synthetic */ long b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public dg3(long j, jv1 jv1Var) {
        super(2, jv1Var);
        this.b = j;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        return new dg3(this.b, jv1Var);
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        return ((dg3) create((xx1) obj, (jv1) obj2)).invokeSuspend(be8.a);
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        boolean z;
        yx1 yx1Var = yx1.a;
        int i = this.a;
        if (i == 0) {
            lg7.H(obj);
            this.a = 1;
            if (yc9.j(JWKSourceBuilder.DEFAULT_CACHE_REFRESH_TIMEOUT, this) == yx1Var) {
                return yx1Var;
            }
        } else {
            if (i != 1) {
                l0.e("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            lg7.H(obj);
        }
        gg3 gg3Var = gg3.a;
        long j = this.b;
        synchronized (gg3Var) {
            z = j == gg3.g;
        }
        if (z) {
            gg3Var.j(xf3.DISCONNECTED);
        }
        return be8.a;
    }
}
