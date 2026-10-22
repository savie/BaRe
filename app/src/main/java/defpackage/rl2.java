package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class rl2 extends ni2 {
    public int m;

    public rl2(pr8 pr8Var) {
        super(pr8Var);
        if (pr8Var instanceof d64) {
            this.e = 2;
        } else {
            this.e = 3;
        }
    }

    @Override // defpackage.ni2
    public final void d(int i) {
        if (this.j) {
            return;
        }
        this.j = true;
        this.g = i;
        for (ki2 ki2Var : this.k) {
            ki2Var.a(ki2Var);
        }
    }
}
