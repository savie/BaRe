package defpackage;

import android.os.DeadObjectException;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class c29 extends k19 {
    public final TaskCompletionSource b;

    public c29(TaskCompletionSource taskCompletionSource) {
        super(4);
        this.b = taskCompletionSource;
    }

    @Override // defpackage.e29
    public final void a(Status status) {
        this.b.trySetException(new re(status));
    }

    @Override // defpackage.e29
    public final void b(Exception exc) {
        this.b.trySetException(exc);
    }

    @Override // defpackage.e29
    public final void c(g19 g19Var) throws DeadObjectException {
        try {
            h(g19Var);
        } catch (DeadObjectException e) {
            a(e29.e(e));
            throw e;
        } catch (RemoteException e2) {
            a(e29.e(e2));
        } catch (RuntimeException e3) {
            this.b.trySetException(e3);
        }
    }

    @Override // defpackage.k19
    public final boolean f(g19 g19Var) {
        if (g19Var.f.get(null) == null) {
            return false;
        }
        e6.d();
        return false;
    }

    @Override // defpackage.k19
    public final y53[] g(g19 g19Var) {
        if (g19Var.f.get(null) == null) {
            return null;
        }
        e6.d();
        return null;
    }

    public final void h(g19 g19Var) {
        if (g19Var.f.remove(null) == null) {
            this.b.trySetResult(Boolean.FALSE);
        } else {
            e6.d();
        }
    }

    @Override // defpackage.e29
    public final /* bridge */ /* synthetic */ void d(w00 w00Var, boolean z) {
    }
}
