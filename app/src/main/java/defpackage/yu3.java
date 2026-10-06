package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class yu3 implements Cloneable {
    public final av3 a;
    public av3 b;

    public yu3(av3 av3Var) {
        this.a = av3Var;
        if (av3Var.g()) {
            c6.f("Default instance must be immutable.");
            throw null;
        }
        this.b = av3Var.i();
    }

    public final av3 a() {
        av3 av3VarB = b();
        av3VarB.getClass();
        if (av3.f(av3VarB, true)) {
            return av3VarB;
        }
        throw new ae8();
    }

    public final av3 b() {
        boolean zG = this.b.g();
        av3 av3Var = this.b;
        if (!zG) {
            return av3Var;
        }
        av3Var.getClass();
        s96 s96Var = s96.c;
        s96Var.getClass();
        s96Var.a(av3Var.getClass()).c(av3Var);
        av3Var.h();
        return this.b;
    }

    public final void c() {
        if (this.b.g()) {
            return;
        }
        av3 av3VarI = this.a.i();
        av3 av3Var = this.b;
        s96 s96Var = s96.c;
        s96Var.getClass();
        s96Var.a(av3VarI.getClass()).b(av3VarI, av3Var);
        this.b = av3VarI;
    }

    public final Object clone() {
        yu3 yu3Var = (yu3) this.a.c(5);
        yu3Var.b = b();
        return yu3Var;
    }
}
