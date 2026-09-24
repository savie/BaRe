package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class rc8 {
    public abstract rc8 a(kp0 kp0Var);

    public abstract String b();

    public abstract tm4 c();

    public final nw8 d(Object obj, mm4 mm4Var) {
        nw8 nw8Var = new nw8(obj, mm4Var);
        int iOrdinal = c().ordinal();
        if (iOrdinal == 0) {
            nw8Var.e = 3;
            nw8Var.d = b();
            return nw8Var;
        }
        if (iOrdinal == 1) {
            nw8Var.e = 2;
            return nw8Var;
        }
        if (iOrdinal == 2) {
            nw8Var.e = 1;
            return nw8Var;
        }
        if (iOrdinal == 3) {
            nw8Var.e = 5;
            nw8Var.d = b();
            return nw8Var;
        }
        if (iOrdinal == 4) {
            nw8Var.e = 4;
            nw8Var.d = b();
            return nw8Var;
        }
        int i = yj8.a;
        g84.h("Internal error: this code path should never get executed");
        return null;
    }

    public abstract nw8 e(fk4 fk4Var, nw8 nw8Var);

    public abstract nw8 f(fk4 fk4Var, nw8 nw8Var);
}
