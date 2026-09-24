package com.microsoft.identity.common.java.net;

import com.microsoft.identity.common.java.logging.Logger;
import defpackage.dj7;
import defpackage.mr3;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class CancellationSignal {
    public static final /* synthetic */ int a = 0;
    private static final ThreadLocal<CancellationSignal> sThreadLocalSignal = new ThreadLocal<>();
    private final AtomicBoolean mCancelled = new AtomicBoolean(false);
    private final CopyOnWriteArrayList<Runnable> mOnCancelActions = new CopyOnWriteArrayList<>();

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public final class Companion {
        public static final void access$safeRun(Runnable runnable, String str) {
            int i = CancellationSignal.a;
            try {
                Logger.info("CancellationSignal", str);
                runnable.run();
            } catch (Exception e) {
                StringBuilder sbU = dj7.u("Exception during cancel action (", str, "): ");
                sbU.append(e.getMessage());
                Logger.warn("CancellationSignal", sbU.toString());
            }
        }
    }

    public final boolean isCancelled() {
        return this.mCancelled.get();
    }

    public final boolean registerOnCancel(mr3 mr3Var) {
        mr3Var.getClass();
        AtomicBoolean atomicBoolean = this.mCancelled;
        if (atomicBoolean.get()) {
            Companion.access$safeRun(mr3Var, "Action registered after cancellation — executing immediately");
            return false;
        }
        CopyOnWriteArrayList<Runnable> copyOnWriteArrayList = this.mOnCancelActions;
        copyOnWriteArrayList.add(mr3Var);
        if (!atomicBoolean.get()) {
            return true;
        }
        copyOnWriteArrayList.remove(mr3Var);
        Companion.access$safeRun(mr3Var, "Cancel race detected in registerOnCancel — executing");
        return false;
    }

    public final void unregisterOnCancel(mr3 mr3Var) {
        mr3Var.getClass();
        this.mOnCancelActions.remove(mr3Var);
    }
}
