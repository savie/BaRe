package com.jcraft.jsch.jce;

import com.jcraft.jsch.JSchException;
import defpackage.fz5;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.interfaces.ECPrivateKey;
import java.security.interfaces.ECPublicKey;
import java.security.spec.ECGenParameterSpec;
import java.security.spec.ECPoint;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class KeyPairGenECDSA implements com.jcraft.jsch.KeyPairGenECDSA {
    public byte[] a;
    public byte[] b;
    public byte[] c;
    public ECPublicKey d;
    public ECPrivateKey e;

    @Override // com.jcraft.jsch.KeyPairGenECDSA
    public final byte[] getD() {
        return this.a;
    }

    @Override // com.jcraft.jsch.KeyPairGenECDSA
    public final byte[] getR() {
        return this.b;
    }

    @Override // com.jcraft.jsch.KeyPairGenECDSA
    public final byte[] getS() {
        return this.c;
    }

    @Override // com.jcraft.jsch.KeyPairGenECDSA
    public final void init(int i) throws Exception {
        String str;
        if (i == 256) {
            str = "secp256r1";
        } else if (i == 384) {
            str = "secp384r1";
        } else {
            if (i != 521) {
                throw new JSchException(fz5.j(i, "unsupported key size: "));
            }
            str = "secp521r1";
        }
        for (int i2 = 0; i2 < 1000; i2++) {
            KeyPairGenerator keyPairGenerator = KeyPairGenerator.getInstance("EC");
            keyPairGenerator.initialize(new ECGenParameterSpec(str));
            KeyPair keyPairGenKeyPair = keyPairGenerator.genKeyPair();
            this.e = (ECPrivateKey) keyPairGenKeyPair.getPrivate();
            ECPublicKey eCPublicKey = (ECPublicKey) keyPairGenKeyPair.getPublic();
            this.d = eCPublicKey;
            eCPublicKey.getParams();
            this.a = this.e.getS().toByteArray();
            ECPoint w = this.d.getW();
            this.b = w.getAffineX().toByteArray();
            byte[] byteArray = w.getAffineY().toByteArray();
            this.c = byteArray;
            byte[] bArr = this.b;
            if (bArr.length == byteArray.length && ((i == 256 && bArr.length == 32) || ((i == 384 && bArr.length == 48) || (i == 521 && bArr.length == 66)))) {
                break;
            }
        }
        byte[] bArr2 = this.a;
        if (bArr2.length < this.b.length) {
            byte[] bArr3 = new byte[bArr2.length + 1];
            System.arraycopy(bArr2, 0, bArr3, 1, bArr2.length);
            Util.a(bArr2);
            this.a = bArr3;
        }
    }
}
