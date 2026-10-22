package defpackage;

import org.bouncycastle.asn1.x509.SubjectPublicKeyInfo;

/* JADX INFO: loaded from: classes.dex */
public final class kb6 extends lb6 {
    @Override // defpackage.lb6
    public final n60 a(SubjectPublicKeyInfo subjectPublicKeyInfo) {
        u uVar = subjectPublicKeyInfo.b;
        ya yaVar = subjectPublicKeyInfo.a;
        byte[] bArrC = uVar.C();
        j1 j1VarX = (fi8.b(bArrC) || bArrC[0] != 4) ? null : j1.x(bArrC);
        if (j1VarX != null) {
            return new zj5((xj5) fi8.r.get(yaVar.a), j1VarX.a);
        }
        return new zj5((xj5) fi8.r.get(yaVar.a), bArrC);
    }
}
