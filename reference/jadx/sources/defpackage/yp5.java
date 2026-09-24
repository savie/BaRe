package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class yp5 extends xp5 {
    @Override // defpackage.h58, defpackage.em4
    public final void e(Object obj, fk4 fk4Var, c87 c87Var) {
        fk4Var.z(((Double) obj).doubleValue());
    }

    @Override // defpackage.h58, defpackage.em4
    public final void f(Object obj, fk4 fk4Var, c87 c87Var, rc8 rc8Var) {
        Double d = (Double) obj;
        double dDoubleValue = d.doubleValue();
        String str = up5.a;
        if (Double.isFinite(dDoubleValue)) {
            fk4Var.z(d.doubleValue());
            return;
        }
        nw8 nw8VarE = rc8Var.e(fk4Var, rc8Var.d(obj, mm4.VALUE_NUMBER_FLOAT));
        fk4Var.z(d.doubleValue());
        rc8Var.f(fk4Var, nw8VarE);
    }
}
