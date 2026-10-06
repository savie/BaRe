package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class if6 extends tn7 {
    @Override // defpackage.em4
    public final void e(Object obj, fk4 fk4Var, c87 c87Var) {
        String string = obj.toString();
        cv3 cv3Var = (cv3) fk4Var;
        cv3Var.l0("write raw value");
        cv3Var.O(string);
    }

    @Override // defpackage.em4
    public final void f(Object obj, fk4 fk4Var, c87 c87Var, rc8 rc8Var) {
        nw8 nw8VarE = rc8Var.e(fk4Var, rc8Var.d(obj, mm4.VALUE_EMBEDDED_OBJECT));
        e(obj, fk4Var, c87Var);
        rc8Var.f(fk4Var, nw8VarE);
    }
}
