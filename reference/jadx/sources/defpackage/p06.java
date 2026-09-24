package defpackage;

import java.security.InvalidKeyException;
import java.security.InvalidParameterException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.SignatureException;
import java.security.SignatureSpi;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class p06 extends SignatureSpi {
    public final vz0 a;
    public h16 b;

    public p06(vz0 vz0Var) {
        this.a = vz0Var;
    }

    public abstract byte[] a();

    public abstract void b(byte b);

    public abstract void c(byte[] bArr, int i, int i2);

    @Override // java.security.SignatureSpi
    public final Object engineGetParameter(String str) {
        throw new InvalidParameterException("ECDSA doesn't take parameters");
    }

    @Override // java.security.SignatureSpi
    public void engineInitSign(PrivateKey privateKey) throws InvalidKeyException {
        if (privateKey instanceof h16) {
            this.b = (h16) privateKey;
        } else {
            d6.f("Unsupported key type");
        }
    }

    @Override // java.security.SignatureSpi
    public final void engineInitVerify(PublicKey publicKey) throws InvalidKeyException {
        throw new InvalidKeyException("Can only be used for signing.");
    }

    @Override // java.security.SignatureSpi
    public final void engineSetParameter(String str, Object obj) {
        throw new InvalidParameterException("ECDSA doesn't take parameters");
    }

    @Override // java.security.SignatureSpi
    public final byte[] engineSign() throws SignatureException {
        h16 h16Var = this.b;
        if (h16Var == null) {
            throw new SignatureException("Not initialized");
        }
        try {
            return h16Var.b(this.a, a());
        } catch (Exception e) {
            throw new SignatureException(e);
        }
    }

    @Override // java.security.SignatureSpi
    public final void engineUpdate(byte b) throws SignatureException {
        if (this.b == null) {
            throw new SignatureException("Not initialized");
        }
        b(b);
    }

    @Override // java.security.SignatureSpi
    public final boolean engineVerify(byte[] bArr) throws SignatureException {
        throw new SignatureException("Not initialized");
    }

    @Override // java.security.SignatureSpi
    public final void engineUpdate(byte[] bArr, int i, int i2) throws SignatureException {
        if (this.b != null) {
            c(bArr, i, i2);
            return;
        }
        throw new SignatureException("Not initialized");
    }
}
