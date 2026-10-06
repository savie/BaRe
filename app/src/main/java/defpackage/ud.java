package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class ud extends od {
    public final s79[] O;

    public ud(qc8 qc8Var, s79 s79Var, s79[] s79VarArr) {
        super(qc8Var, s79Var);
        this.O = s79VarArr;
    }

    public final td w0(int i) {
        gc8 gc8VarY0 = y0(i);
        s79[] s79VarArr = this.O;
        return new td(this, gc8VarY0, this.M, (s79VarArr == null || i < 0 || i >= s79VarArr.length) ? null : s79VarArr[i], i);
    }

    public abstract int x0();

    public abstract gc8 y0(int i);

    public abstract Class z0(int i);
}
