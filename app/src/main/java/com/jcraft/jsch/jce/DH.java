package com.jcraft.jsch.jce;

import java.math.BigInteger;
import java.security.KeyFactory;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import javax.crypto.KeyAgreement;
import javax.crypto.interfaces.DHPublicKey;
import javax.crypto.spec.DHParameterSpec;
import javax.crypto.spec.DHPublicKeySpec;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class DH implements com.jcraft.jsch.DH {
    public BigInteger a;
    public BigInteger b;
    public BigInteger c;
    public byte[] d;
    public BigInteger e;
    public KeyPairGenerator f;
    public KeyAgreement g;

    @Override // com.jcraft.jsch.DH
    public final byte[] getE() throws Exception {
        if (this.c == null) {
            this.f.initialize(new DHParameterSpec(this.a, this.b));
            KeyPair keyPairGenerateKeyPair = this.f.generateKeyPair();
            this.g.init(keyPairGenerateKeyPair.getPrivate());
            BigInteger y = ((DHPublicKey) keyPairGenerateKeyPair.getPublic()).getY();
            this.c = y;
            this.d = y.toByteArray();
        }
        return this.d;
    }

    @Override // com.jcraft.jsch.DH
    public final byte[] getK() throws Exception {
        this.g.doPhase(KeyFactory.getInstance("DH").generatePublic(new DHPublicKeySpec(this.e, this.a, this.b)), true);
        return this.g.generateSecret();
    }

    @Override // com.jcraft.jsch.DH
    public final void init() throws Exception {
        this.f = KeyPairGenerator.getInstance("DH");
        this.g = KeyAgreement.getInstance("DH");
    }

    @Override // com.jcraft.jsch.DH
    public final void setF(byte[] bArr) {
        this.e = new BigInteger(1, bArr);
    }

    @Override // com.jcraft.jsch.DH
    public final void setG(byte[] bArr) {
        this.b = new BigInteger(1, bArr);
    }

    @Override // com.jcraft.jsch.DH
    public final void setP(byte[] bArr) {
        this.a = new BigInteger(1, bArr);
    }

    @Override // com.jcraft.jsch.DH
    public final void checkRange() throws Exception {
    }
}
