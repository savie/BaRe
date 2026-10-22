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
public final class fp4 extends tl0 {
    public static final HashSet c;

    static {
        HashSet hashSet = new HashSet();
        c = hashSet;
        hashSet.add(pj5.L);
        hashSet.add(pj5.M);
        hashSet.add(pj5.N);
        hashSet.add(vg0.z1);
        hashSet.add(vg0.A1);
        hashSet.add(vg0.B1);
    }

    public fp4() {
        super(c);
    }

    @Override // defpackage.m60
    public final PrivateKey a(PrivateKeyInfo privateKeyInfo) {
        cg0 cg0Var = new cg0();
        cg0Var.c = privateKeyInfo.d;
        p45 p45Var = (p45) tu0.e(privateKeyInfo);
        cg0Var.a = p45Var;
        cg0Var.b = lq7.d(((o45) p45Var.b).a);
        return cg0Var;
    }

    @Override // defpackage.m60
    public final PublicKey b(SubjectPublicKeyInfo subjectPublicKeyInfo) {
        dg0 dg0Var = new dg0();
        r45 r45Var = (r45) mb6.a(subjectPublicKeyInfo);
        dg0Var.a = r45Var;
        dg0Var.b = lq7.d(((o45) r45Var.b).a);
        return dg0Var;
    }

    @Override // java.security.KeyFactorySpi
    public final KeySpec engineGetKeySpec(Key key, Class cls) throws InvalidKeySpecException {
        if (key instanceof cg0) {
            if (PKCS8EncodedKeySpec.class.isAssignableFrom(cls)) {
                return new PKCS8EncodedKeySpec(((cg0) key).getEncoded());
            }
        } else {
            if (!(key instanceof dg0)) {
                throw new InvalidKeySpecException("Unsupported key type: " + key.getClass() + ".");
            }
            if (X509EncodedKeySpec.class.isAssignableFrom(cls)) {
                return new X509EncodedKeySpec(((dg0) key).getEncoded());
            }
        }
        throw new InvalidKeySpecException(fz5.l(cls, "Unknown key specification: ", "."));
    }

    @Override // java.security.KeyFactorySpi
    public final Key engineTranslateKey(Key key) throws InvalidKeyException {
        if ((key instanceof cg0) || (key instanceof dg0)) {
            return key;
        }
        d6.f("Unsupported key type");
        return null;
    }
}
