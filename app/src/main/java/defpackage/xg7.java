package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class xg7 extends ix7 {
    @Override // defpackage.ix7
    public final void a(bs2 bs2Var, yc9 yc9Var, q64 q64Var) {
        if (q64Var.c()) {
            ix7.c(bs2Var, yc9Var, q64Var.b());
        }
        Object objD = d((j75) bs2Var.b, (di4) bs2Var.c, q64Var);
        if (objD != null) {
            wj7.c((wj7) bs2Var.d, objD, q64Var.b, q64Var.d);
        }
    }

    public abstract Object d(j75 j75Var, di4 di4Var, q64 q64Var);
}
