package defpackage;

import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class dj8 extends ji8 {
    public final bv7 n;
    public final gy5 p;

    public dj8(bv7 bv7Var, gy5 gy5Var) {
        this.n = bv7Var;
        this.p = gy5Var;
    }

    @Override // defpackage.ji8
    public final qn5 D() {
        return this.n.i(this.p, new ArrayList());
    }

    @Override // defpackage.ji8
    public final ji8 o(m61 m61Var) {
        return new dj8(this.n, this.p.d(m61Var));
    }
}
