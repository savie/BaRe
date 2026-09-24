package com.jcraft.jsch.jce;

import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.interfaces.RSAPrivateCrtKey;
import java.security.interfaces.RSAPrivateKey;
import java.security.interfaces.RSAPublicKey;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class KeyPairGenRSA implements com.jcraft.jsch.KeyPairGenRSA {
    public byte[] a;
    public byte[] b;
    public byte[] c;
    public byte[] d;
    public byte[] e;
    public byte[] f;
    public byte[] g;
    public byte[] h;

    @Override // com.jcraft.jsch.KeyPairGenRSA
    public final byte[] getC() {
        return this.d;
    }

    @Override // com.jcraft.jsch.KeyPairGenRSA
    public final byte[] getD() {
        return this.a;
    }

    @Override // com.jcraft.jsch.KeyPairGenRSA
    public final byte[] getE() {
        return this.b;
    }

    @Override // com.jcraft.jsch.KeyPairGenRSA
    public final byte[] getEP() {
        return this.e;
    }

    @Override // com.jcraft.jsch.KeyPairGenRSA
    public final byte[] getEQ() {
        return this.f;
    }

    @Override // com.jcraft.jsch.KeyPairGenRSA
    public final byte[] getN() {
        return this.c;
    }

    @Override // com.jcraft.jsch.KeyPairGenRSA
    public final byte[] getP() {
        return this.g;
    }

    @Override // com.jcraft.jsch.KeyPairGenRSA
    public final byte[] getQ() {
        return this.h;
    }

    @Override // com.jcraft.jsch.KeyPairGenRSA
    public final void init(int i) throws Exception {
        KeyPairGenerator keyPairGenerator = KeyPairGenerator.getInstance("RSA");
        keyPairGenerator.initialize(i, new SecureRandom());
        KeyPair keyPairGenerateKeyPair = keyPairGenerator.generateKeyPair();
        PublicKey publicKey = keyPairGenerateKeyPair.getPublic();
        PrivateKey privateKey = keyPairGenerateKeyPair.getPrivate();
        RSAPrivateKey rSAPrivateKey = (RSAPrivateKey) privateKey;
        this.a = rSAPrivateKey.getPrivateExponent().toByteArray();
        this.b = ((RSAPublicKey) publicKey).getPublicExponent().toByteArray();
        this.c = rSAPrivateKey.getModulus().toByteArray();
        RSAPrivateCrtKey rSAPrivateCrtKey = (RSAPrivateCrtKey) privateKey;
        this.d = rSAPrivateCrtKey.getCrtCoefficient().toByteArray();
        this.e = rSAPrivateCrtKey.getPrimeExponentP().toByteArray();
        this.f = rSAPrivateCrtKey.getPrimeExponentQ().toByteArray();
        this.g = rSAPrivateCrtKey.getPrimeP().toByteArray();
        this.h = rSAPrivateCrtKey.getPrimeQ().toByteArray();
    }
}
