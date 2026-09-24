package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class q28 implements l28 {
    public final Object a;
    public final ThreadLocal b;
    public final s28 c;

    public q28(Object obj, ThreadLocal threadLocal) {
        this.a = obj;
        this.b = threadLocal;
        this.c = new s28(threadLocal);
    }

    @Override // defpackage.l28
    public final Object a() {
        ThreadLocal threadLocal = this.b;
        Object obj = threadLocal.get();
        threadLocal.set(this.a);
        return obj;
    }

    @Override // defpackage.ox1
    public final Object fold(Object obj, qt3 qt3Var) {
        return qt3Var.invoke(obj, this);
    }

    @Override // defpackage.ox1
    public final mx1 get(nx1 nx1Var) {
        if (this.c.equals(nx1Var)) {
            return this;
        }
        return null;
    }

    @Override // defpackage.mx1
    public final nx1 getKey() {
        return this.c;
    }

    @Override // defpackage.l28
    public final void h(Object obj) {
        this.b.set(obj);
    }

    @Override // defpackage.ox1
    public final ox1 minusKey(nx1 nx1Var) {
        return this.c.equals(nx1Var) ? lv2.a : this;
    }

    @Override // defpackage.ox1
    public final ox1 plus(ox1 ox1Var) {
        return od2.u(this, ox1Var);
    }

    public final String toString() {
        return "ThreadLocal(value=" + this.a + ", threadLocal = " + this.b + ')';
    }
}
