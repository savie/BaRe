package com.jcraft.jsch.bc;

import com.jcraft.jsch.Buffer;
import defpackage.cs2;
import defpackage.ds2;
import defpackage.fs2;
import defpackage.hs2;
import defpackage.is2;
import defpackage.ks2;
import defpackage.yf7;
import java.nio.charset.StandardCharsets;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.SignatureException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
abstract class SignatureEdDSA implements com.jcraft.jsch.SignatureEdDSA {
    public yf7 a;

    public abstract String a();

    public abstract String b();

    @Override // com.jcraft.jsch.Signature
    public void init() throws Exception {
        if (!a().equals("Ed25519") && !a().equals("Ed448")) {
            throw new NoSuchAlgorithmException("invalid curve ".concat(a()));
        }
        if (a().equals("Ed25519")) {
            this.a = new fs2();
        } else {
            this.a = new ks2(new byte[0]);
        }
    }

    @Override // com.jcraft.jsch.SignatureEdDSA
    public void setPrvKey(byte[] bArr) throws Exception {
        try {
            if (a().equals("Ed25519")) {
                this.a.b(true, new cs2(bArr));
            } else {
                this.a.b(true, new hs2(bArr));
            }
        } catch (Exception e) {
            throw new InvalidKeyException(e);
        }
    }

    @Override // com.jcraft.jsch.SignatureEdDSA
    public void setPubKey(byte[] bArr) throws Exception {
        try {
            if (a().equals("Ed25519")) {
                this.a.b(false, new ds2(bArr));
            } else {
                this.a.b(false, new is2(bArr));
            }
        } catch (Exception e) {
            throw new InvalidKeyException(e);
        }
    }

    @Override // com.jcraft.jsch.Signature
    public byte[] sign() throws Exception {
        try {
            return this.a.c();
        } catch (Exception e) {
            throw new SignatureException(e);
        }
    }

    @Override // com.jcraft.jsch.Signature
    public void update(byte[] bArr) throws Exception {
        try {
            this.a.d(bArr, bArr.length);
        } catch (Exception e) {
            throw new SignatureException(e);
        }
    }

    @Override // com.jcraft.jsch.Signature
    public boolean verify(byte[] bArr) throws Exception {
        Buffer buffer = new Buffer(bArr);
        if (new String(buffer.getString(), StandardCharsets.UTF_8).equals(b())) {
            int i = buffer.getInt();
            byte[] bArr2 = new byte[i];
            System.arraycopy(bArr, buffer.d, bArr2, 0, i);
            bArr = bArr2;
        }
        try {
            return this.a.a(bArr);
        } catch (Exception e) {
            throw new SignatureException(e);
        }
    }
}
