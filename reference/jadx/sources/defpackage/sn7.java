package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class sn7 extends tn7 {
    public final rx2 c;

    public sn7(Class cls, rx2 rx2Var) {
        super(0, cls);
        this.c = rx2Var;
    }

    @Override // defpackage.em4
    public final void e(Object obj, fk4 fk4Var, c87 c87Var) {
        if (c87Var.a.l(x77.WRITE_ENUMS_USING_TO_STRING)) {
            fk4Var.u(obj.toString());
            return;
        }
        Enum r3 = (Enum) obj;
        if (c87Var.a.l(x77.WRITE_ENUM_KEYS_USING_INDEX)) {
            fk4Var.u(String.valueOf(r3.ordinal()));
        } else {
            fk4Var.r(((z77[]) this.c.b)[r3.ordinal()]);
        }
    }
}
