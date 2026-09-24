package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class ri9 implements Cloneable {
    public final xi9 a;
    public xi9 b;

    public ri9(xi9 xi9Var) {
        this.a = xi9Var;
        if (xi9Var.h()) {
            c6.f("Default instance must be immutable.");
            throw null;
        }
        this.b = xi9Var.n();
    }

    public final xi9 a() {
        boolean zH = this.b.h();
        xi9 xi9Var = this.b;
        if (zH) {
            xi9Var.getClass();
            bm9.c.a(xi9Var.getClass()).zzf(xi9Var);
            xi9Var.e();
            xi9Var = this.b;
        }
        xi9Var.getClass();
        if (xi9.i(xi9Var, true)) {
            return xi9Var;
        }
        throw new jn9();
    }

    public final void b() {
        if (this.b.h()) {
            return;
        }
        xi9 xi9VarN = this.a.n();
        bm9.c.a(xi9VarN.getClass()).zzg(xi9VarN, this.b);
        this.b = xi9VarN;
    }

    public final Object clone() {
        ri9 ri9Var = (ri9) this.a.j(5);
        boolean zH = this.b.h();
        xi9 xi9Var = this.b;
        if (zH) {
            xi9Var.getClass();
            bm9.c.a(xi9Var.getClass()).zzf(xi9Var);
            xi9Var.e();
            xi9Var = this.b;
        }
        ri9Var.b = xi9Var;
        return ri9Var;
    }
}
