package defpackage;

import java.util.concurrent.CancellationException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class an2 extends tx7 {
    public int c;

    public an2(int i) {
        super(0L, false);
        this.c = i;
    }

    public abstract jv1 d();

    public Throwable f(Object obj) {
        ln1 ln1Var = obj instanceof ln1 ? (ln1) obj : null;
        if (ln1Var != null) {
            return ln1Var.a;
        }
        return null;
    }

    public final void i(Throwable th) {
        y13.m(d().getContext(), new by1("Fatal exception in coroutines machinery for " + this + ". Please read KDoc to 'handleFatalException' method and report this incident to maintainers", th));
    }

    public abstract Object j();

    @Override // java.lang.Runnable
    public final void run() {
        try {
            jv1 jv1VarD = d();
            jv1VarD.getClass();
            ym2 ym2Var = (ym2) jv1VarD;
            kv1 kv1Var = ym2Var.e;
            Object obj = ym2Var.k;
            ox1 context = kv1Var.getContext();
            Object objJ = pe4.J(context, obj);
            oh4 oh4Var = null;
            vd8 vd8VarV = objJ != pe4.i ? w13.v(kv1Var, context, objJ) : null;
            try {
                ox1 context2 = kv1Var.getContext();
                Object objJ2 = j();
                Throwable thF = f(objJ2);
                if (thF == null) {
                    int i = this.c;
                    boolean z = true;
                    if (i != 1 && i != 2) {
                        z = false;
                    }
                    if (z) {
                        oh4Var = (oh4) context2.get(nh4.b);
                    }
                }
                if (oh4Var != null && !oh4Var.isActive()) {
                    CancellationException cancellationException = oh4Var.getCancellationException();
                    c(cancellationException);
                    kv1Var.resumeWith(lg7.e(cancellationException));
                } else if (thF != null) {
                    kv1Var.resumeWith(new bn6(thF));
                } else {
                    kv1Var.resumeWith(h(objJ2));
                }
            } finally {
                if (vd8VarV == null || vd8VarV.c0()) {
                    pe4.y(context, objJ);
                }
            }
        } catch (xm2 e) {
            y13.m(d().getContext(), e.a);
        } catch (Throwable th) {
            i(th);
        }
    }

    public void c(CancellationException cancellationException) {
    }

    public Object h(Object obj) {
        return obj;
    }
}
