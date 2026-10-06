package defpackage;

import java.nio.file.Path;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class vm5 extends h58 {
    @Override // defpackage.h58, defpackage.em4
    public final void e(Object obj, fk4 fk4Var, c87 c87Var) {
        fk4Var.b0(((Path) obj).toUri().toString());
    }

    @Override // defpackage.h58, defpackage.em4
    public final void f(Object obj, fk4 fk4Var, c87 c87Var, rc8 rc8Var) {
        Path path = (Path) obj;
        nw8 nw8VarD = rc8Var.d(path, mm4.VALUE_STRING);
        nw8VarD.b = Path.class;
        nw8 nw8VarE = rc8Var.e(fk4Var, nw8VarD);
        fk4Var.b0(path.toUri().toString());
        rc8Var.f(fk4Var, nw8VarE);
    }
}
