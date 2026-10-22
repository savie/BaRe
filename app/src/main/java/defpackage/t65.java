package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class t65 extends s65 {
    public static final long p;
    public static final long q;
    public final jg7 c;
    public final un7 d;
    public final k55 e;
    public final op6 f;
    public final mp7 k;
    public final cd2 n;

    static {
        long j = 0;
        for (u65 u65Var : u65.values()) {
            if (u65Var.a) {
                j |= u65Var.b;
            }
        }
        p = j;
        q = u65.AUTO_DETECT_FIELDS.b | u65.AUTO_DETECT_GETTERS.b | u65.AUTO_DETECT_IS_GETTERS.b | u65.AUTO_DETECT_SETTERS.b | u65.AUTO_DETECT_CREATORS.b;
    }

    public t65(t65 t65Var, long j) {
        super(t65Var, j);
        this.c = t65Var.c;
        this.d = t65Var.d;
        this.f = t65Var.f;
        this.e = t65Var.e;
        this.k = t65Var.k;
        this.n = t65Var.n;
    }

    @Override // defpackage.h81
    public final Class a(Class cls) {
        this.c.getClass();
        return null;
    }

    @Override // defpackage.s65
    public final cz4 e(Class cls) {
        this.k.getClass();
        return cz4.b;
    }

    @Override // defpackage.s65
    public final bk4 f(Class cls) {
        this.k.getClass();
        return bk4.n;
    }

    public t65(en0 en0Var, un7 un7Var, jg7 jg7Var, op6 op6Var, mp7 mp7Var, cd2 cd2Var) {
        super(en0Var, p);
        this.c = jg7Var;
        this.d = un7Var;
        this.f = op6Var;
        this.e = bv1.n;
        this.k = mp7Var;
        this.n = cd2Var;
    }
}
