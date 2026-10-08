package defpackage;

import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class h35 extends FutureTask {
    public final /* synthetic */ i35 a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h35(i35 i35Var, Callable callable) {
        super(callable);
        this.a = i35Var;
    }

    @Override // java.util.concurrent.FutureTask
    public final void done() {
        i35 i35Var = this.a;
        if (isCancelled()) {
            return;
        }
        try {
            i35Var.c((g35) get());
        } catch (InterruptedException | ExecutionException e) {
            i35Var.c(new g35(e));
        }
    }
}
