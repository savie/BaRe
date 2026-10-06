package defpackage;

import java.util.concurrent.CancellationException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class r76 extends o3 implements h41, c77 {
    public final uw0 f;

    public r76(ox1 ox1Var, uw0 uw0Var) {
        super(ox1Var, true);
        this.f = uw0Var;
    }

    @Override // defpackage.o3
    public final void Y(Throwable th, boolean z) {
        if (this.f.g(th, false) || z) {
            return;
        }
        y13.m(this.e, th);
    }

    @Override // defpackage.o3
    public final void Z(Object obj) {
        this.f.g(null, false);
    }

    @Override // defpackage.c77
    public final Object c(jv1 jv1Var, Object obj) {
        return this.f.c(jv1Var, obj);
    }

    @Override // defpackage.ci4, defpackage.oh4
    public final void cancel(CancellationException cancellationException) {
        if (isCancelled()) {
            return;
        }
        if (cancellationException == null) {
            cancellationException = new ph4(o(), null, this);
        }
        m(cancellationException);
    }

    @Override // defpackage.c77
    public final Object f(Object obj) {
        return this.f.f(be8.a);
    }

    @Override // defpackage.ci4
    public final void m(CancellationException cancellationException) {
        CancellationException cancellationExceptionT = ci4.T(this, cancellationException);
        this.f.g(cancellationExceptionT, true);
        l(cancellationExceptionT);
    }
}
