package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class pf8 implements mx1 {
    public final pf8 a;
    public final ic2 b;

    public pf8(pf8 pf8Var, ic2 ic2Var) {
        this.a = pf8Var;
        this.b = ic2Var;
    }

    public final void b(ic2 ic2Var) {
        if (this.b == ic2Var) {
            l0.e("Calling updateData inside updateData on the same DataStore instance is not supported\nsince updates made in the parent updateData call will not be visible to the nested\nupdateData call. See https://issuetracker.google.com/issues/241760537 for details.");
            return;
        }
        pf8 pf8Var = this.a;
        if (pf8Var != null) {
            pf8Var.b(ic2Var);
        }
    }

    @Override // defpackage.ox1
    public final Object fold(Object obj, qt3 qt3Var) {
        return qt3Var.invoke(obj, this);
    }

    @Override // defpackage.ox1
    public final mx1 get(nx1 nx1Var) {
        return od2.k(this, nx1Var);
    }

    @Override // defpackage.mx1
    public final nx1 getKey() {
        return fo8.b;
    }

    @Override // defpackage.ox1
    public final ox1 minusKey(nx1 nx1Var) {
        return od2.r(this, nx1Var);
    }

    @Override // defpackage.ox1
    public final ox1 plus(ox1 ox1Var) {
        return od2.u(this, ox1Var);
    }
}
