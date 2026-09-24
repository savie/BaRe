package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class j79 implements Cloneable {
    public final k79 a;
    public k79 b;

    public j79(k79 k79Var) {
        this.a = k79Var;
        if (k79Var.s()) {
            c6.f("Default instance must be immutable.");
            throw null;
        }
        this.b = k79Var.p();
    }

    public static void a(Object obj, Object obj2) {
        c89 c89Var = c89.c;
        c89Var.getClass();
        c89Var.a(obj.getClass()).i(obj, obj2);
    }

    public final k79 b() {
        boolean zS = this.b.s();
        k79 k79Var = this.b;
        if (zS) {
            k79Var.q();
            k79Var = this.b;
        }
        k79Var.getClass();
        if (k79.n(k79Var, true)) {
            return k79Var;
        }
        throw new k89();
    }

    public final void c() {
        if (this.b.s()) {
            return;
        }
        d();
    }

    public final Object clone() {
        j79 j79Var = (j79) this.a.d(5);
        boolean zS = this.b.s();
        k79 k79Var = this.b;
        if (zS) {
            k79Var.q();
            k79Var = this.b;
        }
        j79Var.b = k79Var;
        return j79Var;
    }

    public final void d() {
        k79 k79VarP = this.a.p();
        a(k79VarP, this.b);
        this.b = k79VarP;
    }
}
