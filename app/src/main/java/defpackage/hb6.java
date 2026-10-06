package defpackage;

import org.bouncycastle.asn1.x509.SubjectPublicKeyInfo;

/* JADX INFO: loaded from: classes.dex */
public final class hb6 extends lb6 {
    public final /* synthetic */ int a;

    @Override // defpackage.lb6
    public final n60 a(SubjectPublicKeyInfo subjectPublicKeyInfo) {
        switch (this.a) {
            case 0:
                return new o95((m95) fi8.N.get(subjectPublicKeyInfo.a.a), j1.x(subjectPublicKeyInfo.l()).a);
            default:
                jx8 jx8VarK = jx8.k(subjectPublicKeyInfo.a.b);
                if (jx8VarK == null) {
                    byte[] bArr = j1.x(subjectPublicKeyInfo.l()).a;
                    e38 e38Var = new e38((kx8) kx8.e.get(Integer.valueOf(xx3.a(bArr, 0))));
                    e38Var.e = jd4.g(bArr);
                    return new px8(e38Var);
                }
                f1 f1Var = jx8VarK.d.a;
                q1 q1VarL = subjectPublicKeyInfo.l();
                ux8 ux8Var = q1VarL != null ? new ux8(v1.B(q1VarL)) : null;
                e38 e38Var2 = new e38(new kx8(jx8VarK.b, jx8VarK.c, fi8.a(f1Var)));
                e38Var2.d = jd4.g(ms8.k(ux8Var.a));
                e38Var2.c = jd4.g(ms8.k(ux8Var.b));
                return new px8(e38Var2);
        }
    }
}
