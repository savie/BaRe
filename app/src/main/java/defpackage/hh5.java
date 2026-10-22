package defpackage;

import android.os.Binder;
import android.os.Process;
import java.util.concurrent.Callable;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class hh5 implements Callable {
    public final /* synthetic */ a70 a;

    public hh5(a70 a70Var) {
        this.a = a70Var;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        a70 a70Var = this.a;
        a70Var.d.set(true);
        try {
            Process.setThreadPriority(10);
            a70Var.e.d();
            Binder.flushPendingCommands();
            a70Var.a(null);
            return null;
        } catch (Throwable th) {
            try {
                a70Var.c.set(true);
                throw th;
            } catch (Throwable th2) {
                a70Var.a(null);
                throw th2;
            }
        }
    }
}
