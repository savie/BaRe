package defpackage;

import java.util.concurrent.Callable;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class nm2 implements Callable {
    public final /* synthetic */ rm2 a;

    public nm2(rm2 rm2Var) {
        this.a = rm2Var;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        synchronized (this.a) {
            try {
                rm2 rm2Var = this.a;
                if (rm2Var.p == null) {
                    return null;
                }
                rm2Var.D();
                if (this.a.n()) {
                    this.a.z();
                    this.a.r = 0;
                }
                return null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
