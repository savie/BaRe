package defpackage;

import java.util.Collections;
import java.util.concurrent.Callable;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class yu7 implements Callable {
    public final /* synthetic */ hx7 a;
    public final /* synthetic */ bv7 b;

    public yu7(bv7 bv7Var, hx7 hx7Var) {
        this.b = bv7Var;
        this.a = hx7Var;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        hx7 hx7Var = this.a;
        bv7 bv7Var = this.b;
        qc6 qc6Var = (qc6) bv7Var.c.get(hx7Var);
        if (qc6Var == null) {
            return Collections.EMPTY_LIST;
        }
        bv7Var.g.c();
        return bv7.b(bv7Var, qc6Var, new sy4(new eu5(2, qc6Var.b, true), gy5.d));
    }
}
