package defpackage;

import java.nio.charset.Charset;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class y73 implements r73 {
    @Override // defpackage.r73
    public final int a() {
        return 3;
    }

    @Override // defpackage.r73
    public final t73 c(ow0 ow0Var) throws iw0 {
        long jE = ow0Var.b.e(ow0Var);
        vw2 vw2Var = ow0Var.b;
        vw2Var.e(ow0Var);
        ms8.H(ow0Var);
        ms8.H(ow0Var);
        ms8.H(ow0Var);
        ms8.H(ow0Var);
        vw2Var.f(ow0Var);
        vw2Var.f(ow0Var);
        vw2Var.e(ow0Var);
        long jE2 = vw2Var.e(ow0Var);
        vw2Var.e(ow0Var);
        byte bN = ow0Var.n();
        ow0Var.n();
        byte[] bArr = new byte[24];
        ow0Var.o(bArr, 24);
        Charset charset = h51.c;
        new String(bArr, 0, bN, charset);
        return new b73(jE, ow0Var.q(charset, ((int) jE2) / 2));
    }
}
