package defpackage;

import android.util.Log;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ih5 extends FutureTask {
    public final /* synthetic */ a70 a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ih5(a70 a70Var, hh5 hh5Var) {
        super(hh5Var);
        this.a = a70Var;
    }

    @Override // java.util.concurrent.FutureTask
    public final void done() {
        a70 a70Var = this.a;
        AtomicBoolean atomicBoolean = a70Var.d;
        try {
            Object obj = get();
            if (atomicBoolean.get()) {
                return;
            }
            a70Var.a(obj);
        } catch (InterruptedException e) {
            Log.w("AsyncTask", e);
        } catch (CancellationException unused) {
            if (atomicBoolean.get()) {
                return;
            }
            a70Var.a(null);
        } catch (ExecutionException e2) {
            e6.i("An error occurred while executing doInBackground()", e2.getCause());
        } catch (Throwable th) {
            e6.i("An error occurred while executing doInBackground()", th);
        }
    }
}
