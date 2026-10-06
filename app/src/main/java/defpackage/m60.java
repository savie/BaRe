package defpackage;

import java.security.PrivateKey;
import java.security.PublicKey;
import org.bouncycastle.asn1.pkcs.PrivateKeyInfo;
import org.bouncycastle.asn1.x509.SubjectPublicKeyInfo;

/* JADX INFO: loaded from: classes.dex */
public interface m60 {
    PrivateKey a(PrivateKeyInfo privateKeyInfo);

    PublicKey b(SubjectPublicKeyInfo subjectPublicKeyInfo);
}
