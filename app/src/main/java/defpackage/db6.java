package defpackage;

import org.bouncycastle.asn1.x509.SubjectPublicKeyInfo;

/* JADX INFO: loaded from: classes.dex */
public final class db6 extends lb6 {
    public final /* synthetic */ int a;

    @Override // defpackage.lb6
    public final n60 a(SubjectPublicKeyInfo subjectPublicKeyInfo) {
        switch (this.a) {
            case 0:
                try {
                    return new l24((j24) fi8.D.get(subjectPublicKeyInfo.a.a), j1.x(subjectPublicKeyInfo.l()).a);
                } catch (Exception unused) {
                    return new l24((j24) fi8.D.get(subjectPublicKeyInfo.a.a), subjectPublicKeyInfo.b.C());
                }
            default:
                return new ew6(fi8.e(tv6.k(subjectPublicKeyInfo.a.b)), subjectPublicKeyInfo.b.y());
        }
    }
}
