package defpackage;

import org.bouncycastle.asn1.x509.SubjectPublicKeyInfo;

/* JADX INFO: loaded from: classes.dex */
public final class jb6 extends lb6 {
    @Override // defpackage.lb6
    public final n60 a(SubjectPublicKeyInfo subjectPublicKeyInfo) {
        return new wj5((uj5) fi8.v.get(subjectPublicKeyInfo.a.a), j1.x(subjectPublicKeyInfo.l()).a);
    }
}
