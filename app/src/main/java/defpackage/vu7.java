package defpackage;

import java.util.concurrent.Callable;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class vu7 implements Callable {
    public final /* synthetic */ gy5 a;
    public final /* synthetic */ qn5 b;
    public final /* synthetic */ bv7 c;

    public vu7(bv7 bv7Var, gy5 gy5Var, qn5 qn5Var) {
        this.c = bv7Var;
        this.a = gy5Var;
        this.b = qn5Var;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        bv7 bv7Var = this.c;
        eo5 eo5Var = bv7Var.g;
        gy5 gy5Var = this.a;
        qc6.a(gy5Var);
        eo5Var.c();
        return bv7.a(bv7Var, new jv5(eu5.e, gy5Var, this.b));
    }
}
