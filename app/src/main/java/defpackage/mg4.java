package defpackage;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class mg4 extends sh4 {
    public static final /* synthetic */ AtomicIntegerFieldUpdater p = AtomicIntegerFieldUpdater.newUpdater(mg4.class, "_invoked$volatile");
    private volatile /* synthetic */ int _invoked$volatile;
    public final mt3 n;

    public mg4(mt3 mt3Var) {
        this.n = mt3Var;
    }

    @Override // defpackage.sh4
    public final boolean p() {
        return true;
    }

    @Override // defpackage.sh4
    public final void q(Throwable th) {
        if (p.compareAndSet(this, 0, 1)) {
            this.n.invoke(th);
        }
    }
}
