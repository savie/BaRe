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
public final class nl2 extends tl0 {
    public static final HashSet c;

    static {
        HashSet hashSet = new HashSet();
        c = hashSet;
        hashSet.add(vg0.t0);
        hashSet.add(vg0.u0);
        hashSet.add(vg0.v0);
        hashSet.add(vg0.w0);
        hashSet.add(vg0.x0);
        hashSet.add(vg0.y0);
    }

    public nl2() {
        super(c);
    }

    @Override // defpackage.m60
    public final PrivateKey a(PrivateKeyInfo privateKeyInfo) {
        uf0 uf0Var = new uf0();
        pl2 pl2Var = (pl2) tu0.e(privateKeyInfo);
        uf0Var.d = privateKeyInfo.d;
        uf0Var.a = pl2Var;
        uf0Var.b = lq7.d(((ol2) pl2Var.b).b);
        return uf0Var;
    }

    @Override // defpackage.m60
    public final PublicKey b(SubjectPublicKeyInfo subjectPublicKeyInfo) {
        vf0 vf0Var = new vf0();
        ql2 ql2Var = (ql2) mb6.a(subjectPublicKeyInfo);
        vf0Var.a = ql2Var;
        vf0Var.b = lq7.d(((ol2) ql2Var.b).b);
        return vf0Var;
    }

    @Override // java.security.KeyFactorySpi
    public final KeySpec engineGetKeySpec(Key key, Class cls) throws InvalidKeySpecException {
        if (key instanceof uf0) {
            if (PKCS8EncodedKeySpec.class.isAssignableFrom(cls)) {
                return new PKCS8EncodedKeySpec(((uf0) key).getEncoded());
            }
        } else {
            if (!(key instanceof vf0)) {
                throw new InvalidKeySpecException("Unsupported key type: " + key.getClass() + ".");
            }
            if (X509EncodedKeySpec.class.isAssignableFrom(cls)) {
                return new X509EncodedKeySpec(((vf0) key).getEncoded());
            }
        }
        throw new InvalidKeySpecException(fz5.l(cls, "Unknown key specification: ", "."));
    }

    @Override // java.security.KeyFactorySpi
    public final Key engineTranslateKey(Key key) throws InvalidKeyException {
        if ((key instanceof uf0) || (key instanceof vf0)) {
            return key;
        }
        d6.f("Unsupported key type");
        return null;
    }
}
