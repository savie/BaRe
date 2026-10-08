package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class h58 extends tn7 {
    public final /* synthetic */ int c = 2;

    public /* synthetic */ h58(int i, Class cls) {
        super(i, cls);
    }

    @Override // defpackage.em4
    public boolean c(c87 c87Var, Object obj) {
        switch (this.c) {
            case 2:
                return o(obj).isEmpty();
            default:
                return super.c(c87Var, obj);
        }
    }

    @Override // defpackage.em4
    public void e(Object obj, fk4 fk4Var, c87 c87Var) {
        fk4Var.b0(o(obj));
    }

    @Override // defpackage.em4
    public void f(Object obj, fk4 fk4Var, c87 c87Var, rc8 rc8Var) throws ag4 {
        switch (this.c) {
            case 1:
                nw8 nw8VarE = rc8Var.e(fk4Var, rc8Var.d(obj, mm4.VALUE_STRING));
                e(obj, fk4Var, c87Var);
                rc8Var.f(fk4Var, nw8VarE);
                break;
            case 2:
                nw8 nw8VarE2 = rc8Var.e(fk4Var, rc8Var.d(obj, mm4.VALUE_STRING));
                e(obj, fk4Var, c87Var);
                rc8Var.f(fk4Var, nw8VarE2);
                break;
            default:
                super.f(obj, fk4Var, c87Var, rc8Var);
                break;
        }
    }

    public abstract String o(Object obj);

    public /* synthetic */ h58(Class cls) {
        super(cls);
    }
}
