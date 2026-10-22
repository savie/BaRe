package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class dz4 extends gj5 {
    public final y29 l;
    public fu4 m;
    public ez4 n;

    public dz4(y29 y29Var) {
        this.l = y29Var;
        if (y29Var.a == null) {
            y29Var.a = this;
        } else {
            l0.e("There is already a listener registered");
            throw null;
        }
    }

    @Override // defpackage.zy4
    public final void g() {
        y29 y29Var = this.l;
        y29Var.b = true;
        y29Var.d = false;
        y29Var.c = false;
        y29Var.i.drainPermits();
        y29Var.c();
    }

    @Override // defpackage.zy4
    public final void h() {
        this.l.b = false;
    }

    @Override // defpackage.zy4
    public final void j(es5 es5Var) {
        super.j(es5Var);
        this.m = null;
        this.n = null;
    }

    public final void l() {
        fu4 fu4Var = this.m;
        ez4 ez4Var = this.n;
        if (fu4Var == null || ez4Var == null) {
            return;
        }
        super.j(ez4Var);
        e(fu4Var, ez4Var);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(64);
        sb.append("LoaderInfo{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" #0 : ");
        Class<?> cls = this.l.getClass();
        sb.append(cls.getSimpleName());
        sb.append("{");
        sb.append(Integer.toHexString(System.identityHashCode(cls)));
        sb.append("}}");
        return sb.toString();
    }
}
