package defpackage;

import java.util.concurrent.CancellationException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class zn5 extends p3 implements oh4 {
    public static final zn5 b = new zn5(nh4.b);

    @Override // defpackage.oh4
    public final g61 attachChild(k61 k61Var) {
        return ao5.a;
    }

    @Override // defpackage.oh4
    public final CancellationException getCancellationException() {
        throw new IllegalStateException("This job is always active");
    }

    @Override // defpackage.oh4
    public final f77 getChildren() {
        return rv2.a;
    }

    @Override // defpackage.oh4
    public final in2 invokeOnCompletion(mt3 mt3Var) {
        return ao5.a;
    }

    @Override // defpackage.oh4
    public final boolean isActive() {
        return true;
    }

    @Override // defpackage.oh4
    public final boolean isCancelled() {
        return false;
    }

    @Override // defpackage.oh4
    public final Object join(jv1 jv1Var) {
        throw new UnsupportedOperationException("This job is always active");
    }

    @Override // defpackage.oh4
    public final boolean start() {
        return false;
    }

    public final String toString() {
        return "NonCancellable";
    }

    @Override // defpackage.oh4
    public final in2 invokeOnCompletion(boolean z, boolean z2, mt3 mt3Var) {
        return ao5.a;
    }

    @Override // defpackage.oh4
    public final void cancel(CancellationException cancellationException) {
    }
}
