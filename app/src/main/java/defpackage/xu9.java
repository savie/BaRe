package defpackage;

import java.security.GeneralSecurityException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class xu9 extends vm4 {
    public final tu9 d;
    public final km8 e;

    public xu9(tu9 tu9Var, km8 km8Var) {
        this.d = tu9Var;
        this.e = km8Var;
    }

    public static xu9 J(tu9 tu9Var, km8 km8Var) throws GeneralSecurityException {
        if (tu9Var.a == ((d2a) km8Var.a).a.length) {
            return new xu9(tu9Var, km8Var);
        }
        m0.h("Key size mismatch");
        return null;
    }

    @Override // defpackage.vm4
    public final bd9 G() {
        return this.d;
    }

    @Override // defpackage.vm4
    public final Integer H() {
        return null;
    }
}
