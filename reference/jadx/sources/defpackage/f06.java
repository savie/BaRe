package defpackage;

import java.security.InvalidKeyException;
import java.security.Key;
import java.security.KeyFactorySpi;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.KeySpec;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.X509EncodedKeySpec;
import org.bouncycastle.asn1.pkcs.PrivateKeyInfo;
import org.bouncycastle.asn1.x509.SubjectPublicKeyInfo;

/* JADX INFO: loaded from: classes.dex */
public final class f06 extends KeyFactorySpi implements m60 {
    @Override // defpackage.m60
    public final PrivateKey a(PrivateKeyInfo privateKeyInfo) {
        wg0 wg0Var = new wg0();
        wg0Var.b = privateKeyInfo.d;
        wg0Var.a = (h06) tu0.e(privateKeyInfo);
        return wg0Var;
    }

    @Override // defpackage.m60
    public final PublicKey b(SubjectPublicKeyInfo subjectPublicKeyInfo) {
        xg0 xg0Var = new xg0();
        xg0Var.a = (i06) mb6.a(subjectPublicKeyInfo);
        return xg0Var;
    }

    @Override // java.security.KeyFactorySpi
    public final PrivateKey engineGeneratePrivate(KeySpec keySpec) throws InvalidKeySpecException {
        if (keySpec instanceof PKCS8EncodedKeySpec) {
            try {
                return a(PrivateKeyInfo.k(q1.t(((PKCS8EncodedKeySpec) keySpec).getEncoded())));
            } catch (Exception e) {
                b6.c(e);
                return null;
            }
        }
        throw new InvalidKeySpecException("Unsupported key specification: " + keySpec.getClass() + ".");
    }

    @Override // java.security.KeyFactorySpi
    public final PublicKey engineGeneratePublic(KeySpec keySpec) throws InvalidKeySpecException {
        if (!(keySpec instanceof X509EncodedKeySpec)) {
            c6.j(keySpec, "Unknown key specification: ");
            return null;
        }
        try {
            return b(SubjectPublicKeyInfo.k(((X509EncodedKeySpec) keySpec).getEncoded()));
        } catch (Exception e) {
            b6.c(e);
            return null;
        }
    }

    @Override // java.security.KeyFactorySpi
    public final KeySpec engineGetKeySpec(Key key, Class cls) throws InvalidKeySpecException {
        if (key instanceof wg0) {
            if (PKCS8EncodedKeySpec.class.isAssignableFrom(cls)) {
                return new PKCS8EncodedKeySpec(((wg0) key).getEncoded());
            }
        } else {
            if (!(key instanceof xg0)) {
                throw new InvalidKeySpecException("Unsupported key type: " + key.getClass() + ".");
            }
            if (X509EncodedKeySpec.class.isAssignableFrom(cls)) {
                return new X509EncodedKeySpec(((xg0) key).getEncoded());
            }
        }
        throw new InvalidKeySpecException(fz5.l(cls, "Unknown key specification: ", "."));
    }

    @Override // java.security.KeyFactorySpi
    public final Key engineTranslateKey(Key key) throws InvalidKeyException {
        if ((key instanceof wg0) || (key instanceof xg0)) {
            return key;
        }
        d6.f("Unsupported key type");
        return null;
    }
}
