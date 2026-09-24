package defpackage;

import java.math.BigInteger;
import java.security.GeneralSecurityException;
import java.security.spec.ECParameterSpec;
import java.security.spec.ECPoint;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class fq9 extends br9 {
    public final nq9 d;
    public final vk9 e;
    public final km8 f;

    public fq9(nq9 nq9Var, vk9 vk9Var, km8 km8Var) {
        this.d = nq9Var;
        this.e = vk9Var;
        this.f = km8Var;
    }

    public static ECParameterSpec K(yp9 yp9Var) {
        if (yp9Var == yp9.b) {
            return yr9.a;
        }
        if (yp9Var == yp9.c) {
            return yr9.b;
        }
        if (yp9Var == yp9.d) {
            return yr9.c;
        }
        c6.f("Unable to determine NIST curve type for ".concat(String.valueOf(yp9Var)));
        return null;
    }

    public static fq9 L(nq9 nq9Var, km8 km8Var) throws GeneralSecurityException {
        d2a d2aVar = nq9Var.f;
        if (d2aVar == null) {
            m0.h("ECIES private key for X25519 curve cannot be constructed with NIST-curve public key");
            return null;
        }
        byte[] bArrB = ((d2a) km8Var.a).b();
        byte[] bArrB2 = d2aVar.b();
        if (bArrB.length != 32) {
            m0.h("Private key bytes length for X25519 curve must be 32");
            return null;
        }
        if (Arrays.equals(nc8.v0(bArrB), bArrB2)) {
            return new fq9(nq9Var, null, km8Var);
        }
        m0.h("Invalid private key for public key.");
        return null;
    }

    public static fq9 M(nq9 nq9Var, vk9 vk9Var) throws GeneralSecurityException {
        ECPoint eCPoint = nq9Var.e;
        if (eCPoint == null) {
            m0.h("ECIES private key for NIST curve cannot be constructed with X25519-curve public key");
            return null;
        }
        BigInteger bigInteger = (BigInteger) vk9Var.b;
        yp9 yp9Var = nq9Var.d.a;
        BigInteger order = K(yp9Var).getOrder();
        if (bigInteger.signum() <= 0 || bigInteger.compareTo(order) >= 0) {
            m0.h("Invalid private value");
            return null;
        }
        if (yr9.c(bigInteger, K(yp9Var)).equals(eCPoint)) {
            return new fq9(nq9Var, vk9Var, null);
        }
        m0.h("Invalid private value");
        return null;
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
