package defpackage;

import android.util.Log;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class qy1 implements Callable {
    public final /* synthetic */ long a;
    public final /* synthetic */ Throwable b;
    public final /* synthetic */ Thread c;
    public final /* synthetic */ f80 d;
    public final /* synthetic */ sy1 e;

    public qy1(sy1 sy1Var, long j, Throwable th, Thread thread, f80 f80Var) {
        this.e = sy1Var;
        this.a = j;
        this.b = th;
        this.c = thread;
        this.d = f80Var;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() throws Throwable {
        long j = this.a;
        long j2 = j / 1000;
        sy1 sy1Var = this.e;
        String strF = sy1Var.f();
        if (strF == null) {
            Log.e("FirebaseCrashlytics", "Tried to write a fatal exception while no session was open.", null);
            return Tasks.forResult(null);
        }
        sy1Var.c.p();
        ca3 ca3Var = sy1Var.m;
        ca3Var.getClass();
        String strConcat = "Persisting fatal event for session ".concat(strF);
        if (Log.isLoggable("FirebaseCrashlytics", 2)) {
            Log.v("FirebaseCrashlytics", strConcat, null);
        }
        ca3Var.i(this.b, this.c, "crash", new az2(strF, j2, pv2.a), true);
        sy1Var.d(j);
        f80 f80Var = this.d;
        sy1Var.b(false, f80Var, false);
        sy1Var.c(new py0().a, Boolean.FALSE);
        return !sy1Var.b.b() ? Tasks.forResult(null) : ((TaskCompletionSource) ((AtomicReference) f80Var.i).get()).getTask().onSuccessTask((o02) sy1Var.e.a, new s79(this, strF));
    }
}
