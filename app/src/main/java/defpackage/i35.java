package defpackage;

import android.os.Handler;
import android.os.Looper;
import java.util.LinkedHashSet;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class i35 {
    public static final ExecutorService e = Executors.newCachedThreadPool();
    public final LinkedHashSet a = new LinkedHashSet(1);
    public final LinkedHashSet b = new LinkedHashSet(1);
    public final Handler c = new Handler(Looper.getMainLooper());
    public volatile g35 d = null;

    public i35(Callable callable, boolean z) {
        if (!z) {
            e.execute(new h35(this, callable));
            return;
        }
        try {
            c((g35) callable.call());
        } catch (Throwable th) {
            c(new g35(th));
        }
    }

    public final synchronized void a(e35 e35Var) {
        try {
            if (this.d != null && this.d.b != null) {
                e35Var.onResult(this.d.b);
            }
            this.b.add(e35Var);
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void b(e35 e35Var) {
        try {
            if (this.d != null && this.d.a != null) {
                e35Var.onResult(this.d.a);
            }
            this.a.add(e35Var);
        } catch (Throwable th) {
            throw th;
        }
    }

    public final void c(g35 g35Var) {
        if (this.d != null) {
            l0.e("A task may only be set once.");
        } else {
            this.d = g35Var;
            this.c.post(new ib0(this, 7));
        }
    }
}
