package defpackage;

import java.security.KeyFactorySpi;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.KeySpec;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.X509EncodedKeySpec;
import java.util.Set;
import org.bouncycastle.asn1.pkcs.PrivateKeyInfo;
import org.bouncycastle.asn1.x509.SubjectPublicKeyInfo;

/* JADX INFO: loaded from: classes.dex */
public abstract class tl0 extends KeyFactorySpi implements m60 {
    public final Set a;
    public final f1 b;

    public tl0(f1 f1Var) {
        this.b = f1Var;
        this.a = null;
    }

    public final void c(f1 f1Var) throws InvalidKeySpecException {
        f1 f1Var2 = this.b;
        if (f1Var2 != null) {
            if (f1Var2.s(f1Var)) {
                return;
            }
            throw new InvalidKeySpecException("incorrect algorithm OID for key: " + f1Var);
        }
        if (this.a.contains(f1Var)) {
            return;
        }
        throw new InvalidKeySpecException("incorrect algorithm OID for key: " + f1Var);
    }

    @Override // java.security.KeyFactorySpi
    public PrivateKey engineGeneratePrivate(KeySpec keySpec) throws InvalidKeySpecException {
        if (!(keySpec instanceof PKCS8EncodedKeySpec)) {
            throw new InvalidKeySpecException("Unsupported key specification: " + keySpec.getClass() + ".");
        }
        try {
            PrivateKeyInfo privateKeyInfoK = PrivateKeyInfo.k(((PKCS8EncodedKeySpec) keySpec).getEncoded());
            c(privateKeyInfoK.b.a);
            return a(privateKeyInfoK);
        } catch (IllegalStateException e) {
            throw new InvalidKeySpecException(e.getMessage());
        } catch (InvalidKeySpecException e2) {
            throw e2;
        } catch (Exception e3) {
            b6.c(e3);
            return null;
        }
    }

    @Override // java.security.KeyFactorySpi
    public PublicKey engineGeneratePublic(KeySpec keySpec) throws InvalidKeySpecException {
        if (!(keySpec instanceof X509EncodedKeySpec)) {
            c6.j(keySpec, "Unknown key specification: ");
            return null;
        }
        try {
            SubjectPublicKeyInfo subjectPublicKeyInfoK = SubjectPublicKeyInfo.k(((X509EncodedKeySpec) keySpec).getEncoded());
            c(subjectPublicKeyInfoK.a.a);
            return b(subjectPublicKeyInfoK);
        } catch (InvalidKeySpecException e) {
            throw e;
        } catch (Exception e2) {
            b6.c(e2);
            return null;
        }
    }

    public tl0(Set set) {
        this.b = null;
        this.a = set;
    }
}
