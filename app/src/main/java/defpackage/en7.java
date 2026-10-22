package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class en7 extends tn7 {
    @Override // defpackage.em4
    public final boolean c(c87 c87Var, Object obj) {
        return ((char[]) obj).length == 0;
    }

    @Override // defpackage.em4
    public final void e(Object obj, fk4 fk4Var, c87 c87Var) {
        char[] cArr = (char[]) obj;
        boolean zL = c87Var.a.l(x77.WRITE_CHAR_ARRAYS_AS_JSON_ARRAYS);
        if (!zL) {
            fk4Var.c0(cArr, 0, cArr.length);
            return;
        }
        int length = cArr.length;
        fk4Var.U(cArr);
        int length2 = cArr.length;
        for (int i = 0; i < length2; i++) {
            fk4Var.c0(cArr, i, 1);
        }
        fk4Var.n();
    }

    @Override // defpackage.em4
    public final void f(Object obj, fk4 fk4Var, c87 c87Var, rc8 rc8Var) {
        nw8 nw8VarE;
        char[] cArr = (char[]) obj;
        boolean zL = c87Var.a.l(x77.WRITE_CHAR_ARRAYS_AS_JSON_ARRAYS);
        if (zL) {
            nw8VarE = rc8Var.e(fk4Var, rc8Var.d(cArr, mm4.START_ARRAY));
            int length = cArr.length;
            for (int i = 0; i < length; i++) {
                fk4Var.c0(cArr, i, 1);
            }
        } else {
            nw8VarE = rc8Var.e(fk4Var, rc8Var.d(cArr, mm4.VALUE_STRING));
            fk4Var.c0(cArr, 0, cArr.length);
        }
        rc8Var.f(fk4Var, nw8VarE);
    }
}
