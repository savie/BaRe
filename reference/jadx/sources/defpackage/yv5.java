package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class yv5 {
    public final Object a;
    public final yv5 b;
    public final z86 c;
    public final boolean d;
    public final boolean e;
    public final boolean f;

    public yv5(Object obj, yv5 yv5Var, z86 z86Var, boolean z, boolean z2, boolean z3) {
        this.a = obj;
        this.b = yv5Var;
        z86 z86Var2 = (z86Var == null || z86Var.c()) ? null : z86Var;
        this.c = z86Var2;
        if (z) {
            if (z86Var2 == null) {
                c6.f("Cannot pass true for 'explName' if name is null/empty");
                throw null;
            }
            if (z86Var.a.isEmpty()) {
                z = false;
            }
        }
        this.d = z;
        this.e = z2;
        this.f = z3;
    }

    public final yv5 a(yv5 yv5Var) {
        yv5 yv5Var2 = this.b;
        return yv5Var2 == null ? c(yv5Var) : c(yv5Var2.a(yv5Var));
    }

    public final yv5 b() {
        yv5 yv5Var = this.b;
        if (yv5Var == null) {
            return this;
        }
        yv5 yv5VarB = yv5Var.b();
        if (this.c != null) {
            return yv5VarB.c == null ? c(null) : c(yv5VarB);
        }
        if (yv5VarB.c == null) {
            boolean z = yv5VarB.e;
            boolean z2 = this.e;
            if (z2 == z) {
                return c(yv5VarB);
            }
            if (z2) {
                return c(null);
            }
        }
        return yv5VarB;
    }

    public final yv5 c(yv5 yv5Var) {
        if (yv5Var == this.b) {
            return this;
        }
        return new yv5(this.a, yv5Var, this.c, this.d, this.e, this.f);
    }

    public final yv5 d() {
        yv5 yv5VarD;
        boolean z = this.f;
        yv5 yv5Var = this.b;
        if (!z) {
            return (yv5Var == null || (yv5VarD = yv5Var.d()) == yv5Var) ? this : c(yv5VarD);
        }
        if (yv5Var == null) {
            return null;
        }
        return yv5Var.d();
    }

    public final yv5 e() {
        if (this.b == null) {
            return this;
        }
        return new yv5(this.a, null, this.c, this.d, this.e, this.f);
    }

    public final yv5 f() {
        yv5 yv5Var = this.b;
        yv5 yv5VarF = yv5Var == null ? null : yv5Var.f();
        return this.e ? c(yv5VarF) : yv5VarF;
    }

    public final String toString() {
        String str = this.a.toString() + "[visible=" + this.e + ",ignore=" + this.f + ",explicitName=" + this.d + "]";
        yv5 yv5Var = this.b;
        if (yv5Var == null) {
            return str;
        }
        StringBuilder sbN = fz5.n(str, ", ");
        sbN.append(yv5Var.toString());
        return sbN.toString();
    }
}
