package defpackage;

import java.security.GeneralSecurityException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class tf9 implements as9 {
    @Override // defpackage.as9
    public final vm4 a(bd9 bd9Var, Integer num) throws GeneralSecurityException {
        sf9 sf9Var = (sf9) bd9Var;
        int i = sf9Var.a;
        if (i == 24) {
            m0.h("192 bit AES EAX Parameters are not valid");
            return null;
        }
        s02 s02Var = new s02();
        s02Var.b = null;
        s02Var.a = sf9Var;
        s02Var.c = num;
        s02Var.b = km8.n(i);
        return s02Var.d();
    }
}
