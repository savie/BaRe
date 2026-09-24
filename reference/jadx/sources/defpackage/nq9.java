package defpackage;

import java.security.GeneralSecurityException;
import java.security.spec.ECPoint;
import java.security.spec.EllipticCurve;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class nq9 extends dr9 {
    public final cq9 d;
    public final ECPoint e;
    public final d2a f;
    public final d2a k;
    public final Integer n;

    public nq9(cq9 cq9Var, ECPoint eCPoint, d2a d2aVar, d2a d2aVar2, Integer num) {
        this.d = cq9Var;
        this.e = eCPoint;
        this.f = d2aVar;
        this.k = d2aVar2;
        this.n = num;
    }

    public static nq9 K(cq9 cq9Var, ECPoint eCPoint, Integer num) throws GeneralSecurityException {
        EllipticCurve curve;
        yp9 yp9Var = cq9Var.a;
        zp9 zp9Var = cq9Var.d;
        if (yp9Var.equals(yp9.e)) {
            m0.h("createForNistCurve may only be called with parameters for NIST curve");
            return null;
        }
        N(zp9Var, num);
        if (yp9Var == yp9.b) {
            curve = yr9.a.getCurve();
        } else if (yp9Var == yp9.c) {
            curve = yr9.b.getCurve();
        } else {
            if (yp9Var != yp9.d) {
                c6.f("Unable to determine NIST curve type for ".concat(String.valueOf(yp9Var)));
                return null;
            }
            curve = yr9.c.getCurve();
        }
        yr9.g(eCPoint, curve);
        return new nq9(cq9Var, eCPoint, null, M(zp9Var, num), num);
    }

    public static nq9 L(cq9 cq9Var, d2a d2aVar, Integer num) throws GeneralSecurityException {
        yp9 yp9Var = cq9Var.a;
        zp9 zp9Var = cq9Var.d;
        if (!yp9Var.equals(yp9.e)) {
            m0.h("createForCurveX25519 may only be called with parameters for curve X25519");
            return null;
        }
        N(zp9Var, num);
        if (d2aVar.a.length == 32) {
            return new nq9(cq9Var, null, d2aVar, M(zp9Var, num), num);
        }
        m0.h("Encoded public point byte length for X25519 curve must be 32");
        return null;
    }

    public static d2a M(zp9 zp9Var, Integer num) {
        if (zp9Var == zp9.d) {
            return zs9.a;
        }
        if (num == null) {
            l0.e("idRequirement must be non-null for EciesParameters.Variant: ".concat(String.valueOf(zp9Var)));
            return null;
        }
        if (zp9Var == zp9.c) {
            return zs9.a(num.intValue());
        }
        if (zp9Var == zp9.b) {
            return zs9.b(num.intValue());
        }
        l0.e("Unknown EciesParameters.Variant: ".concat(String.valueOf(zp9Var)));
        return null;
    }

    public static void N(zp9 zp9Var, Integer num) throws GeneralSecurityException {
        zp9 zp9Var2 = zp9.d;
        if (!zp9Var.equals(zp9Var2) && num == null) {
            throw new GeneralSecurityException(eq3.k("'idRequirement' must be non-null for ", String.valueOf(zp9Var), " variant."));
        }
        if (zp9Var == zp9Var2 && num != null) {
            m0.h("'idRequirement' must be null for NO_PREFIX variant.");
        }
    }

    @Override // defpackage.vm4
    public final /* synthetic */ bd9 G() {
        return this.d;
    }

    @Override // defpackage.vm4
    public final Integer H() {
        return this.n;
    }

    @Override // defpackage.dr9
    public final d2a J() {
        return this.k;
    }
}
