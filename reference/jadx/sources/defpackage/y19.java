package defpackage;

import android.os.DeadObjectException;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class y19 extends k19 {
    public final r19 b;
    public final TaskCompletionSource c;
    public final lk d;

    public y19(int i, r19 r19Var, TaskCompletionSource taskCompletionSource, lk lkVar) {
        super(i);
        this.c = taskCompletionSource;
        this.b = r19Var;
        this.d = lkVar;
        if (i == 2 && r19Var.b) {
            c6.f("Best-effort write calls cannot pass methods that should auto-resolve missing features.");
            throw null;
        }
    }

    @Override // defpackage.e29
    public final void a(Status status) {
        this.d.getClass();
        this.c.trySetException(rs9.f(status));
    }

    @Override // defpackage.e29
    public final void b(Exception exc) {
        this.c.trySetException(exc);
    }

    @Override // defpackage.e29
    public final void c(g19 g19Var) throws DeadObjectException {
        TaskCompletionSource taskCompletionSource = this.c;
        try {
            r19 r19Var = this.b;
            r19Var.d.a.accept(g19Var.b, taskCompletionSource);
        } catch (DeadObjectException e) {
            throw e;
        } catch (RemoteException e2) {
            a(e29.e(e2));
        } catch (RuntimeException e3) {
            taskCompletionSource.trySetException(e3);
        }
    }

    @Override // defpackage.e29
    public final void d(w00 w00Var, boolean z) {
        Boolean boolValueOf = Boolean.valueOf(z);
        Map map = (Map) w00Var.c;
        TaskCompletionSource taskCompletionSource = this.c;
        map.put(taskCompletionSource, boolValueOf);
        taskCompletionSource.getTask().addOnCompleteListener(new yf1(w00Var, taskCompletionSource, 15, false));
    }

    @Override // defpackage.k19
    public final boolean f(g19 g19Var) {
        return this.b.b;
    }

    @Override // defpackage.k19
    public final y53[] g(g19 g19Var) {
        return this.b.a;
    }
}
