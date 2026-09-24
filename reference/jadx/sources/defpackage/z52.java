package defpackage;

import java.util.TimerTask;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class z52 extends TimerTask {
    public final /* synthetic */ a62 a;

    public z52(a62 a62Var) {
        this.a = a62Var;
    }

    @Override // java.util.TimerTask, java.lang.Runnable
    public final void run() {
        a62 a62Var = this.a;
        if (a62Var.d.isRunning()) {
            no2.h(a62Var, Long.valueOf(a62Var.b.A()));
        }
    }
}
