package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class hr5 extends xk1 {
    @Override // defpackage.xk1
    public final gd4 g(mc4 mc4Var) {
        ai5 ai5Var = (ai5) this.a;
        wi8 wi8VarA = a(mc4Var);
        Class clsB = b();
        if (wi8VarA != null) {
            return new x00(ai5Var, wi8VarA);
        }
        if (y23.c(clsB)) {
            return ai5Var.k(clsB);
        }
        throw new w70("Cannot instantiate %s for %s", clsB, (vb8) this.d);
    }
}
