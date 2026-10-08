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
public final class si7 extends tl0 {
    public static final HashSet c;

    static {
        HashSet hashSet = new HashSet();
        c = hashSet;
        hashSet.add(vg0.e2);
        hashSet.add(vg0.f2);
        hashSet.add(vg0.g2);
        hashSet.add(vg0.h2);
        hashSet.add(vg0.i2);
        hashSet.add(vg0.j2);
        hashSet.add(vg0.k2);
        hashSet.add(vg0.l2);
        hashSet.add(vg0.m2);
        hashSet.add(vg0.n2);
        hashSet.add(vg0.o2);
        hashSet.add(vg0.p2);
        hashSet.add(vg0.q2);
        hashSet.add(vg0.r2);
        hashSet.add(vg0.s2);
        hashSet.add(vg0.t2);
        hashSet.add(vg0.u2);
        hashSet.add(vg0.v2);
        hashSet.add(vg0.w2);
        hashSet.add(vg0.x2);
        hashSet.add(vg0.y2);
        hashSet.add(vg0.z2);
        hashSet.add(vg0.A2);
        hashSet.add(vg0.B2);
        hashSet.add(vg0.C2);
        hashSet.add(vg0.D2);
        hashSet.add(vg0.E2);
        hashSet.add(vg0.F2);
        hashSet.add(vg0.G2);
        hashSet.add(vg0.H2);
        hashSet.add(vg0.I2);
        hashSet.add(vg0.J2);
        hashSet.add(vg0.K2);
        hashSet.add(vg0.L2);
        hashSet.add(vg0.M2);
        hashSet.add(vg0.N2);
        hashSet.add(vg0.O2);
        hashSet.add(vg0.P2);
        hashSet.add(vg0.Q2);
        hashSet.add(vg0.R2);
        hashSet.add(vg0.S2);
        hashSet.add(vg0.T2);
        hashSet.add(vg0.U2);
        hashSet.add(vg0.V2);
    }

    public si7() {
        super(c);
    }

    @Override // defpackage.m60
    public final PrivateKey a(PrivateKeyInfo privateKeyInfo) {
        ah0 ah0Var = new ah0();
        ah0Var.b = privateKeyInfo.d;
        ah0Var.a = (ui7) tu0.e(privateKeyInfo);
        return ah0Var;
    }

    @Override // defpackage.m60
    public final PublicKey b(SubjectPublicKeyInfo subjectPublicKeyInfo) {
        bh0 bh0Var = new bh0();
        bh0Var.a = (vi7) mb6.a(subjectPublicKeyInfo);
        return bh0Var;
    }

    @Override // java.security.KeyFactorySpi
    public final KeySpec engineGetKeySpec(Key key, Class cls) throws InvalidKeySpecException {
        if (key instanceof ah0) {
            if (PKCS8EncodedKeySpec.class.isAssignableFrom(cls)) {
                return new PKCS8EncodedKeySpec(((ah0) key).getEncoded());
            }
        } else {
            if (!(key instanceof bh0)) {
                throw new InvalidKeySpecException("Unsupported key type: " + key.getClass() + ".");
            }
            if (X509EncodedKeySpec.class.isAssignableFrom(cls)) {
                return new X509EncodedKeySpec(((bh0) key).getEncoded());
            }
        }
        throw new InvalidKeySpecException(fz5.l(cls, "Unknown key specification: ", "."));
    }

    @Override // java.security.KeyFactorySpi
    public final Key engineTranslateKey(Key key) throws InvalidKeyException {
        if ((key instanceof ah0) || (key instanceof bh0)) {
            return key;
        }
        d6.f("Unsupported key type");
        return null;
    }
}
