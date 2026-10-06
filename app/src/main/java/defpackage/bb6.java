package defpackage;

import org.bouncycastle.asn1.x509.SubjectPublicKeyInfo;

/* JADX INFO: loaded from: classes.dex */
public final class bb6 extends lb6 {
    public final /* synthetic */ int a;

    public /* synthetic */ bb6(int i) {
        this.a = i;
    }

    @Override // defpackage.lb6
    public final n60 a(SubjectPublicKeyInfo subjectPublicKeyInfo) {
        switch (this.a) {
            case 0:
                byte[] bArrC = subjectPublicKeyInfo.b.C();
                return new o33((k33) fi8.t.get(subjectPublicKeyInfo.a.a), ms8.t(bArrC, 1, bArrC.length));
            default:
                try {
                    byte[] bArr = j1.x(subjectPublicKeyInfo.l()).a;
                    return new tr6((rr6) fi8.L.get(subjectPublicKeyInfo.a.a), ms8.t(bArr, 4, bArr.length));
                } catch (Exception unused) {
                    return new tr6((rr6) fi8.L.get(subjectPublicKeyInfo.a.a), subjectPublicKeyInfo.b.C());
                }
        }
    }
}
