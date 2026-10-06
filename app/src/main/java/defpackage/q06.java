package defpackage;

import java.security.InvalidKeyException;
import java.security.Key;
import java.security.SecureRandom;
import java.security.interfaces.ECPublicKey;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.ECPoint;
import javax.crypto.KeyAgreementSpi;
import javax.crypto.SecretKey;
import javax.crypto.ShortBufferException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class q06 extends KeyAgreementSpi {
    public final vz0 a;
    public h16 b;
    public ECPoint c;

    public q06(vz0 vz0Var) {
        this.a = vz0Var;
    }

    @Override // javax.crypto.KeyAgreementSpi
    public final Key engineDoPhase(Key key, boolean z) throws InvalidKeyException {
        h16 h16Var = this.b;
        if (h16Var == null) {
            l0.e("KeyAgreement not initialized");
            return null;
        }
        if (!z) {
            l0.e("Multiple phases not supported");
            return null;
        }
        if (key instanceof ECPublicKey) {
            ECPublicKey eCPublicKey = (ECPublicKey) key;
            if (h16Var.e.getCurve().equals(eCPublicKey.getParams().getCurve())) {
                this.c = eCPublicKey.getW();
                return null;
            }
        }
        d6.f("Wrong key type");
        return null;
    }

    @Override // javax.crypto.KeyAgreementSpi
    public final byte[] engineGenerateSecret() {
        h16 h16Var = this.b;
        if (h16Var != null) {
            ECPoint eCPoint = this.c;
            try {
                if (eCPoint != null) {
                    try {
                        byte[] bArrC = h16Var.c(this.a, eCPoint);
                        this.c = null;
                        return bArrC;
                    } catch (Exception e) {
                        throw new IllegalStateException(e);
                    }
                }
            } catch (Throwable th) {
                this.c = null;
                throw th;
            }
        }
        l0.e("Not initialized with both private and public keys");
        return null;
    }

    @Override // javax.crypto.KeyAgreementSpi
    public final void engineInit(Key key, SecureRandom secureRandom) throws InvalidKeyException {
        if (key instanceof h16) {
            this.b = (h16) key;
        } else {
            d6.f("Key must be instance of PivPrivateKey");
        }
    }

    @Override // javax.crypto.KeyAgreementSpi
    public final void engineInit(Key key, AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidKeyException {
        engineInit(key, secureRandom);
    }

    @Override // javax.crypto.KeyAgreementSpi
    public final int engineGenerateSecret(byte[] bArr, int i) throws ShortBufferException {
        byte[] bArrEngineGenerateSecret = engineGenerateSecret();
        try {
            System.arraycopy(bArrEngineGenerateSecret, 0, bArr, i, bArrEngineGenerateSecret.length);
            return bArrEngineGenerateSecret.length;
        } catch (IndexOutOfBoundsException unused) {
            throw new ShortBufferException();
        }
    }

    @Override // javax.crypto.KeyAgreementSpi
    public final SecretKey engineGenerateSecret(String str) {
        throw new IllegalStateException("Not supported");
    }
}
