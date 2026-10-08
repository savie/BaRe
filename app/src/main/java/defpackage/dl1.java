package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class dl1 extends gc8 {
    public final gc8 G;

    public dl1(Class cls, jc8 jc8Var, gc8 gc8Var, gc8[] gc8VarArr, gc8 gc8Var2, Object obj, Object obj2, boolean z) {
        super(cls, jc8Var, gc8Var, gc8VarArr, gc8Var2.hashCode(), obj, obj2, z);
        this.G = gc8Var2;
    }

    @Override // defpackage.gc8
    public final gc8 B0(Class cls, jc8 jc8Var, gc8 gc8Var, gc8[] gc8VarArr) {
        return new dl1(cls, jc8Var, gc8Var, gc8VarArr, this.G, this.n, this.p, this.q);
    }

    @Override // defpackage.gc8
    public final gc8 D0(gc8 gc8Var) {
        if (this.G == gc8Var) {
            return this;
        }
        return new dl1(this.f, this.x, this.r, this.t, gc8Var, this.n, this.p, this.q);
    }

    @Override // defpackage.gc8
    public final gc8 E0(sc8 sc8Var) {
        return new dl1(this.f, this.x, this.r, this.t, this.G.H0(sc8Var), this.n, this.p, this.q);
    }

    @Override // defpackage.gc8
    public final gc8 F0(gc8 gc8Var) {
        gc8 gc8Var2;
        gc8 gc8VarF0;
        gc8 gc8VarF1 = super.F0(gc8Var);
        gc8 gc8VarO0 = gc8Var.o0();
        return (gc8VarO0 == null || (gc8VarF0 = (gc8Var2 = this.G).F0(gc8VarO0)) == gc8Var2) ? gc8VarF1 : gc8VarF1.D0(gc8VarF0);
    }

    @Override // defpackage.gc8
    public final gc8 G0() {
        if (this.q) {
            return this;
        }
        return new dl1(this.f, this.x, this.r, this.t, this.G.G0(), this.n, this.p, true);
    }

    @Override // defpackage.gc8
    public final gc8 H0(Object obj) {
        return new dl1(this.f, this.x, this.r, this.t, this.G, this.n, obj, this.q);
    }

    @Override // defpackage.gc8
    public final gc8 I0(Object obj) {
        return new dl1(this.f, this.x, this.r, this.t, this.G, obj, this.p, this.q);
    }

    @Override // defpackage.gc8
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || obj.getClass() != dl1.class) {
            return false;
        }
        dl1 dl1Var = (dl1) obj;
        return this.f == dl1Var.f && this.G.equals(dl1Var.G);
    }

    @Override // defpackage.gc8
    public final String l0() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f.getName());
        gc8 gc8Var = this.G;
        if (gc8Var != null && k0(1)) {
            sb.append('<');
            sb.append(gc8Var.l0());
            sb.append('>');
        }
        return sb.toString();
    }

    @Override // defpackage.gc8
    public final gc8 o0() {
        return this.G;
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
        sb.append(">;");
        return sb;
    }

    public final String toString() {
        return "[collection type; class " + this.f.getName() + ", contains " + this.G + "]";
    }

    @Override // defpackage.gc8
    public final boolean v0() {
        return super.v0() || this.G.v0();
    }

    @Override // defpackage.gc8
    public final boolean x0() {
        return true;
    }
}
