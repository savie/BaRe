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
public final class np4 extends KeyFactorySpi implements m60 {
    public final /* synthetic */ int a;

    public /* synthetic */ np4(int i) {
        this.a = i;
    }

    @Override // defpackage.m60
    public final PrivateKey a(PrivateKeyInfo privateKeyInfo) {
        switch (this.a) {
            case 0:
                eg0 eg0Var = new eg0();
                eg0Var.b = privateKeyInfo.d;
                eg0Var.a = (op4) tu0.e(privateKeyInfo);
                return eg0Var;
            default:
                rg0 rg0Var = new rg0();
                rg0Var.b = privateKeyInfo.d;
                rg0Var.a = (nj5) tu0.e(privateKeyInfo);
                return rg0Var;
        }
    }

    @Override // defpackage.m60
    public final PublicKey b(SubjectPublicKeyInfo subjectPublicKeyInfo) {
        switch (this.a) {
            case 0:
                fg0 fg0Var = new fg0();
                fg0Var.a = (op4) mb6.a(subjectPublicKeyInfo);
                return fg0Var;
            default:
                sg0 sg0Var = new sg0();
                sg0Var.a = (oj5) mb6.a(subjectPublicKeyInfo);
                return sg0Var;
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
                        throw new InvalidKeySpecException(e.toString(), e);
                    }
                }
                throw new InvalidKeySpecException("unsupported key specification: " + keySpec.getClass() + ".");
            default:
                if (keySpec instanceof PKCS8EncodedKeySpec) {
                    try {
                        return a(PrivateKeyInfo.k(q1.t(((PKCS8EncodedKeySpec) keySpec).getEncoded())));
                    } catch (Exception e2) {
                        b6.c(e2);
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
                    c6.j(keySpec, "unknown key specification: ");
                    return null;
                }
                try {
                    return b(SubjectPublicKeyInfo.k(((X509EncodedKeySpec) keySpec).getEncoded()));
                } catch (Exception e) {
                    throw new InvalidKeySpecException(e.toString(), e);
                }
            default:
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
        }
    }

    @Override // java.security.KeyFactorySpi
    public final KeySpec engineGetKeySpec(Key key, Class cls) throws InvalidKeySpecException {
        switch (this.a) {
            case 0:
                if (key instanceof eg0) {
                    if (PKCS8EncodedKeySpec.class.isAssignableFrom(cls)) {
                        return new PKCS8EncodedKeySpec(((eg0) key).getEncoded());
                    }
                } else {
                    if (!(key instanceof fg0)) {
                        throw new InvalidKeySpecException("unsupported key type: " + key.getClass() + ".");
                    }
                    if (X509EncodedKeySpec.class.isAssignableFrom(cls)) {
                        return new X509EncodedKeySpec(((fg0) key).getEncoded());
                    }
                }
                throw new InvalidKeySpecException(fz5.l(cls, "unknown key specification: ", "."));
            default:
                if (key instanceof rg0) {
                    if (PKCS8EncodedKeySpec.class.isAssignableFrom(cls)) {
                        return new PKCS8EncodedKeySpec(((rg0) key).getEncoded());
                    }
                } else {
                    if (!(key instanceof sg0)) {
                        throw new InvalidKeySpecException("Unsupported key type: " + key.getClass() + ".");
                    }
                    if (X509EncodedKeySpec.class.isAssignableFrom(cls)) {
                        return new X509EncodedKeySpec(((sg0) key).getEncoded());
                    }
                }
                throw new InvalidKeySpecException(fz5.l(cls, "Unknown key specification: ", "."));
        }
    }

    @Override // java.security.KeyFactorySpi
    public final Key engineTranslateKey(Key key) throws InvalidKeyException {
        switch (this.a) {
            case 0:
                if ((key instanceof eg0) || (key instanceof fg0)) {
                    return key;
                }
                d6.f("unsupported key type");
                return null;
            default:
                if ((key instanceof rg0) || (key instanceof sg0)) {
                    return key;
                }
                d6.f("Unsupported key type");
                return null;
        }
    }
}
