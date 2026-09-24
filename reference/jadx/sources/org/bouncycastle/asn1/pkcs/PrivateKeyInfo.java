package org.bouncycastle.asn1.pkcs;

import defpackage.c0;
import defpackage.c6;
import defpackage.cq0;
import defpackage.f82;
import defpackage.j1;
import defpackage.p82;
import defpackage.q1;
import defpackage.q2;
import defpackage.t0;
import defpackage.t82;
import defpackage.u;
import defpackage.v1;
import defpackage.w82;
import defpackage.x1;
import defpackage.y0;
import defpackage.ya;
import java.util.Enumeration;

/* JADX INFO: loaded from: classes.dex */
public class PrivateKeyInfo extends y0 {
    public t0 a;
    public ya b;
    public j1 c;
    public x1 d;
    public u e;

    public PrivateKeyInfo(ya yaVar, byte[] bArr, x1 x1Var, byte[] bArr2) {
        this.a = new t0(bArr2 != null ? cq0.b : cq0.a);
        this.b = yaVar;
        this.c = new p82(bArr);
        this.d = x1Var;
        this.e = bArr2 == null ? null : new f82(bArr2, 0);
    }

    public static PrivateKeyInfo k(Object obj) {
        if (obj instanceof PrivateKeyInfo) {
            return (PrivateKeyInfo) obj;
        }
        if (obj != null) {
            v1 v1VarB = v1.B(obj);
            PrivateKeyInfo privateKeyInfo = new PrivateKeyInfo();
            Enumeration enumerationE = v1VarB.E();
            t0 t0VarX = t0.x(enumerationE.nextElement());
            privateKeyInfo.a = t0VarX;
            int iC = t0VarX.C();
            if (iC >= 0 && iC <= 1) {
                privateKeyInfo.b = ya.k(enumerationE.nextElement());
                privateKeyInfo.c = j1.x(enumerationE.nextElement());
                int i = -1;
                while (enumerationE.hasMoreElements()) {
                    q2 q2Var = (q2) enumerationE.nextElement();
                    int i2 = q2Var.c;
                    if (i2 <= i) {
                        c6.f("invalid optional field in private key info");
                        return null;
                    }
                    if (i2 == 0) {
                        privateKeyInfo.d = (x1) x1.c.r(q2Var, false);
                    } else {
                        if (i2 != 1) {
                            c6.f("unknown optional field in private key info");
                            return null;
                        }
                        if (iC < 1) {
                            c6.f("'publicKey' requires version v2(1) or later");
                            return null;
                        }
                        privateKeyInfo.e = (u) u.b.r(q2Var, false);
                    }
                    i = i2;
                }
                return privateKeyInfo;
            }
            c6.f("invalid version for private key info");
        }
        return null;
    }

    @Override // defpackage.y0, defpackage.b0
    public final q1 d() {
        c0 c0Var = new c0(5);
        c0Var.a(this.a);
        c0Var.a(this.b);
        c0Var.a(this.c);
        x1 x1Var = this.d;
        if (x1Var != null) {
            c0Var.a(new w82(false, 0, x1Var));
        }
        u uVar = this.e;
        if (uVar != null) {
            c0Var.a(new w82(false, 1, uVar));
        }
        t82 t82Var = new t82(c0Var);
        t82Var.c = -1;
        return t82Var;
    }

    public final q1 l() {
        return q1.t(this.c.a);
    }

    public PrivateKeyInfo(ya yaVar, q1 q1Var, x1 x1Var) {
        this(yaVar, q1Var, x1Var, (byte[]) null);
    }

    public PrivateKeyInfo(ya yaVar, y0 y0Var, x1 x1Var, byte[] bArr) {
        this(yaVar, y0Var.d().i(), x1Var, bArr);
    }
}
