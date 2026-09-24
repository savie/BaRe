package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class o3 extends ci4 implements jv1, xx1 {
    public final ox1 e;

    public o3(ox1 ox1Var, boolean z) {
        super(z);
        C((oh4) ox1Var.get(nh4.b));
        this.e = ox1Var.plus(this);
    }

    @Override // defpackage.ci4
    public final void B(mn1 mn1Var) {
        y13.m(this.e, mn1Var);
    }

    @Override // defpackage.ci4
    public final void L(Object obj) {
        if (!(obj instanceof ln1)) {
            Z(obj);
        } else {
            ln1 ln1Var = (ln1) obj;
            Y(ln1Var.a, ln1.b.get(ln1Var) == 1);
        }
    }

    public final void a0(ay1 ay1Var, o3 o3Var, qt3 qt3Var) {
        Object objInvoke;
        int iOrdinal = ay1Var.ordinal();
        be8 be8Var = be8.a;
        if (iOrdinal == 0) {
            try {
                ly8.L(nc8.D(nc8.o(o3Var, this, qt3Var)), be8Var);
                return;
            } catch (Throwable th) {
                th = th;
                if (th instanceof xm2) {
                    th = ((xm2) th).a;
                }
                resumeWith(lg7.e(th));
                throw th;
            }
        }
        if (iOrdinal != 1) {
            if (iOrdinal == 2) {
                qt3Var.getClass();
                nc8.D(nc8.o(o3Var, this, qt3Var)).resumeWith(be8Var);
                return;
            }
            if (iOrdinal != 3) {
                q.j();
                return;
            }
            try {
                ox1 ox1Var = this.e;
                Object objJ = pe4.J(ox1Var, null);
                try {
                    if (qt3Var instanceof ml0) {
                        nc8.g(2, qt3Var);
                        objInvoke = qt3Var.invoke(o3Var, this);
                    } else {
                        objInvoke = nc8.r0(qt3Var, o3Var, this);
                    }
                    pe4.y(ox1Var, objJ);
                    if (objInvoke != yx1.a) {
                        resumeWith(objInvoke);
                    }
                } catch (Throwable th2) {
                    pe4.y(ox1Var, objJ);
                    throw th2;
                }
            } catch (Throwable th3) {
                th = th3;
                if (th instanceof xm2) {
                    th = ((xm2) th).a;
                }
                resumeWith(lg7.e(th));
            }
        }
    }

    @Override // defpackage.xx1
    public final ox1 d() {
        return this.e;
    }

    @Override // defpackage.jv1
    public final ox1 getContext() {
        return this.e;
    }

    @Override // defpackage.ci4
    public final String o() {
        return getClass().getSimpleName().concat(" was cancelled");
    }

    @Override // defpackage.jv1
    public final void resumeWith(Object obj) {
        Throwable thA = en6.a(obj);
        if (thA != null) {
            obj = new ln1(thA, false);
        }
        Object objH = H(obj);
        if (objH == pe4.c) {
            return;
        }
        j(objH);
    }

    public void Z(Object obj) {
    }

    public void Y(Throwable th, boolean z) {
    }
}
