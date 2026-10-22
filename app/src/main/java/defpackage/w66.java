package defpackage;

import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class w66 implements Runnable {
    public final int a;
    public final u66 b;
    public final /* synthetic */ b76 c;

    public w66(b76 b76Var, u66 u66Var, int i) {
        this.c = b76Var;
        this.a = i;
        this.b = u66Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        b76 b76Var = this.c;
        AtomicLong atomicLong = b76Var.d;
        atomicLong.lazySet(atomicLong.get() + ((long) this.a));
        uv4 uv4Var = b76Var.c;
        u66 u66Var = this.b;
        if (uv4Var.d(u66Var) && u66Var != uv4Var.b) {
            u66 u66Var2 = u66Var.b;
            u66 u66Var3 = u66Var.c;
            if (u66Var2 == null) {
                uv4Var.a = u66Var3;
            } else {
                u66Var2.c = u66Var3;
                u66Var.b = null;
            }
            if (u66Var3 == null) {
                uv4Var.b = u66Var2;
            } else {
                u66Var3.b = u66Var2;
                u66Var.c = null;
            }
            u66 u66Var4 = uv4Var.b;
            uv4Var.b = u66Var;
            if (u66Var4 == null) {
                uv4Var.a = u66Var;
            } else {
                u66Var4.c = u66Var;
                u66Var.b = u66Var4;
            }
        }
        b76Var.e();
    }
}
