package defpackage;

import java.math.BigInteger;
import java.security.GeneralSecurityException;
import java.security.spec.ECParameterSpec;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class oq9 extends br9 {
    public final vq9 d;
    public final km8 e;

    public oq9(vq9 vq9Var, km8 km8Var) {
        this.d = vq9Var;
        this.e = km8Var;
    }

    public static oq9 K(vq9 vq9Var, km8 km8Var) throws GeneralSecurityException {
        ECParameterSpec eCParameterSpec;
        lq9 lq9Var = vq9Var.d;
        d2a d2aVar = (d2a) km8Var.a;
        jq9 jq9Var = lq9Var.a;
        int length = d2aVar.a.length;
        String str = "Encoded private key byte length for " + String.valueOf(jq9Var) + " must be %d, not " + length;
        jq9 jq9Var2 = jq9.g;
        jq9 jq9Var3 = jq9.f;
        jq9 jq9Var4 = jq9.e;
        jq9 jq9Var5 = jq9.d;
        if (jq9Var == jq9Var5) {
            if (length != 32) {
                throw new GeneralSecurityException(String.format(str, 32));
            }
        } else if (jq9Var == jq9Var4) {
            if (length != 48) {
                throw new GeneralSecurityException(String.format(str, 48));
            }
        } else if (jq9Var == jq9Var3) {
            if (length != 66) {
                throw new GeneralSecurityException(String.format(str, 66));
            }
        } else {
            if (jq9Var != jq9Var2) {
                throw new GeneralSecurityException("Unable to validate private key length for ".concat(String.valueOf(jq9Var)));
            }
            if (length != 32) {
                throw new GeneralSecurityException(String.format(str, 32));
            }
        }
        byte[] bArrB = vq9Var.e.b();
        byte[] bArrB2 = d2aVar.b();
        if (jq9Var == jq9Var5 || jq9Var == jq9Var4 || jq9Var == jq9Var3) {
            if (jq9Var == jq9Var5) {
                eCParameterSpec = yr9.a;
            } else if (jq9Var == jq9Var4) {
                eCParameterSpec = yr9.b;
            } else {
                if (jq9Var != jq9Var3) {
                    c6.f("Unable to determine NIST curve params for ".concat(String.valueOf(jq9Var)));
                    return null;
                }
                eCParameterSpec = yr9.c;
            }
            BigInteger order = eCParameterSpec.getOrder();
            BigInteger bigIntegerG = wx3.G(bArrB2);
            if (bigIntegerG.signum() <= 0 || bigIntegerG.compareTo(order) >= 0) {
                m0.h("Invalid private key.");
                return null;
            }
            if (!yr9.c(bigIntegerG, eCParameterSpec).equals(zm5.N(eCParameterSpec.getCurve(), r1a.a, bArrB))) {
                m0.h("Invalid private key for public key.");
                return null;
            }
        } else {
            if (jq9Var != jq9Var2) {
                c6.f("Unable to validate key pair for ".concat(String.valueOf(jq9Var)));
                return null;
            }
            if (!Arrays.equals(nc8.v0(bArrB2), bArrB)) {
                m0.h("Invalid private key for public key.");
                return null;
            }
        }
        return new oq9(vq9Var, km8Var);
    }

    @Override // defpackage.vm4
    public final /* synthetic */ bd9 G() {
        return this.d.d;
    }

    @Override // defpackage.br9
    public final /* synthetic */ vm4 J() {
        return this.d;
    }
}
