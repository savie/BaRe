package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class rl5 {
    public f41 a;
    public boolean b;

    public final void a() {
        f41 f41Var = this.a;
        if (f41Var == null) {
            l0.e("This input is not added to any dispatcher.");
            return;
        }
        if (!this.b) {
            f41Var.d(this, null);
        }
        sl5 sl5Var = (sl5) f41Var.b;
        mb mbVar = (mb) f41Var.a;
        sl5Var.getClass();
        if (equals(sl5Var.h) && -1 == sl5Var.g) {
            rs5 rs5VarC = sl5Var.f;
            if (rs5VarC == null) {
                rs5VarC = sl5Var.c(-1);
            }
            sl5Var.f = null;
            sl5Var.g = 0;
            sl5Var.h = null;
            if (rs5VarC == null) {
                ((zs5) mbVar.a).a.run();
            } else {
                rs5VarC.f.handleOnBackPressed();
            }
            km7 km7Var = sl5Var.a;
            tl5 tl5Var = tl5.g;
            km7Var.getClass();
            km7Var.e(null, tl5Var);
        }
        this.b = false;
    }

    public void b(boolean z) {
    }
}
