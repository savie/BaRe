package defpackage;

import org.bouncycastle.asn1.x509.SubjectPublicKeyInfo;

/* JADX INFO: loaded from: classes.dex */
public final class cb6 extends lb6 {
    public final /* synthetic */ int a;

    @Override // defpackage.lb6
    public final n60 a(SubjectPublicKeyInfo subjectPublicKeyInfo) {
        switch (this.a) {
            case 0:
                byte[] bArr = j1.x(subjectPublicKeyInfo.l()).a;
                ss3 ss3Var = new ss3((qs3) fi8.j.get(subjectPublicKeyInfo.a.a), false);
                ss3Var.c = ms8.k(bArr);
                return ss3Var;
            default:
                return new qv6((ov6) fi8.x.get(subjectPublicKeyInfo.a.a), j1.x(subjectPublicKeyInfo.l()).a);
        }
    }
}
