package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ax1 implements p75 {
    /* JADX WARN: Code duplicated, block: B:7:0x0015  */
    @Override // defpackage.p75
    public final void a(bs2 bs2Var, on5 on5Var) {
        boolean z;
        rw5 rw5Var = (rw5) on5Var;
        ws0 ws0Var = (ws0) rw5Var.a;
        if (ws0Var != null) {
            ws0 ws0Var2 = (ws0) ws0Var.a;
            if (ws0Var2 instanceof lw4) {
                z = ((lw4) ws0Var2).f;
            } else {
                z = false;
            }
        } else {
            z = false;
        }
        if (!z) {
            bs2Var.b();
        }
        int iG = bs2Var.g();
        bs2Var.j(rw5Var);
        lg7.f.b((di4) bs2Var.c, Boolean.valueOf(z));
        bs2Var.h(rw5Var, iG);
        if (z) {
            return;
        }
        bs2Var.a(rw5Var);
    }
}
