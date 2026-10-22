package defpackage;

import java.security.InvalidAlgorithmParameterException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class zo9 implements as9 {
    @Override // defpackage.as9
    public final vm4 a(bd9 bd9Var, Integer num) throws InvalidAlgorithmParameterException {
        dp9 dp9Var = (dp9) bd9Var;
        int i = dp9Var.a;
        if (i != 64) {
            throw new InvalidAlgorithmParameterException(xs1.h(i, "invalid key size: ", ". Valid keys must have 64 bytes."));
        }
        dr drVar = new dr(7);
        drVar.c = null;
        drVar.b = dp9Var;
        drVar.d = num;
        drVar.c = km8.n(i);
        return drVar.i();
    }
}
