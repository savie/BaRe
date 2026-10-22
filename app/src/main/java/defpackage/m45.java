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
public final class m45 extends tl0 {
    public static final HashSet c;

    static {
        HashSet hashSet = new HashSet();
        c = hashSet;
        hashSet.add(pj5.L);
        hashSet.add(pj5.M);
        hashSet.add(pj5.N);
    }

    public m45() {
        super(c);
    }

    @Override // defpackage.m60
    public final PrivateKey a(PrivateKeyInfo privateKeyInfo) {
        gg0 gg0Var = new gg0();
        gg0Var.c = privateKeyInfo.d;
        gg0Var.d = privateKeyInfo.getEncoded();
        p45 p45Var = (p45) tu0.e(privateKeyInfo);
        gg0Var.a = p45Var;
        gg0Var.b = lq7.d(n45.a(((o45) p45Var.b).a).a);
        return gg0Var;
    }

    @Override // defpackage.m60
    public final PublicKey b(SubjectPublicKeyInfo subjectPublicKeyInfo) {
        hg0 hg0Var = new hg0();
        r45 r45Var = (r45) mb6.a(subjectPublicKeyInfo);
        hg0Var.a = r45Var;
        hg0Var.b = lq7.d(n45.a(((o45) r45Var.b).a).a);
        return hg0Var;
    }

    @Override // defpackage.tl0, java.security.KeyFactorySpi
    public final PrivateKey engineGeneratePrivate(KeySpec keySpec) throws InvalidKeySpecException {
        p45 p45Var;
        if (!(keySpec instanceof q45)) {
            return super.engineGeneratePrivate(keySpec);
        }
        q45 q45Var = (q45) keySpec;
        byte[] bArr = q45Var.a;
        boolean z = q45Var.d;
        o45 o45Var = (o45) li8.a.get(q45Var.c.a);
        if (z) {
            if (!z) {
                l0.e("KeySpec represents long form");
                return null;
            }
            p45Var = new p45(o45Var, ms8.k(bArr), null);
        } else {
            if (z) {
                l0.e("KeySpec represents seed");
                return null;
            }
            p45 p45Var2 = new p45(o45Var, ms8.k(bArr), null);
            if (z) {
                l0.e("KeySpec represents long form");
                return null;
            }
            byte[] bArrK = ms8.k(q45Var.b);
            if (bArrK != null && !ms8.r(bArrK, ms8.p(p45Var2.f, p45Var2.k))) {
                throw new InvalidKeySpecException("public key data does not match private key data");
            }
            p45Var = p45Var2;
        }
        gg0 gg0Var = new gg0();
        gg0Var.a = p45Var;
        gg0Var.b = lq7.d(((o45) p45Var.b).a);
        return gg0Var;
    }

    @Override // defpackage.tl0, java.security.KeyFactorySpi
    public final PublicKey engineGeneratePublic(KeySpec keySpec) {
        if (!(keySpec instanceof s45)) {
            return super.engineGeneratePublic(keySpec);
        }
        s45 s45Var = (s45) keySpec;
        r45 r45Var = new r45((o45) li8.a.get(s45Var.a.a), ms8.k(s45Var.b));
        hg0 hg0Var = new hg0();
        hg0Var.a = r45Var;
        hg0Var.b = lq7.d(n45.a(((o45) r45Var.b).a).a);
        return hg0Var;
    }

    @Override // java.security.KeyFactorySpi
    public final KeySpec engineGetKeySpec(Key key, Class cls) throws InvalidKeySpecException {
        if (key instanceof gg0) {
            if (PKCS8EncodedKeySpec.class.isAssignableFrom(cls)) {
                return new PKCS8EncodedKeySpec(((gg0) key).getEncoded());
            }
            if (q45.class.isAssignableFrom(cls)) {
                gg0 gg0Var = (gg0) key;
                byte[] bArrK = ms8.k(gg0Var.a.n);
                p45 p45Var = gg0Var.a;
                if (bArrK != null) {
                    return new q45(n45.a(((o45) p45Var.b).a), bArrK);
                }
                n45 n45VarA = n45.a(((o45) p45Var.b).a);
                byte[] encoded = gg0Var.a.getEncoded();
                p45 p45Var2 = gg0Var.a;
                o45 o45Var = (o45) p45Var2.b;
                byte[] bArr = p45Var2.f;
                byte[] bArr2 = p45Var2.k;
                k45 k45Var = new k45(o45Var.b);
                if (bArr.length != k45Var.c) {
                    c6.f("'t' has invalid length");
                    return null;
                }
                if (bArr2.length != 32) {
                    c6.f("'rho' has invalid length");
                    return null;
                }
                byte[] bArrK2 = ms8.k(bArr);
                byte[] bArrK3 = ms8.k(bArr2);
                if (k45Var.a(bArrK2)) {
                    lq7.d(n45.a(o45Var.a).a);
                    return new q45(n45VarA, encoded, ms8.p(bArrK2, bArrK3));
                }
                c6.f("Modulus check failed for ML-KEM public key");
                return null;
            }
            if (s45.class.isAssignableFrom(cls)) {
                gg0 gg0Var2 = (gg0) key;
                n45 n45VarA2 = n45.a(((o45) gg0Var2.a.b).a);
                p45 p45Var3 = gg0Var2.a;
                o45 o45Var2 = (o45) p45Var3.b;
                byte[] bArr3 = p45Var3.f;
                byte[] bArr4 = p45Var3.k;
                k45 k45Var2 = new k45(o45Var2.b);
                if (bArr3.length != k45Var2.c) {
                    c6.f("'t' has invalid length");
                    return null;
                }
                if (bArr4.length != 32) {
                    c6.f("'rho' has invalid length");
                    return null;
                }
                byte[] bArrK4 = ms8.k(bArr3);
                byte[] bArrK5 = ms8.k(bArr4);
                if (k45Var2.a(bArrK4)) {
                    lq7.d(n45.a(o45Var2.a).a);
                    return new s45(n45VarA2, ms8.p(bArrK4, bArrK5));
                }
                c6.f("Modulus check failed for ML-KEM public key");
                return null;
            }
        } else {
            if (!(key instanceof hg0)) {
                throw new InvalidKeySpecException("Unsupported key type: " + key.getClass() + ".");
            }
            if (X509EncodedKeySpec.class.isAssignableFrom(cls)) {
                return new X509EncodedKeySpec(((hg0) key).getEncoded());
            }
            if (s45.class.isAssignableFrom(cls)) {
                hg0 hg0Var = (hg0) key;
                return new s45(n45.a(((o45) hg0Var.a.b).a), hg0Var.a.getEncoded());
            }
        }
        throw new InvalidKeySpecException(fz5.l(cls, "unknown key specification: ", "."));
    }

    @Override // java.security.KeyFactorySpi
    public final Key engineTranslateKey(Key key) throws InvalidKeyException {
        if ((key instanceof gg0) || (key instanceof hg0)) {
            return key;
        }
        d6.f("unsupported key type");
        return null;
    }
}
