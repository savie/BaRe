package defpackage;

import javax.crypto.SecretKey;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class lw5 extends zu6 {
    public final zu6 g;
    public final c55 h;

    public lw5(mw5 mw5Var, zu6 zu6Var) {
        this.g = zu6Var;
        SecretKey secretKey = mw5Var.f;
        lv1 lv1Var = mw5Var.g.a;
        String algorithm = secretKey.getAlgorithm();
        lv1Var.getClass();
        c55 c55VarH = lv1.h(algorithm);
        c55VarH.init(secretKey.getEncoded());
        this.h = c55VarH;
    }

    @Override // defpackage.ow0
    public final void e(zu6 zu6Var) {
        this.h.update(zu6Var.a, zu6Var.c, zu6Var.a());
        this.g.e(zu6Var);
    }

    @Override // defpackage.ow0
    public final ow0 f(byte b) {
        this.h.a(b);
        this.g.f(b);
        return this;
    }

    @Override // defpackage.ow0
    public final ow0 i(byte[] bArr, int i) {
        this.h.update(bArr, 0, i);
        this.g.i(bArr, i);
        return this;
    }
}
