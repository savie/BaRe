package defpackage;

import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class mh6 extends yg7 {
    public final gc8 G;
    public final gc8 H;

    public mh6(Class cls, jc8 jc8Var, gc8 gc8Var, gc8[] gc8VarArr, gc8 gc8Var2, gc8 gc8Var3, Object obj, Object obj2, boolean z) {
        super(cls, jc8Var, gc8Var, gc8VarArr, Objects.hashCode(gc8Var2), obj, obj2, z);
        this.G = gc8Var2;
        this.H = gc8Var3 == null ? this : gc8Var3;
    }

    @Override // defpackage.yg7, defpackage.gc8
    public final gc8 B0(Class cls, jc8 jc8Var, gc8 gc8Var, gc8[] gc8VarArr) {
        return new mh6(cls, this.x, gc8Var, gc8VarArr, this.G, this.H, this.n, this.p, this.q);
    }

    @Override // defpackage.ho6
    public final boolean C() {
        return true;
    }

    @Override // defpackage.yg7, defpackage.gc8
    public final gc8 D0(gc8 gc8Var) {
        if (this.G == gc8Var) {
            return this;
        }
        return new mh6(this.f, this.x, this.r, this.t, gc8Var, this.H, this.n, this.p, this.q);
    }

    @Override // defpackage.yg7, defpackage.gc8
    public final gc8 E0(sc8 sc8Var) {
        gc8 gc8Var = this.G;
        if (sc8Var == gc8Var.p) {
            return this;
        }
        return new mh6(this.f, this.x, this.r, this.t, gc8Var.H0(sc8Var), this.H, this.n, this.p, this.q);
    }

    @Override // defpackage.yg7, defpackage.gc8
    public final gc8 H0(Object obj) {
        if (obj == this.p) {
            return this;
        }
        return new mh6(this.f, this.x, this.r, this.t, this.G, this.H, this.n, obj, this.q);
    }

    @Override // defpackage.yg7, defpackage.gc8
    public final gc8 I0(Object obj) {
        if (obj == this.n) {
            return this;
        }
        return new mh6(this.f, this.x, this.r, this.t, this.G, this.H, obj, this.p, this.q);
    }

    @Override // defpackage.yg7
    /* JADX INFO: renamed from: L0 */
    public final yg7 H0(Object obj) {
        if (obj == this.p) {
            return this;
        }
        return new mh6(this.f, this.x, this.r, this.t, this.G, this.H, this.n, obj, this.q);
    }

    @Override // defpackage.yg7
    /* JADX INFO: renamed from: M0 */
    public final yg7 I0(Object obj) {
        if (obj == this.n) {
            return this;
        }
        return new mh6(this.f, this.x, this.r, this.t, this.G, this.H, obj, this.p, this.q);
    }

    @Override // defpackage.yg7
    /* JADX INFO: renamed from: N0, reason: merged with bridge method [inline-methods] */
    public final mh6 G0() {
        if (this.q) {
            return this;
        }
        return new mh6(this.f, this.x, this.r, this.t, this.G.G0(), this.H, this.n, this.p, true);
    }

    @Override // defpackage.yg7, defpackage.gc8
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || obj.getClass() != mh6.class) {
            return false;
        }
        mh6 mh6Var = (mh6) obj;
        if (mh6Var.f != this.f) {
            return false;
        }
        return this.G.equals(mh6Var.G);
    }

    @Override // defpackage.yg7, defpackage.gc8
    public final String l0() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f.getName());
        gc8 gc8Var = this.G;
        if (gc8Var != null && k0(1)) {
            sb.append('<');
            sb.append(gc8Var.C0());
            sb.append('>');
        }
        return sb.toString();
    }

    @Override // defpackage.gc8
    public final gc8 o0() {
        return this.G;
    }

    @Override // defpackage.yg7, defpackage.gc8
    public final StringBuilder p0(StringBuilder sb) {
        gc8.j0(this.f, sb, true);
        return sb;
    }

    @Override // defpackage.yg7, defpackage.gc8
    public final StringBuilder q0(StringBuilder sb) {
        gc8.j0(this.f, sb, false);
        sb.append('<');
        StringBuilder sbQ0 = this.G.q0(sb);
        sbQ0.append(">;");
        return sbQ0;
    }

    @Override // defpackage.gc8
    /* JADX INFO: renamed from: s0 */
    public final gc8 x() {
        return this.G;
    }

    @Override // defpackage.yg7
    public final String toString() {
        StringBuilder sb = new StringBuilder(40);
        sb.append("[reference type, class ");
        sb.append(l0());
        sb.append('<');
        sb.append(this.G);
        sb.append(">]");
        return sb.toString();
    }

    @Override // defpackage.gc8, defpackage.ho6
    public final gc8 x() {
        return this.G;
    }
}
