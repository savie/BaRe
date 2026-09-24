package defpackage;

import java.io.Serializable;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class s65 implements h81, Serializable {
    public final long a;
    public final en0 b;

    static {
        qk4 qk4Var = qk4.e;
        bk4 bk4Var = bk4.n;
    }

    public s65(t65 t65Var, long j) {
        this.b = t65Var.b;
        this.a = j;
    }

    public static int b(Class cls) {
        int iB = 0;
        for (Object obj : (Enum[]) cls.getEnumConstants()) {
            rq1 rq1Var = (rq1) obj;
            if (rq1Var.a()) {
                iB |= rq1Var.b();
            }
        }
        return iB;
    }

    public final gc8 c(Class cls) {
        return this.b.a.b(null, cls, lc8.d);
    }

    public final as5 d() {
        return i(u65.USE_ANNOTATIONS) ? this.b.c : go5.a;
    }

    public abstract cz4 e(Class cls);

    public abstract bk4 f(Class cls);

    public final void g() {
        this.b.getClass();
    }

    public abstract boolean h(ad2 ad2Var);

    public final boolean i(u65 u65Var) {
        return (u65Var.b & this.a) != 0;
    }

    public s65(en0 en0Var, long j) {
        this.b = en0Var;
        this.a = j;
    }
}
