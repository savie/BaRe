package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class r63 extends mm2 {
    public final su6 e;

    public r63(nr6 nr6Var, wm2 wm2Var, fi7 fi7Var) {
        super(nr6Var, wm2Var, fi7Var);
        String strB = fi7Var.b();
        su6 su6Var = new su6();
        su6Var.a = wm2Var;
        su6Var.b = nr6Var;
        su6Var.c = strB;
        this.e = su6Var;
    }

    public final b93 t0() {
        su6 su6Var = this.e;
        su6Var.getClass();
        int i = su6Var.a.n;
        b93 b93Var = new b93();
        b93Var.b = false;
        b93Var.a = su6Var;
        a93 a93Var = new a93();
        wn6 wn6Var = new wn6();
        wn6Var.a = new byte[i];
        a93Var.b = wn6Var;
        a93Var.a = 0L;
        b93Var.c = a93Var;
        return b93Var;
    }

    public final String toString() {
        return "File{fileId=" + this.c + ", fileName='" + this.d.b() + "'}";
    }
}
