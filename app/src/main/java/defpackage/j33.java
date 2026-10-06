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
public final class j33 extends tl0 {
    static {
        HashSet hashSet = new HashSet();
        hashSet.add(vg0.r0);
        hashSet.add(vg0.s0);
    }

    @Override // defpackage.m60
    public final PrivateKey a(PrivateKeyInfo privateKeyInfo) {
        wf0 wf0Var = new wf0();
        m33 m33Var = (m33) tu0.e(privateKeyInfo);
        wf0Var.d = privateKeyInfo.d;
        wf0Var.a = m33Var;
        wf0Var.b = lq7.d(((k33) m33Var.b).a);
        return wf0Var;
    }

    @Override // defpackage.m60
    public final PublicKey b(SubjectPublicKeyInfo subjectPublicKeyInfo) {
        xf0 xf0Var = new xf0();
        o33 o33Var = (o33) mb6.a(subjectPublicKeyInfo);
        xf0Var.a = o33Var;
        xf0Var.b = lq7.d(((k33) o33Var.b).a);
        return xf0Var;
    }

    @Override // java.security.KeyFactorySpi
    public final KeySpec engineGetKeySpec(Key key, Class cls) throws InvalidKeySpecException {
        if (key instanceof wf0) {
            if (PKCS8EncodedKeySpec.class.isAssignableFrom(cls)) {
                return new PKCS8EncodedKeySpec(((wf0) key).getEncoded());
            }
        } else {
            if (!(key instanceof xf0)) {
                throw new InvalidKeySpecException("Unsupported key type: " + key.getClass() + ".");
            }
            if (X509EncodedKeySpec.class.isAssignableFrom(cls)) {
                return new X509EncodedKeySpec(((xf0) key).getEncoded());
            }
        }
        throw new InvalidKeySpecException(fz5.l(cls, "Unknown key specification: ", "."));
    }

    @Override // java.security.KeyFactorySpi
    public final Key engineTranslateKey(Key key) throws InvalidKeyException {
        if ((key instanceof wf0) || (key instanceof xf0)) {
            return key;
        }
        d6.f("Unsupported key type");
        return null;
    }
}
