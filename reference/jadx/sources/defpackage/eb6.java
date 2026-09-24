package defpackage;

import org.bouncycastle.asn1.x509.SubjectPublicKeyInfo;

/* JADX INFO: loaded from: classes.dex */
public final class eb6 extends lb6 {
    public final /* synthetic */ int a;

    public /* synthetic */ eb6(int i) {
        this.a = i;
    }

    @Override // defpackage.lb6
    public final n60 a(SubjectPublicKeyInfo subjectPublicKeyInfo) {
        switch (this.a) {
            case 0:
                byte[] bArrC = subjectPublicKeyInfo.b.C();
                j1 j1Var = (j1) fi8.c(bArrC);
                return j1Var != null ? n24.a(j1Var.a) : n24.a(bArrC);
            default:
                try {
                    byte[] bArr = j1.x(subjectPublicKeyInfo.l()).a;
                    return new cw6((aw6) fi8.p.get(subjectPublicKeyInfo.a.a), ms8.t(bArr, 4, bArr.length));
                } catch (Exception unused) {
                    return new cw6((aw6) fi8.p.get(subjectPublicKeyInfo.a.a), subjectPublicKeyInfo.b.C());
                }
        }
    }
}
