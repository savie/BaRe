package defpackage;

import java.security.GeneralSecurityException;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.interfaces.ECPrivateKey;
import java.security.interfaces.ECPublicKey;
import java.security.spec.ECParameterSpec;
import java.security.spec.ECPoint;
import java.security.spec.EllipticCurve;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class gh9 implements as9 {
    public final /* synthetic */ int a;

    @Override // defpackage.as9
    public final vm4 a(bd9 bd9Var, Integer num) throws GeneralSecurityException {
        ECParameterSpec eCParameterSpec;
        p1a p1aVar;
        km8 km8Var;
        d2a d2aVarA;
        switch (this.a) {
            case 0:
                return kh9.K((mh9) bd9Var, num);
            case 1:
                cq9 cq9Var = (cq9) bd9Var;
                yp9 yp9Var = cq9Var.a;
                if (yp9Var == yp9.b) {
                    eCParameterSpec = yr9.a;
                } else if (yp9Var == yp9.c) {
                    eCParameterSpec = yr9.b;
                } else {
                    if (yp9Var != yp9.d) {
                        throw new GeneralSecurityException("Unsupported curve type: ".concat(String.valueOf(yp9Var)));
                    }
                    eCParameterSpec = yr9.c;
                }
                KeyPairGenerator keyPairGenerator = (KeyPairGenerator) s1a.e.a.zza("EC");
                keyPairGenerator.initialize(eCParameterSpec);
                KeyPair keyPairGenerateKeyPair = keyPairGenerator.generateKeyPair();
                return fq9.M(nq9.K(cq9Var, ((ECPublicKey) keyPairGenerateKeyPair.getPublic()).getW(), num), new vk9(((ECPrivateKey) keyPairGenerateKeyPair.getPrivate()).getS(), 22));
            default:
                lq9 lq9Var = (lq9) bd9Var;
                jq9 jq9Var = lq9Var.a;
                if (jq9Var.equals(jq9.g)) {
                    byte[] bArrA = rt9.a(32);
                    bArrA[0] = (byte) (bArrA[0] | 7);
                    byte b = (byte) (bArrA[31] & 63);
                    bArrA[31] = b;
                    bArrA[31] = (byte) (b | 128);
                    km8Var = new km8(d2a.a(bArrA));
                    d2aVarA = d2a.a(nc8.v0(bArrA));
                } else {
                    jq9 jq9Var2 = jq9.f;
                    jq9 jq9Var3 = jq9.e;
                    jq9 jq9Var4 = jq9.d;
                    if (jq9Var != jq9Var4 && jq9Var != jq9Var3 && jq9Var != jq9Var2) {
                        m0.h("Unknown KEM ID");
                        return null;
                    }
                    byte[] bArr = or9.a;
                    if (jq9Var == jq9Var4) {
                        p1aVar = p1a.a;
                    } else if (jq9Var == jq9Var3) {
                        p1aVar = p1a.b;
                    } else {
                        if (jq9Var != jq9Var2) {
                            m0.h("Unrecognized NIST HPKE KEM identifier");
                            return null;
                        }
                        p1aVar = p1a.c;
                    }
                    ECParameterSpec eCParameterSpecM = zm5.M(p1aVar);
                    KeyPairGenerator keyPairGenerator2 = (KeyPairGenerator) s1a.e.a.zza("EC");
                    keyPairGenerator2.initialize(eCParameterSpecM);
                    KeyPair keyPairGenerateKeyPair2 = keyPairGenerator2.generateKeyPair();
                    ECPoint w = ((ECPublicKey) keyPairGenerateKeyPair2.getPublic()).getW();
                    EllipticCurve curve = zm5.M(p1aVar).getCurve();
                    yr9.g(w, curve);
                    int iK = zm5.K(curve);
                    int i = (iK * 2) + 1;
                    byte[] bArr2 = new byte[i];
                    byte[] bArrJ = wx3.J(w.getAffineX());
                    byte[] bArrJ2 = wx3.J(w.getAffineY());
                    System.arraycopy(bArrJ2, 0, bArr2, i - bArrJ2.length, bArrJ2.length);
                    System.arraycopy(bArrJ, 0, bArr2, (iK + 1) - bArrJ.length, bArrJ.length);
                    bArr2[0] = 4;
                    d2a d2aVarA2 = d2a.a(bArr2);
                    km8Var = new km8(d2a.a(wx3.I(or9.a(jq9Var), ((ECPrivateKey) keyPairGenerateKeyPair2.getPrivate()).getS())));
                    d2aVarA = d2aVarA2;
                }
                return oq9.K(vq9.K(lq9Var, d2aVarA, num), km8Var);
        }
    }
}
