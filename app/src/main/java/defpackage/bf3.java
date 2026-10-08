package defpackage;

import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class bf3 {
    public final /* synthetic */ mt3 a;
    public final /* synthetic */ AtomicReference b;
    public final /* synthetic */ AtomicReference c;
    public final /* synthetic */ CountDownLatch d;

    public bf3(mt3 mt3Var, AtomicReference atomicReference, AtomicReference atomicReference2, CountDownLatch countDownLatch) {
        this.a = mt3Var;
        this.b = atomicReference;
        this.c = atomicReference2;
        this.d = countDownLatch;
    }

    public final void a(wc2 wc2Var, boolean z) {
        ve3 ue3Var;
        Exception exc = (Exception) this.b.get();
        if (exc != null) {
            vr6.e$default(vr6.INSTANCE, "FireSynchronizer", "runTransaction: ".concat(io4.b(exc)), null, 4, null);
            ue3Var = new ue3(wc2.a(exc));
        } else if (wc2Var != null) {
            vr6.e$default(vr6.INSTANCE, "FireSynchronizer", xs1.j("runTransaction: ", wc2Var.b), null, 4, null);
            ue3Var = new ue3(wc2Var);
        } else {
            ue3Var = z ? te3.a : se3.a;
        }
        this.c.set(ue3Var);
        this.d.countDown();
    }
}
