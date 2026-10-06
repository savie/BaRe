package defpackage;

import java.util.Arrays;
import javax.crypto.SecretKey;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class nw5 implements tf7 {
    public static final l15 b = o15.b(nw5.class);
    public lv1 a;

    @Override // defpackage.tf7
    public final boolean b(st6 st6Var, SecretKey secretKey) {
        try {
            zu6 zu6Var = st6Var.b;
            dv6 dv6Var = st6Var.a;
            lv1 lv1Var = this.a;
            String algorithm = secretKey.getAlgorithm();
            lv1Var.getClass();
            c55 c55VarH = lv1.h(algorithm);
            c55VarH.init(secretKey.getEncoded());
            c55VarH.update(zu6Var.a, ((ut6) dv6Var).n, 48);
            c55VarH.update(ut6.p);
            c55VarH.update(zu6Var.a, 64, ((ut6) dv6Var).o - 64);
            byte[] bArrB = c55VarH.b();
            byte[] bArr = ((ut6) dv6Var).m;
            for (int i = 0; i < 16; i++) {
                if (bArrB[i] != bArr[i]) {
                    l15 l15Var = b;
                    l15Var.q(st6Var, Arrays.toString(bArr), Arrays.toString(bArrB));
                    l15Var.e(st6Var, dv6Var, "Packet {} has header: {}");
                    return false;
                }
            }
            return true;
        } catch (h67 e) {
            throw new IllegalStateException(e);
        }
    }

    @Override // defpackage.tf7
    public final rt6 f(rt6 rt6Var, SecretKey secretKey) {
        if (secretKey != null) {
            return new mw5(this, rt6Var, secretKey);
        }
        b.D(((ut6) rt6Var.c()).e, "Not wrapping {} as signed, as no key is set.");
        return rt6Var;
    }
}
