package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class on5 {
    public on5 a = null;
    public on5 b = null;
    public on5 c = null;
    public on5 d = null;
    public on5 e = null;

    public abstract void a(bs2 bs2Var);

    public final void b(on5 on5Var) {
        on5Var.f();
        on5Var.d(this);
        on5 on5Var2 = this.c;
        if (on5Var2 == null) {
            this.b = on5Var;
            this.c = on5Var;
        } else {
            on5Var2.e = on5Var;
            on5Var.d = on5Var2;
            this.c = on5Var;
        }
    }

    public on5 c() {
        return this.a;
    }

    public void d(on5 on5Var) {
        this.a = on5Var;
    }

    public String e() {
        return "";
    }

    public final void f() {
        on5 on5Var = this.d;
        if (on5Var != null) {
            on5Var.e = this.e;
        } else {
            on5 on5Var2 = this.a;
            if (on5Var2 != null) {
                on5Var2.b = this.e;
            }
        }
        on5 on5Var3 = this.e;
        if (on5Var3 != null) {
            on5Var3.d = on5Var;
        } else {
            on5 on5Var4 = this.a;
            if (on5Var4 != null) {
                on5Var4.c = on5Var;
            }
        }
        this.a = null;
        this.e = null;
        this.d = null;
    }

    public final String toString() {
        return getClass().getSimpleName() + "{" + e() + "}";
    }
}
