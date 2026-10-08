package defpackage;

import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class qp5 extends tn7 {
    public static final qp5 d = new qp5();
    public final /* synthetic */ int c = 0;

    public qp5() {
        super(Object.class);
    }

    @Override // defpackage.em4
    public final void e(Object obj, fk4 fk4Var, c87 c87Var) {
        switch (this.c) {
            case 0:
                fk4Var.v();
                break;
            default:
                Map.Entry entry = (Map.Entry) obj;
                fk4Var.Y(entry);
                c87Var.g("key", entry.getKey(), fk4Var);
                c87Var.g("value", entry.getValue(), fk4Var);
                fk4Var.q();
                break;
        }
    }

    @Override // defpackage.em4
    public void f(Object obj, fk4 fk4Var, c87 c87Var, rc8 rc8Var) throws ag4 {
        switch (this.c) {
            case 0:
                fk4Var.v();
                break;
            default:
                super.f(obj, fk4Var, c87Var, rc8Var);
                break;
        }
    }

    public /* synthetic */ qp5(gc8 gc8Var) {
        super(gc8Var);
    }
}
