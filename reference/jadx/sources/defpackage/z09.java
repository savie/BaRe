package defpackage;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BasePendingResult;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.Map;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class z09 {
    public final /* synthetic */ int a = 1;
    public final /* synthetic */ BasePendingResult b;
    public final /* synthetic */ Object c;

    public z09(w00 w00Var, BasePendingResult basePendingResult) {
        this.c = w00Var;
        this.b = basePendingResult;
    }

    public final void a(Status status) {
        fn6 fn6Var;
        switch (this.a) {
            case 0:
                ((Map) ((w00) this.c).b).remove(this.b);
                return;
            default:
                if (!status.n()) {
                    ((TaskCompletionSource) this.c).setException(rs9.f(status));
                    return;
                }
                BasePendingResult basePendingResult = this.b;
                TimeUnit timeUnit = TimeUnit.MILLISECONDS;
                ly8.k("Result has already been consumed.", !basePendingResult.g);
                try {
                    if (!basePendingResult.b.await(0L, timeUnit)) {
                        basePendingResult.c(Status.n);
                    }
                } catch (InterruptedException unused) {
                    basePendingResult.c(Status.f);
                }
                ly8.k("Result is not ready.", basePendingResult.d());
                synchronized (basePendingResult.a) {
                    ly8.k("Result has already been consumed.", !basePendingResult.g);
                    ly8.k("Result is not ready.", basePendingResult.d());
                    fn6Var = basePendingResult.e;
                    basePendingResult.e = null;
                    basePendingResult.g = true;
                    break;
                }
                if (basePendingResult.d.getAndSet(null) != null) {
                    e6.d();
                    return;
                } else {
                    ly8.h(fn6Var);
                    ((TaskCompletionSource) this.c).setResult(null);
                    return;
                }
        }
    }

    public z09(BasePendingResult basePendingResult, TaskCompletionSource taskCompletionSource, b05 b05Var) {
        this.b = basePendingResult;
        this.c = taskCompletionSource;
    }
}
