package defpackage;

import java.security.GeneralSecurityException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ck9 extends oe9 {
    public final ik9 d;
    public final km8 e;
    public final d2a f;
    public final Integer k;

    public ck9(ik9 ik9Var, km8 km8Var, d2a d2aVar, Integer num) {
        this.d = ik9Var;
        this.e = km8Var;
        this.f = d2aVar;
        this.k = num;
    }

    public static ck9 K(sg9 sg9Var, km8 km8Var, Integer num) throws GeneralSecurityException {
        d2a d2aVarB;
        d2a d2aVar = (d2a) km8Var.a;
        sg9 sg9Var2 = sg9.h;
        if (sg9Var != sg9Var2 && num == null) {
            throw new GeneralSecurityException(eq3.k("For given Variant ", String.valueOf(sg9Var), " the value of idRequirement must be non-null"));
        }
        if (sg9Var == sg9Var2 && num != null) {
            m0.h("For given Variant NO_PREFIX the value of idRequirement must be null");
            return null;
        }
        if (d2aVar.a.length != 32) {
            throw new GeneralSecurityException(fz5.j(d2aVar.a.length, "XChaCha20Poly1305 key must be constructed with key of length 32 bytes, not "));
        }
        ik9 ik9Var = new ik9(sg9Var);
        if (sg9Var == sg9Var2) {
            d2aVarB = zs9.a;
        } else if (sg9Var == sg9.g) {
            d2aVarB = zs9.a(num.intValue());
        } else {
            if (sg9Var != sg9.f) {
                l0.e("Unknown Variant: ".concat(String.valueOf(sg9Var)));
                return null;
            }
            d2aVarB = zs9.b(num.intValue());
        }
        return new ck9(ik9Var, km8Var, d2aVarB, num);
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
