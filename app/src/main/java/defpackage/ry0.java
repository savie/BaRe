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
public final class ry0 extends KeyFactorySpi implements m60 {
    public final /* synthetic */ int a;

    public /* synthetic */ ry0(int i) {
        this.a = i;
    }

    @Override // defpackage.m60
    public final PrivateKey a(PrivateKeyInfo privateKeyInfo) {
        switch (this.a) {
            case 0:
                kf0 kf0Var = new kf0();
                kf0Var.b = privateKeyInfo.d;
                kf0Var.a = (uy0) tu0.e(privateKeyInfo);
                return kf0Var;
            case 1:
                tg0 tg0Var = new tg0();
                tg0Var.b = privateKeyInfo.d;
                tg0Var.a = (yj5) tu0.e(privateKeyInfo);
                return tg0Var;
            default:
                ch0 ch0Var = new ch0();
                ch0Var.c = privateKeyInfo.d;
                ch0Var.a = tv6.k(privateKeyInfo.b.b).b.a;
                ch0Var.b = (dw6) tu0.e(privateKeyInfo);
                return ch0Var;
        }
    }

    @Override // defpackage.m60
    public final PublicKey b(SubjectPublicKeyInfo subjectPublicKeyInfo) {
        switch (this.a) {
            case 0:
                lf0 lf0Var = new lf0();
                lf0Var.a = (wy0) mb6.a(subjectPublicKeyInfo);
                return lf0Var;
            case 1:
                ug0 ug0Var = new ug0();
                ug0Var.a = (zj5) mb6.a(subjectPublicKeyInfo);
                return ug0Var;
            default:
                dh0 dh0Var = new dh0();
                dh0Var.a = tv6.k(subjectPublicKeyInfo.a.b).b.a;
                dh0Var.b = (ew6) mb6.a(subjectPublicKeyInfo);
                return dh0Var;
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
            case 1:
                if (keySpec instanceof PKCS8EncodedKeySpec) {
                    try {
                        return a(PrivateKeyInfo.k(q1.t(((PKCS8EncodedKeySpec) keySpec).getEncoded())));
                    } catch (Exception e2) {
                        b6.c(e2);
                        return null;
                    }
                }
                throw new InvalidKeySpecException("Unsupported key specification: " + keySpec.getClass() + ".");
            default:
                if (keySpec instanceof PKCS8EncodedKeySpec) {
                    try {
                        return a(PrivateKeyInfo.k(q1.t(((PKCS8EncodedKeySpec) keySpec).getEncoded())));
                    } catch (Exception e3) {
                        b6.c(e3);
                        return null;
                    }
                }
                throw new InvalidKeySpecException("Unsupported key specification: " + keySpec.getClass() + ".");
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
            case 1:
                if (!(keySpec instanceof X509EncodedKeySpec)) {
                    c6.j(keySpec, "Unknown key specification: ");
                    return null;
                }
                try {
                    return b(SubjectPublicKeyInfo.k(((X509EncodedKeySpec) keySpec).getEncoded()));
                } catch (Exception e2) {
                    b6.c(e2);
                    return null;
                }
            default:
                if (!(keySpec instanceof X509EncodedKeySpec)) {
                    c6.j(keySpec, "Unknown key specification: ");
                    return null;
                }
                try {
                    return b(SubjectPublicKeyInfo.k(((X509EncodedKeySpec) keySpec).getEncoded()));
                } catch (Exception e3) {
                    b6.c(e3);
                    return null;
                }
        }
    }

    @Override // java.security.KeyFactorySpi
    public final KeySpec engineGetKeySpec(Key key, Class cls) throws InvalidKeySpecException {
        switch (this.a) {
            case 0:
                if (key instanceof kf0) {
                    if (PKCS8EncodedKeySpec.class.isAssignableFrom(cls)) {
                        return new PKCS8EncodedKeySpec(((kf0) key).getEncoded());
                    }
                } else {
                    if (!(key instanceof lf0)) {
                        throw new InvalidKeySpecException("Unsupported key type: " + key.getClass() + ".");
                    }
                    if (X509EncodedKeySpec.class.isAssignableFrom(cls)) {
                        return new X509EncodedKeySpec(((lf0) key).getEncoded());
                    }
                }
                throw new InvalidKeySpecException(fz5.l(cls, "Unknown key specification: ", "."));
            case 1:
                if (key instanceof tg0) {
                    if (PKCS8EncodedKeySpec.class.isAssignableFrom(cls)) {
                        return new PKCS8EncodedKeySpec(((tg0) key).getEncoded());
                    }
                } else {
                    if (!(key instanceof ug0)) {
                        throw new InvalidKeySpecException("Unsupported key type: " + key.getClass() + ".");
                    }
                    if (X509EncodedKeySpec.class.isAssignableFrom(cls)) {
                        return new X509EncodedKeySpec(((ug0) key).getEncoded());
                    }
                }
                throw new InvalidKeySpecException(fz5.l(cls, "Unknown key specification: ", "."));
            default:
                if (key instanceof ch0) {
                    if (PKCS8EncodedKeySpec.class.isAssignableFrom(cls)) {
                        return new PKCS8EncodedKeySpec(((ch0) key).getEncoded());
                    }
                } else {
                    if (!(key instanceof dh0)) {
                        throw new InvalidKeySpecException("Unsupported key type: " + key.getClass() + ".");
                    }
                    if (X509EncodedKeySpec.class.isAssignableFrom(cls)) {
                        return new X509EncodedKeySpec(((dh0) key).getEncoded());
                    }
                }
                throw new InvalidKeySpecException(fz5.l(cls, "Unknown key specification: ", "."));
        }
    }

    @Override // java.security.KeyFactorySpi
    public final Key engineTranslateKey(Key key) throws InvalidKeyException {
        switch (this.a) {
            case 0:
                if ((key instanceof kf0) || (key instanceof lf0)) {
                    return key;
                }
                d6.f("Unsupported key type");
                return null;
            case 1:
                if ((key instanceof tg0) || (key instanceof ug0)) {
                    return key;
                }
                d6.f("Unsupported key type");
                return null;
            default:
                if ((key instanceof ch0) || (key instanceof dh0)) {
                    return key;
                }
                d6.f("Unsupported key type");
                return null;
        }
    }
}
