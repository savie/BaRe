package defpackage;

import org.bouncycastle.asn1.x509.SubjectPublicKeyInfo;

/* JADX INFO: loaded from: classes.dex */
public final class gb6 extends lb6 {
    public final /* synthetic */ int a;

    @Override // defpackage.lb6
    public final n60 a(SubjectPublicKeyInfo subjectPublicKeyInfo) {
        switch (this.a) {
            case 0:
                return new r45((o45) fi8.H.get(subjectPublicKeyInfo.a.a), subjectPublicKeyInfo.b.C());
            default:
                hx8 hx8VarK = hx8.k(subjectPublicKeyInfo.a.b);
                if (hx8VarK == null) {
                    byte[] bArr = j1.x(subjectPublicKeyInfo.l()).a;
                    xt1 xt1Var = new xt1((rx8) rx8.h.get(Integer.valueOf(xx3.a(bArr, 0))));
                    xt1Var.d = jd4.g(bArr);
                    return new vx8(xt1Var);
                }
                f1 f1Var = hx8VarK.c.a;
                q1 q1VarL = subjectPublicKeyInfo.l();
                ux8 ux8Var = q1VarL != null ? new ux8(v1.B(q1VarL)) : null;
                xt1 xt1Var2 = new xt1(new rx8(hx8VarK.b, fi8.a(f1Var)));
                xt1Var2.c = jd4.g(ms8.k(ux8Var.a));
                xt1Var2.b = jd4.g(ms8.k(ux8Var.b));
                return new vx8(xt1Var2);
        }
    }
}
