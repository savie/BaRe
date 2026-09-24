package com.jcraft.jsch.jce;

import com.jcraft.jsch.Buffer;
import java.math.BigInteger;
import java.nio.charset.StandardCharsets;
import java.security.KeyFactory;
import java.security.Signature;
import java.security.spec.RSAPrivateKeySpec;
import java.security.spec.RSAPublicKeySpec;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
abstract class SignatureRSAN implements com.jcraft.jsch.SignatureRSA {
    public Signature a;
    public KeyFactory b;

    public abstract String a();

    @Override // com.jcraft.jsch.Signature
    public void init() throws Exception {
        String str;
        String strA = a();
        if (strA.equals("rsa-sha2-256") || strA.equals("ssh-rsa-sha256@ssh.com")) {
            str = "SHA256withRSA";
        } else if (strA.equals("rsa-sha2-512") || strA.equals("ssh-rsa-sha512@ssh.com")) {
            str = "SHA512withRSA";
        } else if (strA.equals("ssh-rsa-sha384@ssh.com")) {
            str = "SHA384withRSA";
        } else {
            str = strA.equals("ssh-rsa-sha224@ssh.com") ? "SHA224withRSA" : "SHA1withRSA";
        }
        this.a = Signature.getInstance(str);
        this.b = KeyFactory.getInstance("RSA");
    }

    @Override // com.jcraft.jsch.SignatureRSA
    public void setPrvKey(byte[] bArr, byte[] bArr2) throws Exception {
        this.a.initSign(this.b.generatePrivate(new RSAPrivateKeySpec(new BigInteger(bArr2), new BigInteger(bArr))));
    }

    @Override // com.jcraft.jsch.SignatureRSA
    public void setPubKey(byte[] bArr, byte[] bArr2) throws Exception {
        this.a.initVerify(this.b.generatePublic(new RSAPublicKeySpec(new BigInteger(bArr2), new BigInteger(bArr))));
    }

    @Override // com.jcraft.jsch.Signature
    public byte[] sign() throws Exception {
        return this.a.sign();
    }

    @Override // com.jcraft.jsch.Signature
    public void update(byte[] bArr) throws Exception {
        this.a.update(bArr);
    }

    @Override // com.jcraft.jsch.Signature
    public boolean verify(byte[] bArr) throws Exception {
        Buffer buffer = new Buffer(bArr);
        String str = new String(buffer.getString(), StandardCharsets.UTF_8);
        if (str.equals("ssh-rsa") || str.equals("rsa-sha2-256") || str.equals("rsa-sha2-512") || str.equals("ssh-rsa-sha224@ssh.com") || str.equals("ssh-rsa-sha256@ssh.com") || str.equals("ssh-rsa-sha384@ssh.com") || str.equals("ssh-rsa-sha512@ssh.com")) {
            if (!str.equals(a())) {
                return false;
            }
            int i = buffer.getInt();
            byte[] bArr2 = new byte[i];
            System.arraycopy(bArr, buffer.d, bArr2, 0, i);
            bArr = bArr2;
        }
        return this.a.verify(bArr);
    }
}
