package defpackage;

import java.security.GeneralSecurityException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class bu9 implements as9 {
    @Override // defpackage.as9
    public final vm4 a(bd9 bd9Var, Integer num) throws GeneralSecurityException {
        eu9 eu9Var = (eu9) bd9Var;
        int i = eu9Var.a;
        if (i != 32) {
            m0.h("AesCmacKey size wrong, must be 32 bytes");
            return null;
        }
        gd gdVar = new gd(10);
        gdVar.c = null;
        gdVar.d = null;
        gdVar.b = eu9Var;
        gdVar.c = km8.n(i);
        gdVar.d = num;
        return gdVar.p();
    }
}
