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
public final class di0 extends KeyFactorySpi implements m60 {
    public final /* synthetic */ int a;

    public /* synthetic */ di0(int i) {
        this.a = i;
    }

    @Override // defpackage.m60
    public final PrivateKey a(PrivateKeyInfo privateKeyInfo) {
        switch (this.a) {
            case 0:
                if0 if0Var = new if0();
                if0Var.b = privateKeyInfo.d;
                if0Var.a = (gi0) tu0.e(privateKeyInfo);
                return if0Var;
            default:
                gh0 gh0Var = new gh0();
                gh0Var.c = privateKeyInfo.d;
                gh0Var.b = hx8.k(privateKeyInfo.b.b).c.a;
                gh0Var.a = (tx8) tu0.e(privateKeyInfo);
                return gh0Var;
        }
    }

    @Override // defpackage.m60
    public final PublicKey b(SubjectPublicKeyInfo subjectPublicKeyInfo) {
        switch (this.a) {
            case 0:
                jf0 jf0Var = new jf0();
                jf0Var.a = (hi0) mb6.a(subjectPublicKeyInfo);
                return jf0Var;
            default:
                hh0 hh0Var = new hh0();
                vx8 vx8Var = (vx8) mb6.a(subjectPublicKeyInfo);
                hh0Var.a = vx8Var;
                hh0Var.b = k55.n(vx8Var.b);
                return hh0Var;
        }
    }

    @Override // java.security.KeyFactorySpi
    public final PrivateKey engineGeneratePrivate(KeySpec keySpec) throws InvalidKeySpecException {
        switch (this.a) {
            case 0:
                if (keySpec instanceof PKCS8EncodedKeySpec) {
                    try {
                        return a(PrivateKeyInfo.k(q1.t(((PKCS8EncodedKeySpec) keySpec).getEncoded())));
                    } catch (Exception e) {
                        b6.c(e);
                        return null;
                    }
                }
                throw new InvalidKeySpecException("Unsupported key specification: " + keySpec.getClass() + ".");
            default:
                if (keySpec instanceof PKCS8EncodedKeySpec) {
                    try {
                        return a(PrivateKeyInfo.k(q1.t(((PKCS8EncodedKeySpec) keySpec).getEncoded())));
                    } catch (Exception e2) {
                        b6.c(e2);
                        return null;
                    }
                }
                throw new InvalidKeySpecException("unsupported key specification: " + keySpec.getClass() + ".");
        }
    }

    @Override // java.security.KeyFactorySpi
    public final PublicKey engineGeneratePublic(KeySpec keySpec) throws InvalidKeySpecException {
        switch (this.a) {
            case 0:
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
            default:
                if (!(keySpec instanceof X509EncodedKeySpec)) {
                    c6.j(keySpec, "unknown key specification: ");
                    return null;
                }
                try {
                    return b(SubjectPublicKeyInfo.k(((X509EncodedKeySpec) keySpec).getEncoded()));
                } catch (Exception e2) {
                    b6.c(e2);
                    return null;
                }
        }
    }

    @Override // java.security.KeyFactorySpi
    public final KeySpec engineGetKeySpec(Key key, Class cls) throws InvalidKeySpecException {
        switch (this.a) {
            case 0:
                if (key instanceof if0) {
                    if (PKCS8EncodedKeySpec.class.isAssignableFrom(cls)) {
                        return new PKCS8EncodedKeySpec(((if0) key).getEncoded());
                    }
                } else {
                    if (!(key instanceof jf0)) {
                        throw new InvalidKeySpecException("Unsupported key type: " + key.getClass() + ".");
                    }
                    if (X509EncodedKeySpec.class.isAssignableFrom(cls)) {
                        return new X509EncodedKeySpec(((jf0) key).getEncoded());
                    }
                }
                throw new InvalidKeySpecException(fz5.l(cls, "Unknown key specification: ", "."));
            default:
                if (key instanceof gh0) {
                    if (PKCS8EncodedKeySpec.class.isAssignableFrom(cls)) {
                        return new PKCS8EncodedKeySpec(((gh0) key).getEncoded());
                    }
                } else {
                    if (!(key instanceof hh0)) {
                        throw new InvalidKeySpecException("unsupported key type: " + key.getClass() + ".");
                    }
                    if (X509EncodedKeySpec.class.isAssignableFrom(cls)) {
                        return new X509EncodedKeySpec(((hh0) key).getEncoded());
                    }
                }
                throw new InvalidKeySpecException(fz5.l(cls, "unknown key specification: ", "."));
        }
    }

    @Override // java.security.KeyFactorySpi
    public final Key engineTranslateKey(Key key) throws InvalidKeyException {
        switch (this.a) {
            case 0:
                if ((key instanceof if0) || (key instanceof jf0)) {
                    return key;
                }
                d6.f("Unsupported key type");
                return null;
            default:
                if ((key instanceof gh0) || (key instanceof hh0)) {
                    return key;
                }
                d6.f("unsupported key type");
                return null;
        }
    }
}
