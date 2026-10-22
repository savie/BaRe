package defpackage;

import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class xa8 implements wa8 {
    public final Set a;
    public final oe0 b;
    public final ya8 c;

    public xa8(Set set, oe0 oe0Var, ya8 ya8Var) {
        this.a = set;
        this.b = oe0Var;
        this.c = ya8Var;
    }

    public final rh3 a(String str, dw2 dw2Var, o98 o98Var) {
        Set set = this.a;
        if (set.contains(dw2Var)) {
            return new rh3(this.b, str, dw2Var, o98Var, this.c);
        }
        l0.i("%s is not supported byt this factory. Supported encodings are: %s.", new Object[]{dw2Var, set});
        return null;
    }
}
