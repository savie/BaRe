package defpackage;

import java.security.GeneralSecurityException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class mj9 extends oe9 {
    public final xj9 d;
    public final km8 e;
    public final d2a f;
    public final Integer k;

    public mj9(xj9 xj9Var, km8 km8Var, d2a d2aVar, Integer num) {
        this.d = xj9Var;
        this.e = km8Var;
        this.f = d2aVar;
        this.k = num;
    }

    public static mj9 K(xj9 xj9Var, km8 km8Var, Integer num) throws GeneralSecurityException {
        d2a d2aVarB;
        d2a d2aVar = (d2a) km8Var.a;
        rf9 rf9Var = xj9Var.a;
        rf9 rf9Var2 = rf9.k;
        if (rf9Var != rf9Var2 && num == null) {
            throw new GeneralSecurityException(eq3.k("For given Variant ", String.valueOf(rf9Var), " the value of idRequirement must be non-null"));
        }
        if (rf9Var == rf9Var2 && num != null) {
            m0.h("For given Variant NO_PREFIX the value of idRequirement must be null");
            return null;
        }
        if (d2aVar.a.length != 32) {
            throw new GeneralSecurityException(fz5.j(d2aVar.a.length, "XAesGcmKey key must be constructed with key of length 32 bytes, not "));
        }
        if (rf9Var == rf9Var2) {
            d2aVarB = zs9.a;
        } else {
            if (rf9Var != rf9.f) {
                l0.e("Unknown Variant: ".concat(String.valueOf(rf9Var)));
                return null;
            }
            d2aVarB = zs9.b(num.intValue());
        }
        return new mj9(xj9Var, km8Var, d2aVarB, num);
    }

    @Override // defpackage.vm4
    public final /* synthetic */ bd9 G() {
        return this.d;
    }

    @Override // defpackage.vm4
    public final Integer H() {
        return this.k;
    }

    @Override // defpackage.oe9
    public final d2a J() {
        return this.f;
    }
}
