package defpackage;

import org.bouncycastle.asn1.x509.SubjectPublicKeyInfo;

/* JADX INFO: loaded from: classes.dex */
public final class fb6 extends lb6 {
    public final /* synthetic */ int a;

    public /* synthetic */ fb6(int i) {
        this.a = i;
    }

    public static j45 b(h45 h45Var, u uVar) {
        try {
            q1 q1VarT = q1.t(uVar.C());
            if (!(q1VarT instanceof v1)) {
                return new j45(h45Var, j1.x(q1VarT).a);
            }
            v1 v1VarB = v1.B(q1VarT);
            return new j45(h45Var, j1.x(v1VarB.C(0)).a, j1.x(v1VarB.C(1)).a);
        } catch (Exception unused) {
            return new j45(h45Var, uVar.C());
        }
    }

    @Override // defpackage.lb6
    public final n60 a(SubjectPublicKeyInfo subjectPublicKeyInfo) {
        switch (this.a) {
            case 0:
                return b((h45) fi8.J.get(subjectPublicKeyInfo.a.a), subjectPublicKeyInfo.b);
            default:
                return new vi7((ti7) fi8.P.get(subjectPublicKeyInfo.a.a), j1.x(subjectPublicKeyInfo.l()).a);
        }
    }
}
