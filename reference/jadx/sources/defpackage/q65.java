package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class q65 extends gc8 {
    public final gc8 G;
    public final gc8 H;

    public q65(Class cls, jc8 jc8Var, gc8 gc8Var, gc8[] gc8VarArr, gc8 gc8Var2, gc8 gc8Var3, Object obj, Object obj2, boolean z) {
        super(cls, jc8Var, gc8Var, gc8VarArr, gc8Var3.hashCode() + (gc8Var2.hashCode() * 31), obj, obj2, z);
        this.G = gc8Var2;
        this.H = gc8Var3;
    }

    @Override // defpackage.gc8
    public final gc8 B0(Class cls, jc8 jc8Var, gc8 gc8Var, gc8[] gc8VarArr) {
        return new q65(cls, jc8Var, gc8Var, gc8VarArr, this.G, this.H, this.n, this.p, this.q);
    }

    @Override // defpackage.gc8
    public final gc8 D0(gc8 gc8Var) {
        if (this.H == gc8Var) {
            return this;
        }
        return new q65(this.f, this.x, this.r, this.t, this.G, gc8Var, this.n, this.p, this.q);
    }

    @Override // defpackage.gc8
    public final gc8 E0(sc8 sc8Var) {
        return new q65(this.f, this.x, this.r, this.t, this.G, this.H.H0(sc8Var), this.n, this.p, this.q);
    }

    @Override // defpackage.gc8
    public final gc8 F0(gc8 gc8Var) {
        gc8 gc8Var2;
        gc8 gc8VarF0;
        gc8 gc8Var3;
        gc8 gc8VarF1;
        q65 q65Var;
        gc8 gc8VarF2 = super.F0(gc8Var);
        gc8 gc8VarR0 = gc8Var.r0();
        boolean z = gc8VarF2 instanceof q65;
        gc8 q65Var2 = gc8VarF2;
        q65Var2 = gc8VarF2;
        if (z && gc8VarR0 != null && (gc8VarF1 = (gc8Var3 = this.G).F0(gc8VarR0)) != gc8Var3) {
            q65Var = (q65) gc8VarF2;
            if (gc8VarF1 != q65Var.G) {
                q65Var2 = gc8VarF2;
                q65Var2 = q65Var;
                q65Var2 = new q65(q65Var.f, q65Var.x, q65Var.r, q65Var.t, gc8VarF1, q65Var.H, q65Var.n, q65Var.p, q65Var.q);
            }
        }
        q65Var2 = gc8VarF2;
        q65Var2 = q65Var;
        q65Var2 = gc8VarF2;
        gc8 gc8VarO0 = gc8Var.o0();
        return (gc8VarO0 == null || (gc8VarF0 = (gc8Var2 = this.H).F0(gc8VarO0)) == gc8Var2) ? q65Var2 : q65Var2.D0(gc8VarF0);
    }

    @Override // defpackage.gc8
    public final gc8 G0() {
        if (this.q) {
            return this;
        }
        return new q65(this.f, this.x, this.r, this.t, this.G.G0(), this.H.G0(), this.n, this.p, true);
    }

    @Override // defpackage.gc8
    public final gc8 H0(Object obj) {
        return new q65(this.f, this.x, this.r, this.t, this.G, this.H, this.n, obj, this.q);
    }

    @Override // defpackage.gc8
    public final gc8 I0(Object obj) {
        return new q65(this.f, this.x, this.r, this.t, this.G, this.H, obj, this.p, this.q);
    }

    @Override // defpackage.gc8
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || obj.getClass() != q65.class) {
            return false;
        }
        q65 q65Var = (q65) obj;
        return this.f == q65Var.f && this.G.equals(q65Var.G) && this.H.equals(q65Var.H);
    }

    @Override // defpackage.gc8
    public final String l0() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f.getName());
        gc8 gc8Var = this.G;
        if (gc8Var != null && k0(2)) {
            sb.append('<');
            sb.append(gc8Var.C0());
            sb.append(',');
            sb.append(this.H.C0());
            sb.append('>');
        }
        return sb.toString();
    }

    @Override // defpackage.gc8
    public final gc8 o0() {
        return this.H;
    }

    @Override // defpackage.gc8
    public final StringBuilder p0(StringBuilder sb) {
        gc8.j0(this.f, sb, true);
        return sb;
    }

    @Override // defpackage.gc8
    public final StringBuilder q0(StringBuilder sb) {
        gc8.j0(this.f, sb, false);
        sb.append('<');
        this.G.q0(sb);
        this.H.q0(sb);
        sb.append(">;");
        return sb;
    }

    @Override // defpackage.gc8
    public final gc8 r0() {
        return this.G;
    }

    public final String toString() {
        return "[map type; class " + this.f.getName() + ", " + this.G + " -> " + this.H + "]";
    }

    @Override // defpackage.gc8
    public final boolean v0() {
        return super.v0() || this.H.v0() || this.G.v0();
    }

    @Override // defpackage.gc8
    public final boolean x0() {
        return true;
    }
}
