package defpackage;

import android.os.DeadObjectException;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.api.Status;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class v19 extends e29 {
    public final j39 b;

    public v19(j39 j39Var) {
        super(1);
        this.b = j39Var;
    }

    @Override // defpackage.e29
    public final void a(Status status) {
        try {
            this.b.g(status);
        } catch (IllegalStateException e) {
            Log.w("ApiCallRunner", "Exception reporting failure", e);
        }
    }

    @Override // defpackage.e29
    public final void b(Exception exc) {
        try {
            this.b.g(new Status(10, dj7.k(exc.getClass().getSimpleName(), ": ", exc.getLocalizedMessage()), null, null));
        } catch (IllegalStateException e) {
            Log.w("ApiCallRunner", "Exception reporting failure", e);
        }
    }

    @Override // defpackage.e29
    public final void c(g19 g19Var) throws DeadObjectException {
        try {
            j39 j39Var = this.b;
            ne neVar = g19Var.b;
            j39Var.getClass();
            try {
                j39Var.f(neVar);
            } catch (DeadObjectException e) {
                j39Var.g(new Status(8, e.getLocalizedMessage(), null, null));
                throw e;
            } catch (RemoteException e2) {
                j39Var.g(new Status(8, e2.getLocalizedMessage(), null, null));
            }
        } catch (RuntimeException e3) {
            b(e3);
        }
    }

    @Override // defpackage.e29
    public final void d(w00 w00Var, boolean z) {
        Boolean boolValueOf = Boolean.valueOf(z);
        Map map = (Map) w00Var.b;
        j39 j39Var = this.b;
        map.put(j39Var, boolValueOf);
        j39Var.a(new z09(w00Var, j39Var));
    }
}
