package defpackage;

import android.util.Log;
import java.util.concurrent.Callable;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class eo5 {
    public boolean a = false;

    public final Object a(Callable callable) {
        zm5.r("runInTransaction called when an existing transaction is already in progress.", !this.a);
        this.a = true;
        try {
            Object objCall = callable.call();
            this.a = false;
            return objCall;
        } catch (Throwable th) {
            try {
                Log.e("NoopPersistenceManager", "Caught Throwable.", th);
                throw new RuntimeException(th);
            } catch (Throwable th2) {
                this.a = false;
                throw th2;
            }
        }
    }

    public final gz0 b(qc6 qc6Var) {
        return new gz0(new sb4(qv2.e, qc6Var.b.e), false, false);
    }

    public final void c() {
        zm5.r("Transaction expected to already be in progress.", this.a);
    }
}
