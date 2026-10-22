package defpackage;

import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class u09 extends s09 {
    public final /* synthetic */ TaskCompletionSource k;
    public final /* synthetic */ s09 n;
    public final /* synthetic */ zz8 p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public u09(zz8 zz8Var, TaskCompletionSource taskCompletionSource, TaskCompletionSource taskCompletionSource2, s09 s09Var) {
        super(taskCompletionSource);
        this.p = zz8Var;
        this.k = taskCompletionSource2;
        this.n = s09Var;
    }

    @Override // defpackage.s09
    public final void b() {
        synchronized (this.p.f) {
            try {
                zz8 zz8Var = this.p;
                TaskCompletionSource taskCompletionSource = this.k;
                zz8Var.e.add(taskCompletionSource);
                taskCompletionSource.getTask().addOnCompleteListener(new h80((Object) zz8Var, (Object) taskCompletionSource, 16, false));
                if (this.p.l.getAndIncrement() > 0) {
                    this.p.b.b("Already connected to the service.", new Object[0]);
                }
                zz8.b(this.p, this.n);
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
