package defpackage;

import java.security.GeneralSecurityException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ei9 extends oe9 {
    public final di9 d;
    public final d2a e;
    public final Integer f;

    public ei9(di9 di9Var, d2a d2aVar, Integer num) {
        this.d = di9Var;
        this.e = d2aVar;
        this.f = num;
    }

    public static ei9 K(di9 di9Var, Integer num) throws GeneralSecurityException {
        d2a d2aVarB;
        ci9 ci9Var = di9Var.a;
        if (ci9Var == ci9.d) {
            if (num != null) {
                m0.h("For given Variant NO_PREFIX the value of idRequirement must be null");
                return null;
            }
            d2aVarB = zs9.a;
        } else {
            if (ci9Var != ci9.c) {
                throw new GeneralSecurityException("Unknown Variant: ".concat(String.valueOf(ci9Var)));
            }
            if (num == null) {
                m0.h("For given Variant TINK the value of idRequirement must be non-null");
                return null;
            }
            d2aVarB = zs9.b(num.intValue());
        }
        return new ei9(di9Var, d2aVarB, num);
    }

    @Override // defpackage.vm4
    public final /* synthetic */ bd9 G() {
        return this.d;
    }

    @Override // defpackage.vm4
    public final Integer H() {
        return this.f;
    }

    @Override // defpackage.oe9
    public final d2a J() {
        return this.e;
    }
}
