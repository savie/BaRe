package defpackage;

import java.security.AlgorithmParameters;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.InvalidParameterException;
import java.security.KeyPair;
import java.security.NoSuchAlgorithmException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.Signature;
import java.security.SignatureException;
import java.security.SignatureSpi;
import java.security.spec.AlgorithmParameterSpec;
import java.util.HashMap;
import java.util.Map;
import javax.crypto.Cipher;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class u16 extends SignatureSpi {
    public final vz0 a;
    public final Map b;
    public final String c;
    public i16 d;
    public Signature e;

    public u16(vz0 vz0Var, HashMap map, String str) {
        this.a = vz0Var;
        this.b = map;
        this.c = str;
    }

    public final Signature a(boolean z) throws NoSuchAlgorithmException {
        if (this.e == null) {
            Signature signature = Signature.getInstance(this.c);
            this.e = signature;
            if (z) {
                try {
                    signature.initSign(((KeyPair) this.b.get(vo4.RSA2048)).getPrivate());
                } catch (InvalidKeyException unused) {
                    throw new NoSuchAlgorithmException();
                }
            }
        }
        return this.e;
    }

    @Override // java.security.SignatureSpi
    public final Object engineGetParameter(String str) {
        Signature signature = this.e;
        if (signature != null) {
            return signature.getParameter(str);
        }
        throw new InvalidParameterException("Not initialized");
    }

    @Override // java.security.SignatureSpi
    public final AlgorithmParameters engineGetParameters() {
        Signature signature = this.e;
        if (signature != null) {
            return signature.getParameters();
        }
        throw new InvalidParameterException("Not initialized");
    }

    @Override // java.security.SignatureSpi
    public final void engineInitSign(PrivateKey privateKey) throws InvalidKeyException {
        if (!(privateKey instanceof i16)) {
            d6.f("Unsupported key type");
            return;
        }
        i16 i16Var = (i16) privateKey;
        this.d = i16Var;
        try {
            a(false).initSign(((KeyPair) this.b.get(i16Var.b)).getPrivate());
        } catch (NoSuchAlgorithmException e) {
            throw new InvalidKeyException(e);
        }
    }

    @Override // java.security.SignatureSpi
    public final void engineInitVerify(PublicKey publicKey) throws InvalidKeyException {
        throw new InvalidKeyException("Can only be used for signing.");
    }

    @Override // java.security.SignatureSpi
    public final void engineSetParameter(String str, Object obj) {
        try {
            a(true).setParameter(str, obj);
        } catch (NoSuchAlgorithmException unused) {
            throw new InvalidParameterException("Not initialized");
        }
    }

    @Override // java.security.SignatureSpi
    public final byte[] engineSign() throws SignatureException {
        if (this.d == null || this.e == null) {
            throw new SignatureException("Not initialized");
        }
        try {
            Cipher cipher = Cipher.getInstance("RSA/ECB/NoPadding");
            cipher.init(1, ((KeyPair) this.b.get(this.d.b)).getPublic());
            return this.d.b(this.a, cipher.doFinal(this.e.sign()));
        } catch (Exception e) {
            throw new SignatureException(e);
        }
    }

    @Override // java.security.SignatureSpi
    public final void engineUpdate(byte b) throws SignatureException {
        Signature signature = this.e;
        if (signature == null) {
            throw new SignatureException("Not initialized");
        }
        signature.update(b);
    }

    @Override // java.security.SignatureSpi
    public final boolean engineVerify(byte[] bArr) throws SignatureException {
        throw new SignatureException("Not initialized");
    }

    @Override // java.security.SignatureSpi
    public final void engineUpdate(byte[] bArr, int i, int i2) throws SignatureException {
        Signature signature = this.e;
        if (signature != null) {
            signature.update(bArr, i, i2);
            return;
        }
        throw new SignatureException("Not initialized");
    }

    @Override // java.security.SignatureSpi
    public final void engineSetParameter(AlgorithmParameterSpec algorithmParameterSpec) throws InvalidAlgorithmParameterException {
        try {
            a(true).setParameter(algorithmParameterSpec);
        } catch (NoSuchAlgorithmException unused) {
            throw new InvalidParameterException("Not initialized");
        }
    }
}
