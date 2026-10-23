package defpackage;

import java.util.concurrent.Semaphore;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ss6 extends tt6 {
    public static final l15 f = o15.b(ss6.class);
    public ro e;

    @Override // defpackage.tt6
    public final void H(st6 st6Var) {
        ro roVar = this.e;
        ((Semaphore) roVar.c).release(((ut6) st6Var.a).d);
        f.o("Server granted us {} credits for {}, now available: {} credits", Integer.valueOf(((ut6) st6Var.a).d), st6Var, Integer.valueOf(((Semaphore) roVar.c).availablePermits()));
        ((ol1) this.b).t(st6Var);
    }
}
