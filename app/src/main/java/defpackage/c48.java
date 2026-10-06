package defpackage;

import java.util.TimeZone;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class c48 extends h58 {
    @Override // defpackage.h58, defpackage.em4
    public final void e(Object obj, fk4 fk4Var, c87 c87Var) {
        fk4Var.b0(((TimeZone) obj).getID());
    }

    @Override // defpackage.h58, defpackage.em4
    public final void f(Object obj, fk4 fk4Var, c87 c87Var, rc8 rc8Var) {
        TimeZone timeZone = (TimeZone) obj;
        nw8 nw8VarD = rc8Var.d(timeZone, mm4.VALUE_STRING);
        nw8VarD.b = TimeZone.class;
        nw8 nw8VarE = rc8Var.e(fk4Var, nw8VarD);
        fk4Var.b0(timeZone.getID());
        rc8Var.f(fk4Var, nw8VarE);
    }
}
