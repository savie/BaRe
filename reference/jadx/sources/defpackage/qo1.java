package defpackage;

import android.os.Process;
import android.os.StrictMode;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class qo1 implements Runnable {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;

    public /* synthetic */ qo1(int i, Object obj, Object obj2) {
        this.a = i;
        this.b = obj;
        this.c = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ig2 ig2Var;
        switch (this.a) {
            case 0:
                lu5 lu5Var = (lu5) this.b;
                ga6 ga6Var = (ga6) this.c;
                if (lu5Var.b != lu5.d) {
                    l0.e("provide() can be called only once.");
                    return;
                }
                synchronized (lu5Var) {
                    ig2Var = lu5Var.a;
                    lu5Var.a = null;
                    lu5Var.b = ga6Var;
                    break;
                }
                ig2Var.c(ga6Var);
                return;
            case 1:
                ((t22) this.b).onResult((k12) this.c);
                return;
            default:
                l72 l72Var = (l72) this.b;
                Runnable runnable = (Runnable) this.c;
                Process.setThreadPriority(l72Var.c);
                StrictMode.ThreadPolicy threadPolicy = l72Var.d;
                if (threadPolicy != null) {
                    StrictMode.setThreadPolicy(threadPolicy);
                }
                runnable.run();
                return;
        }
    }
}
