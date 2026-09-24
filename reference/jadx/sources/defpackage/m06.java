package defpackage;

import java.io.ByteArrayOutputStream;
import java.security.AlgorithmParameters;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.KeyPair;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import java.util.HashMap;
import java.util.Map;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.CipherSpi;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.ShortBufferException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class m06 extends CipherSpi {
    public static final l15 h = o15.b(m06.class);
    public final vz0 a;
    public final Map b;
    public j16 d;
    public String e;
    public String f;
    public final ByteArrayOutputStream c = new ByteArrayOutputStream();
    public int g = -1;

    public m06(vz0 vz0Var, HashMap map) {
        this.a = vz0Var;
        this.b = map;
    }

    @Override // javax.crypto.CipherSpi
    public final byte[] engineDoFinal(byte[] bArr, int i, int i2) {
        if (this.d == null) {
            l0.e("Cipher not initialized");
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = this.c;
        if (i2 > 0) {
            byteArrayOutputStream.write(bArr, i, i2);
        }
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        try {
            KeyPair keyPair = (KeyPair) this.b.get(this.d.b);
            Cipher cipher = Cipher.getInstance("RSA/ECB/NoPadding");
            cipher.init(this.g, keyPair.getPublic());
            Cipher cipher2 = Cipher.getInstance("RSA/" + this.e + "/" + this.f);
            cipher2.init(this.g, keyPair.getPrivate());
            int i3 = this.g;
            vz0 vz0Var = this.a;
            if (i3 != 1) {
                if (i3 == 2) {
                    return cipher2.doFinal(cipher.doFinal(this.d.b(vz0Var, byteArray)));
                }
                throw new UnsupportedOperationException();
            }
            try {
                return this.d.b(vz0Var, cipher.doFinal(cipher2.doFinal(byteArray)));
            } catch (BadPaddingException | IllegalBlockSizeException e) {
                throw new IllegalStateException(e);
            }
        } catch (NoSuchPaddingException e2) {
            throw new UnsupportedOperationException("SecurityProvider doesn't support RSA without padding", e2);
        } catch (Exception e3) {
            throw new IllegalStateException(e3);
        }
    }

    @Override // javax.crypto.CipherSpi
    public final int engineGetBlockSize() {
        j16 j16Var = this.d;
        if (j16Var != null) {
            return j16Var.b.b.b / 8;
        }
        l0.e("Cipher not initialized");
        return 0;
    }

    @Override // javax.crypto.CipherSpi
    public final byte[] engineGetIV() {
        return new byte[0];
    }

    @Override // javax.crypto.CipherSpi
    public final int engineGetOutputSize(int i) {
        return engineGetBlockSize();
    }

    @Override // javax.crypto.CipherSpi
    public final AlgorithmParameters engineGetParameters() {
        return null;
    }

    @Override // javax.crypto.CipherSpi
    public final void engineInit(int i, Key key, SecureRandom secureRandom) throws InvalidKeyException {
        ms8.B(4, h, "Engine init: mode={} padding={}", this.e, this.f);
        if (!(key instanceof j16)) {
            d6.f("Unsupported key type");
            return;
        }
        j16 j16Var = (j16) key;
        if (!"RSA".equals(j16Var.getAlgorithm())) {
            d6.f("Cipher only supports RSA.");
            return;
        }
        this.d = j16Var;
        this.g = i;
        this.c.reset();
    }

    @Override // javax.crypto.CipherSpi
    public final void engineSetMode(String str) {
        this.e = str;
    }

    @Override // javax.crypto.CipherSpi
    public final void engineSetPadding(String str) {
        this.f = str;
    }

    @Override // javax.crypto.CipherSpi
    public final byte[] engineUpdate(byte[] bArr, int i, int i2) {
        this.c.write(bArr, i, i2);
        return new byte[0];
    }

    @Override // javax.crypto.CipherSpi
    public final int engineUpdate(byte[] bArr, int i, int i2, byte[] bArr2, int i3) {
        this.c.write(bArr, i, i2);
        return 0;
    }

    @Override // javax.crypto.CipherSpi
    public final void engineInit(int i, Key key, AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidKeyException, InvalidAlgorithmParameterException {
        if (algorithmParameterSpec == null) {
            engineInit(i, key, secureRandom);
            return;
        }
        throw new InvalidAlgorithmParameterException("Cipher must be initialized with params = null");
    }

    @Override // javax.crypto.CipherSpi
    public final void engineInit(int i, Key key, AlgorithmParameters algorithmParameters, SecureRandom secureRandom) throws InvalidKeyException, InvalidAlgorithmParameterException {
        if (algorithmParameters == null) {
            engineInit(i, key, secureRandom);
            return;
        }
        throw new InvalidAlgorithmParameterException("Cipher must be initialized with params = null");
    }

    @Override // javax.crypto.CipherSpi
    public final int engineDoFinal(byte[] bArr, int i, int i2, byte[] bArr2, int i3) throws ShortBufferException {
        byte[] bArrEngineDoFinal = engineDoFinal(bArr, i, i2);
        try {
            System.arraycopy(bArrEngineDoFinal, 0, bArr2, i3, bArrEngineDoFinal.length);
            return bArrEngineDoFinal.length;
        } catch (IndexOutOfBoundsException unused) {
            throw new ShortBufferException();
        }
    }
}
