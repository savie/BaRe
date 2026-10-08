package com.jcraft.jsch.jce;

import com.jcraft.jsch.ECDH;
import java.math.BigInteger;
import java.security.KeyFactory;
import java.security.interfaces.ECPublicKey;
import java.security.spec.ECFieldFp;
import java.security.spec.ECPoint;
import java.security.spec.ECPublicKeySpec;
import java.security.spec.EllipticCurve;
import javax.crypto.KeyAgreement;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class ECDHN implements ECDH {
    public static final BigInteger d;
    public static final BigInteger e;
    public byte[] a;
    public ECPublicKey b;
    public KeyAgreement c;

    static {
        BigInteger bigInteger = BigInteger.ONE;
        BigInteger bigIntegerAdd = bigInteger.add(bigInteger);
        d = bigIntegerAdd;
        e = bigIntegerAdd.add(bigInteger);
    }

    @Override // com.jcraft.jsch.ECDH
    public final byte[] getQ() throws Exception {
        return this.a;
    }

    @Override // com.jcraft.jsch.ECDH
    public final byte[] getSecret(byte[] bArr, byte[] bArr2) throws Exception {
        this.c.doPhase(KeyFactory.getInstance("EC").generatePublic(new ECPublicKeySpec(new ECPoint(new BigInteger(1, bArr), new BigInteger(1, bArr2)), this.b.getParams())), true);
        return this.c.generateSecret();
    }

    @Override // com.jcraft.jsch.ECDH
    public final void init(int i) throws Exception {
        this.c = KeyAgreement.getInstance("ECDH");
        KeyPairGenECDSA keyPairGenECDSA = new KeyPairGenECDSA();
        keyPairGenECDSA.init(i);
        this.b = keyPairGenECDSA.d;
        byte[] bArr = keyPairGenECDSA.b;
        byte[] bArr2 = keyPairGenECDSA.c;
        byte[] bArr3 = new byte[bArr.length + 1 + bArr2.length];
        bArr3[0] = 4;
        System.arraycopy(bArr, 0, bArr3, 1, bArr.length);
        System.arraycopy(bArr2, 0, bArr3, bArr.length + 1, bArr2.length);
        this.a = bArr3;
        this.c.init(keyPairGenECDSA.e);
    }

    @Override // com.jcraft.jsch.ECDH
    public final boolean validate(byte[] bArr, byte[] bArr2) throws Exception {
        BigInteger bigInteger = new BigInteger(1, bArr);
        BigInteger bigInteger2 = new BigInteger(1, bArr2);
        if (new ECPoint(bigInteger, bigInteger2).equals(ECPoint.POINT_INFINITY)) {
            return false;
        }
        EllipticCurve curve = this.b.getParams().getCurve();
        BigInteger p = ((ECFieldFp) curve.getField()).getP();
        BigInteger bigIntegerSubtract = p.subtract(BigInteger.ONE);
        if (bigInteger.compareTo(bigIntegerSubtract) > 0 || bigInteger2.compareTo(bigIntegerSubtract) > 0) {
            return false;
        }
        return bigInteger2.modPow(d, p).equals(bigInteger.multiply(curve.getA()).add(curve.getB()).add(bigInteger.modPow(e, p)).mod(p));
    }
}
