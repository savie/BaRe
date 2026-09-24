package defpackage;

import java.security.GeneralSecurityException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class fg9 implements as9 {
    @Override // defpackage.as9
    public final vm4 a(bd9 bd9Var, Integer num) throws GeneralSecurityException {
        kg9 kg9Var = (kg9) bd9Var;
        int i = kg9Var.a;
        if (i == 24) {
            m0.h("192 bit AES GCM Parameters are not valid");
            return null;
        }
        e41 e41Var = new e41();
        e41Var.c = null;
        e41Var.b = kg9Var;
        e41Var.d = num;
        e41Var.c = km8.n(i);
        return e41Var.e();
    }
}
