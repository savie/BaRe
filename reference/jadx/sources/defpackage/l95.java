package defpackage;

import java.security.InvalidKeyException;
import java.security.Key;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.KeySpec;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.X509EncodedKeySpec;
import java.util.HashSet;
import org.bouncycastle.asn1.pkcs.PrivateKeyInfo;
import org.bouncycastle.asn1.x509.SubjectPublicKeyInfo;

/* JADX INFO: loaded from: classes.dex */
public final class l95 extends tl0 {
    public static final HashSet c;

    static {
        HashSet hashSet = new HashSet();
        c = hashSet;
        hashSet.add(vg0.Z1);
        hashSet.add(vg0.a2);
        hashSet.add(vg0.b2);
        hashSet.add(vg0.c2);
    }

    public l95() {
        super(c);
    }

    @Override // defpackage.m60
    public final PrivateKey a(PrivateKeyInfo privateKeyInfo) {
        mg0 mg0Var = new mg0();
        mg0Var.b = privateKeyInfo.d;
        mg0Var.a = (n95) tu0.e(privateKeyInfo);
        return mg0Var;
    }

    @Override // defpackage.m60
    public final PublicKey b(SubjectPublicKeyInfo subjectPublicKeyInfo) {
        ng0 ng0Var = new ng0();
        ng0Var.a = (o95) mb6.a(subjectPublicKeyInfo);
        return ng0Var;
    }

    @Override // java.security.KeyFactorySpi
    public final KeySpec engineGetKeySpec(Key key, Class cls) throws InvalidKeySpecException {
        if (key instanceof mg0) {
            if (PKCS8EncodedKeySpec.class.isAssignableFrom(cls)) {
                return new PKCS8EncodedKeySpec(((mg0) key).getEncoded());
            }
        } else {
            if (!(key instanceof ng0)) {
                throw new InvalidKeySpecException("Unsupported key type: " + key.getClass() + ".");
            }
            if (X509EncodedKeySpec.class.isAssignableFrom(cls)) {
                return new X509EncodedKeySpec(((ng0) key).getEncoded());
            }
        }
        throw new InvalidKeySpecException(fz5.l(cls, "Unknown key specification: ", "."));
    }

    @Override // java.security.KeyFactorySpi
    public final Key engineTranslateKey(Key key) throws InvalidKeyException {
        if ((key instanceof mg0) || (key instanceof ng0)) {
            return key;
        }
        d6.f("Unsupported key type");
        return null;
    }
}
