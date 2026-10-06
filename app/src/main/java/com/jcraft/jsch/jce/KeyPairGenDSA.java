package com.jcraft.jsch.jce;

import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.interfaces.DSAKey;
import java.security.interfaces.DSAParams;
import java.security.interfaces.DSAPrivateKey;
import java.security.interfaces.DSAPublicKey;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class KeyPairGenDSA implements com.jcraft.jsch.KeyPairGenDSA {
    public byte[] a;
    public byte[] b;
    public byte[] c;
    public byte[] d;
    public byte[] e;

    @Override // com.jcraft.jsch.KeyPairGenDSA
    public final byte[] getG() {
        return this.e;
    }

    @Override // com.jcraft.jsch.KeyPairGenDSA
    public final byte[] getP() {
        return this.c;
    }

    @Override // com.jcraft.jsch.KeyPairGenDSA
    public final byte[] getQ() {
        return this.d;
    }

    @Override // com.jcraft.jsch.KeyPairGenDSA
    public final byte[] getX() {
        return this.a;
    }

    @Override // com.jcraft.jsch.KeyPairGenDSA
    public final byte[] getY() {
        return this.b;
    }

    @Override // com.jcraft.jsch.KeyPairGenDSA
    public final void init(int i) throws Exception {
        KeyPairGenerator keyPairGenerator = KeyPairGenerator.getInstance("DSA");
        keyPairGenerator.initialize(i, new SecureRandom());
        KeyPair keyPairGenerateKeyPair = keyPairGenerator.generateKeyPair();
        PublicKey publicKey = keyPairGenerateKeyPair.getPublic();
        PrivateKey privateKey = keyPairGenerateKeyPair.getPrivate();
        this.a = ((DSAPrivateKey) privateKey).getX().toByteArray();
        this.b = ((DSAPublicKey) publicKey).getY().toByteArray();
        DSAParams params = ((DSAKey) privateKey).getParams();
        this.c = params.getP().toByteArray();
        this.d = params.getQ().toByteArray();
        this.e = params.getG().toByteArray();
    }
}
