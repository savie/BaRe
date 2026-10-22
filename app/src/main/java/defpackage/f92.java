package defpackage;

/* JADX INFO: loaded from: classes.dex */
public abstract class f92 {
    public static final h92 a;
    public static final i92 b;

    static {
        h92 h92Var = new h92();
        h92Var.c = -1;
        a = h92Var;
        i92 i92Var = new i92();
        i92Var.d = -1;
        b = i92Var;
    }

    public static h92 a(c0 c0Var) {
        if (c0Var.b < 1) {
            return a;
        }
        h92 h92Var = new h92(c0Var);
        h92Var.c = -1;
        return h92Var;
    }

    public static i92 b(c0 c0Var) {
        if (c0Var.b < 1) {
            return b;
        }
        i92 i92Var = new i92(c0Var);
        i92Var.d = -1;
        return i92Var;
    }
}
