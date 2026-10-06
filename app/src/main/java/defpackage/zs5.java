package defpackage;

import android.window.OnBackInvokedDispatcher;
import com.nimbusds.jose.crypto.PasswordBasedDecrypter;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class zs5 {
    public final Runnable a;
    public final gv7 b = new gv7(new us5(this, 0));

    public zs5(Runnable runnable) {
        this.a = runnable;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v1, types: [vs5] */
    public final void a(fu4 fu4Var, ss5 ss5Var) {
        fu4Var.getClass();
        ss5Var.getClass();
        final hu4 lifecycle = fu4Var.getLifecycle();
        if (lifecycle.d == st4.a) {
            return;
        }
        rs5 rs5VarCreateNavigationEventHandler$activity = ss5Var.createNavigationEventHandler$activity(new ts5(fu4Var, ss5Var));
        rs5VarCreateNavigationEventHandler$activity.b(false);
        f41.a(b().c, rs5VarCreateNavigationEventHandler$activity);
        final ys5 ys5Var = new ys5(rs5VarCreateNavigationEventHandler$activity, this, lifecycle);
        lifecycle.a(ys5Var);
        ss5Var.addCloseable$activity(new AutoCloseable() { // from class: vs5
            @Override // java.lang.AutoCloseable
            public final void close() {
                lifecycle.f(ys5Var);
            }
        });
    }

    public final ws5 b() {
        return (ws5) this.b.getValue();
    }

    public final void c(OnBackInvokedDispatcher onBackInvokedDispatcher) {
        b().c.c(new ms5(onBackInvokedDispatcher, 0), 1);
        b().c.c(new qs5(onBackInvokedDispatcher, PasswordBasedDecrypter.MAX_ALLOWED_ITERATION_COUNT), 0);
    }
}
