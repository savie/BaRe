package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class vd8 extends w57 {
    public final ThreadLocal k;
    private volatile boolean threadLocalIsSet;

    /* JADX WARN: Illegal instructions before constructor call */
    public vd8(jv1 jv1Var, ox1 ox1Var) {
        wd8 wd8Var = wd8.a;
        super(jv1Var, ox1Var.get(wd8Var) == null ? ox1Var.plus(wd8Var) : ox1Var);
        this.k = new ThreadLocal();
        if (jv1Var.getContext().get(lv1.b) instanceof rx1) {
            return;
        }
        Object objJ = pe4.J(ox1Var, null);
        pe4.y(ox1Var, objJ);
        e0(ox1Var, objJ);
    }

    @Override // defpackage.w57
    public final void b0() {
        d0();
    }

    public final boolean c0() {
        boolean z = this.threadLocalIsSet && this.k.get() == null;
        this.k.remove();
        return !z;
    }

    public final void d0() {
        if (this.threadLocalIsSet) {
            pw5 pw5Var = (pw5) this.k.get();
            if (pw5Var != null) {
                pe4.y((ox1) pw5Var.a, pw5Var.b);
            }
            this.k.remove();
        }
    }

    public final void e0(ox1 ox1Var, Object obj) {
        this.threadLocalIsSet = true;
        this.k.set(new pw5(ox1Var, obj));
    }

    @Override // defpackage.w57, defpackage.ci4
    public final void j(Object obj) {
        d0();
        Object objT = sz8.T(obj);
        jv1 jv1Var = this.f;
        ox1 context = jv1Var.getContext();
        Object objJ = pe4.J(context, null);
        vd8 vd8VarV = objJ != pe4.i ? w13.v(jv1Var, context, objJ) : null;
        try {
            jv1Var.resumeWith(objT);
        } finally {
            if (vd8VarV == null || vd8VarV.c0()) {
                pe4.y(context, objJ);
            }
        }
    }
}
