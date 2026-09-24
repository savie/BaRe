package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ke3 extends rg2 {
    public final y74[] f;

    /* JADX WARN: Multi-variable type inference failed */
    public ke3(x74 x74Var) {
        super(x74Var);
        this.f = ((yr7) ((ol1) x74Var).b).a.b;
    }

    @Override // defpackage.x74
    public final void a(rd5 rd5Var, Object obj, Iterable iterable) {
        y74[] y74VarArr = this.f;
        if (y74VarArr != null) {
            for (y74 y74Var : y74VarArr) {
                yr7 yr7Var = (yr7) this.b;
                ((ys2) y74Var).getClass();
                if (!ys2.a(yr7Var.a.c, new fl7(obj), yr7Var, obj)) {
                    return;
                }
            }
        }
        this.e.a(rd5Var, obj, iterable);
    }
}
