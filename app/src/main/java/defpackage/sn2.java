package defpackage;

import com.nimbusds.jose.jwk.JWKParameterNames;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class sn2 implements cj8 {
    public static final sn2 a = new sn2();
    public static final ib b = ib.k(JWKParameterNames.RSA_OTHER_PRIMES__FACTOR_CRT_COEFFICIENT, "f", "s", "j", "tr", "lh", "ls", "fc", "sc", "sw", "of");

    @Override // defpackage.cj8
    public final Object r(ul4 ul4Var, float f) {
        ul4Var.b();
        String strU = null;
        String strU2 = null;
        float fQ = 0.0f;
        float fQ2 = 0.0f;
        float fQ3 = 0.0f;
        float fQ4 = 0.0f;
        int i = 3;
        int iR = 0;
        int iA = 0;
        int iA2 = 0;
        boolean zN = true;
        while (ul4Var.m()) {
            switch (ul4Var.A(b)) {
                case 0:
                    strU = ul4Var.u();
                    break;
                case 1:
                    strU2 = ul4Var.u();
                    break;
                case 2:
                    fQ = (float) ul4Var.q();
                    break;
                case 3:
                    int iR2 = ul4Var.r();
                    i = (iR2 <= 2 && iR2 >= 0) ? dj7.C(3)[iR2] : 3;
                    break;
                case 4:
                    iR = ul4Var.r();
                    break;
                case 5:
                    fQ2 = (float) ul4Var.q();
                    break;
                case 6:
                    fQ3 = (float) ul4Var.q();
                    break;
                case 7:
                    iA = gn4.a(ul4Var);
                    break;
                case 8:
                    iA2 = gn4.a(ul4Var);
                    break;
                case XmlPullParser.COMMENT /* 9 */:
                    fQ4 = (float) ul4Var.q();
                    break;
                case 10:
                    zN = ul4Var.n();
                    break;
                default:
                    ul4Var.D();
                    ul4Var.G();
                    break;
            }
        }
        ul4Var.h();
        return new rn2(strU, strU2, fQ, i, iR, fQ2, fQ3, iA, iA2, fQ4, zN);
    }
}
