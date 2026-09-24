package org.bouncycastle.asn1.x509;

import defpackage.f82;
import defpackage.q1;
import defpackage.t82;
import defpackage.u;
import defpackage.v1;
import defpackage.y0;
import defpackage.ya;
import defpackage.z5;
import java.util.Enumeration;

/* JADX INFO: loaded from: classes.dex */
public class SubjectPublicKeyInfo extends y0 {
    public ya a;
    public u b;

    public SubjectPublicKeyInfo(ya yaVar, y0 y0Var) {
        this.b = new f82(y0Var.d().i(), 0);
        this.a = yaVar;
    }

    public static SubjectPublicKeyInfo k(Object obj) {
        if (obj instanceof SubjectPublicKeyInfo) {
            return (SubjectPublicKeyInfo) obj;
        }
        if (obj != null) {
            v1 v1VarB = v1.B(obj);
            SubjectPublicKeyInfo subjectPublicKeyInfo = new SubjectPublicKeyInfo();
            if (v1VarB.size() == 2) {
                Enumeration enumerationE = v1VarB.E();
                subjectPublicKeyInfo.a = ya.k(enumerationE.nextElement());
                subjectPublicKeyInfo.b = u.B(enumerationE.nextElement());
                return subjectPublicKeyInfo;
            }
            z5.c(v1VarB.size(), "Bad sequence size: ");
        }
        return null;
    }

    @Override // defpackage.y0, defpackage.b0
    public final q1 d() {
        return new t82(this.a, this.b);
    }

    public final q1 l() {
        return q1.t(this.b.C());
    }

    public SubjectPublicKeyInfo(ya yaVar, byte[] bArr) {
        this.b = new f82(bArr, 0);
        this.a = yaVar;
    }
}
