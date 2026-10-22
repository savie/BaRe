package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class hq4 extends y23 {
    public final /* synthetic */ kq4 e;

    public hq4(kq4 kq4Var) {
        this.e = kq4Var;
    }

    public final int f(int i) {
        ye6 ye6Var = this.e.n;
        short[] sArr = (short[]) this.a;
        if (ye6Var.R(0, sArr) == 0) {
            return ye6Var.S(((short[][]) this.b)[i]) + 2;
        }
        return ye6Var.R(1, sArr) == 0 ? ye6Var.S(((short[][]) this.c)[i]) + 10 : ye6Var.S((short[]) this.d) + 18;
    }
}
