package defpackage;

import android.os.AsyncTask;
import android.util.Log;
import com.google.android.gms.auth.api.signin.internal.SignInHubActivity;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.Semaphore;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class y29 {
    public dz4 a;
    public boolean b = false;
    public boolean c = false;
    public boolean d = true;
    public boolean e = false;
    public Executor f;
    public volatile a70 g;
    public volatile a70 h;
    public final Semaphore i;
    public final Set j;

    public y29(SignInHubActivity signInHubActivity, Set set) {
        signInHubActivity.getApplicationContext();
        this.i = new Semaphore(0);
        this.j = set;
    }

    public final void a() {
        if (this.g != null) {
            boolean z = this.b;
            if (!z) {
                if (z) {
                    c();
                } else {
                    this.e = true;
                }
            }
            a70 a70Var = this.h;
            a70 a70Var2 = this.g;
            if (a70Var != null) {
                a70Var2.getClass();
                this.g = null;
                return;
            }
            a70Var2.getClass();
            a70 a70Var3 = this.g;
            a70Var3.c.set(true);
            if (a70Var3.a.cancel(false)) {
                this.h = this.g;
            }
            this.g = null;
        }
    }

    public final void b() {
        if (this.h != null || this.g == null) {
            return;
        }
        this.g.getClass();
        if (this.f == null) {
            this.f = AsyncTask.THREAD_POOL_EXECUTOR;
        }
        a70 a70Var = this.g;
        Executor executor = this.f;
        if (a70Var.b == 1) {
            a70Var.b = 2;
            executor.execute(a70Var.a);
            return;
        }
        int iA = dj7.A(a70Var.b);
        if (iA == 1) {
            l0.e("Cannot execute task: the task is already running.");
        } else if (iA != 2) {
            l0.e("We should never reach this state");
        } else {
            l0.e("Cannot execute task: the task has already been executed (a task can be executed only once)");
        }
    }

    public final void c() {
        a();
        this.g = new a70(this);
        b();
    }

    public final void d() {
        Iterator it = this.j.iterator();
        if (it.hasNext()) {
            ((i19) it.next()).getClass();
            x5.e();
            return;
        }
        try {
            this.i.tryAcquire(0, 5L, TimeUnit.SECONDS);
        } catch (InterruptedException e) {
            Log.i("GACSignInLoader", "Unexpected InterruptedException", e);
            Thread.currentThread().interrupt();
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(64);
        Class<?> cls = getClass();
        sb.append(cls.getSimpleName());
        sb.append("{");
        sb.append(Integer.toHexString(System.identityHashCode(cls)));
        sb.append(" id=0}");
        return sb.toString();
    }
}
