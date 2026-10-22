package defpackage;

import org.bouncycastle.asn1.x509.SubjectPublicKeyInfo;

/* JADX INFO: loaded from: classes.dex */
public final class ab6 extends lb6 {
    public final /* synthetic */ int a;

    public static ql2 b(ol2 ol2Var, u uVar) {
        try {
            q1 q1VarT = q1.t(uVar.C());
            if (!(q1VarT instanceof v1)) {
                return new ql2(ol2Var, j1.x(q1VarT).a);
            }
            v1 v1VarB = v1.B(q1VarT);
            return new ql2(ol2Var, j1.x(v1VarB.C(0)).a, j1.x(v1VarB.C(1)).a);
        } catch (Exception unused) {
            return new ql2(ol2Var, uVar.C());
        }
    }

    @Override // defpackage.lb6
    public final n60 a(SubjectPublicKeyInfo subjectPublicKeyInfo) {
        switch (this.a) {
            case 0:
                return b((ol2) fi8.z.get(subjectPublicKeyInfo.a.a), subjectPublicKeyInfo.b);
            default:
                return new dr6((br6) fi8.l.get(subjectPublicKeyInfo.a.a), j1.x(v1.B(subjectPublicKeyInfo.l()).C(0)).a);
        }
    }
}
