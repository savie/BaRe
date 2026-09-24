package defpackage;

import java.security.GeneralSecurityException;
import java.security.spec.EllipticCurve;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class vq9 extends dr9 {
    public final lq9 d;
    public final d2a e;
    public final d2a f;
    public final Integer k;

    public vq9(lq9 lq9Var, d2a d2aVar, d2a d2aVar2, Integer num) {
        this.d = lq9Var;
        this.e = d2aVar;
        this.f = d2aVar2;
        this.k = num;
    }

    public static vq9 K(lq9 lq9Var, d2a d2aVar, Integer num) {
        EllipticCurve curve;
        d2a d2aVarB;
        iq9 iq9Var = lq9Var.d;
        iq9 iq9Var2 = iq9.d;
        if (!iq9Var.equals(iq9Var2) && num == null) {
            throw new GeneralSecurityException(eq3.k("'idRequirement' must be non-null for ", String.valueOf(iq9Var), " variant."));
        }
        if (iq9Var == iq9Var2 && num != null) {
            m0.h("'idRequirement' must be null for NO_PREFIX variant.");
            return null;
        }
        jq9 jq9Var = lq9Var.a;
        int length = d2aVar.a.length;
        String str = "Encoded public key byte length for " + String.valueOf(jq9Var) + " must be %d, not " + length;
        jq9 jq9Var2 = jq9.f;
        jq9 jq9Var3 = jq9.e;
        jq9 jq9Var4 = jq9.d;
        if (jq9Var == jq9Var4) {
            if (length != 65) {
                throw new GeneralSecurityException(String.format(str, 65));
            }
        } else if (jq9Var == jq9Var3) {
            if (length != 97) {
                throw new GeneralSecurityException(String.format(str, 97));
            }
        } else if (jq9Var == jq9Var2) {
            if (length != 133) {
                throw new GeneralSecurityException(String.format(str, 133));
            }
        } else {
            if (jq9Var != jq9.g) {
                throw new GeneralSecurityException("Unable to validate public key length for ".concat(String.valueOf(jq9Var)));
            }
            if (length != 32) {
                throw new GeneralSecurityException(String.format(str, 32));
            }
        }
        if (jq9Var == jq9Var4 || jq9Var == jq9Var3 || jq9Var == jq9Var2) {
            if (jq9Var == jq9Var4) {
                curve = yr9.a.getCurve();
            } else if (jq9Var == jq9Var3) {
                curve = yr9.b.getCurve();
            } else {
                if (jq9Var != jq9Var2) {
                    c6.f("Unable to determine NIST curve type for ".concat(String.valueOf(jq9Var)));
                    return null;
                }
                curve = yr9.c.getCurve();
            }
            yr9.g(zm5.N(curve, r1a.a, d2aVar.b()), curve);
        }
        if (iq9Var == iq9Var2) {
            d2aVarB = zs9.a;
        } else {
            if (num == null) {
                l0.e("idRequirement must be non-null for HpkeParameters.Variant ".concat(String.valueOf(iq9Var)));
                return null;
            }
            if (iq9Var == iq9.c) {
                d2aVarB = zs9.a(num.intValue());
            } else {
                if (iq9Var != iq9.b) {
                    l0.e("Unknown HpkeParameters.Variant: ".concat(String.valueOf(iq9Var)));
                    return null;
                }
                d2aVarB = zs9.b(num.intValue());
            }
        }
        return new vq9(lq9Var, d2aVar, d2aVarB, num);
    }

    @Override // defpackage.vm4
    public final /* synthetic */ bd9 G() {
        return this.d;
    }

    @Override // defpackage.vm4
    public final Integer H() {
        return this.k;
    }

    @Override // defpackage.dr9
    public final d2a J() {
        return this.f;
    }
}
