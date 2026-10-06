package defpackage;

import org.bouncycastle.asn1.x509.SubjectPublicKeyInfo;

/* JADX INFO: loaded from: classes.dex */
public final class ya6 extends lb6 {
    public final /* synthetic */ int a;

    @Override // defpackage.lb6
    public final n60 a(SubjectPublicKeyInfo subjectPublicKeyInfo) {
        switch (this.a) {
            case 0:
                try {
                    return new hi0((fi0) fi8.B.get(subjectPublicKeyInfo.a.a), j1.x(subjectPublicKeyInfo.l()).a);
                } catch (Exception unused) {
                    return new hi0((fi0) fi8.B.get(subjectPublicKeyInfo.a.a), subjectPublicKeyInfo.b.C());
                }
            default:
                return new i06((g06) fi8.h.get(subjectPublicKeyInfo.a.a), j1.x(subjectPublicKeyInfo.l()).a);
        }
    }
}
