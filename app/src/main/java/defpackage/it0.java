package defpackage;

import java.util.concurrent.locks.LockSupport;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class it0 extends o3 {
    public final Thread f;
    public final uy2 k;

    public it0(ox1 ox1Var, Thread thread, uy2 uy2Var) {
        super(ox1Var, true);
        this.f = thread;
        this.k = uy2Var;
    }

    @Override // defpackage.ci4
    public final void i(Object obj) {
        Thread threadCurrentThread = Thread.currentThread();
        Thread thread = this.f;
        if (pe4.d(threadCurrentThread, thread)) {
            return;
        }
        LockSupport.unpark(thread);
    }
}
