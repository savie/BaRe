package defpackage;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class lj5 implements m21, wn8 {
    public final o21 a;
    public final /* synthetic */ mj5 b;

    public lj5(mj5 mj5Var, o21 o21Var) {
        this.b = mj5Var;
        this.a = o21Var;
    }

    @Override // defpackage.wn8
    public final void a(n67 n67Var, int i) {
        this.a.a(n67Var, i);
    }

    @Override // defpackage.m21
    public final du9 b(Object obj, rt3 rt3Var) {
        mj5 mj5Var = this.b;
        n21 n21Var = new n21(mj5Var, this);
        du9 du9VarG = this.a.G((be8) obj, n21Var);
        if (du9VarG != null) {
            mj5.q.set(mj5Var, null);
        }
        return du9VarG;
    }

    @Override // defpackage.m21
    public final void e(Object obj, rt3 rt3Var) throws xm2 {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = mj5.q;
        mj5 mj5Var = this.b;
        atomicReferenceFieldUpdater.set(mj5Var, null);
        zs zsVar = new zs(mj5Var, this);
        o21 o21Var = this.a;
        o21Var.D(be8.a, o21Var.c, new n21(zsVar));
    }

    @Override // defpackage.m21
    public final void g(Object obj) throws xm2 {
        this.a.g(obj);
    }

    @Override // defpackage.jv1
    public final ox1 getContext() {
        return this.a.e;
    }

    @Override // defpackage.jv1
    public final void resumeWith(Object obj) {
        this.a.resumeWith(obj);
    }
}
