package defpackage;

import java.lang.reflect.Array;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class t50 extends gc8 {
    public static final /* synthetic */ int I = 0;
    public final gc8 G;
    public final Object H;

    public t50(gc8 gc8Var, jc8 jc8Var, Object obj, Object obj2, Object obj3, boolean z) {
        super(obj.getClass(), jc8Var, null, null, gc8Var.hashCode(), obj2, obj3, z);
        this.G = gc8Var;
        this.H = obj;
    }

    @Override // defpackage.gc8
    public final gc8 B0(Class cls, jc8 jc8Var, gc8 gc8Var, gc8[] gc8VarArr) {
        return null;
    }

    @Override // defpackage.gc8
    public final gc8 D0(gc8 gc8Var) {
        return new t50(gc8Var, this.x, Array.newInstance((Class<?>) gc8Var.f, 0), this.n, this.p, this.q);
    }

    @Override // defpackage.gc8
    public final gc8 E0(sc8 sc8Var) {
        gc8 gc8Var = this.G;
        if (sc8Var == gc8Var.p) {
            return this;
        }
        return new t50(gc8Var.H0(sc8Var), this.x, this.H, this.n, this.p, this.q);
    }

    @Override // defpackage.gc8
    public final gc8 G0() {
        if (this.q) {
            return this;
        }
        return new t50(this.G.G0(), this.x, this.H, this.n, this.p, true);
    }

    @Override // defpackage.gc8
    public final gc8 H0(Object obj) {
        if (obj == this.p) {
            return this;
        }
        return new t50(this.G, this.x, this.H, this.n, obj, this.q);
    }

    @Override // defpackage.gc8
    public final gc8 I0(Object obj) {
        if (obj == this.n) {
            return this;
        }
        return new t50(this.G, this.x, this.H, obj, this.p, this.q);
    }

    @Override // defpackage.gc8
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass() == t50.class) {
            return this.G.equals(((t50) obj).G);
        }
        return false;
    }

    @Override // defpackage.gc8
    public final gc8 o0() {
        return this.G;
    }

    @Override // defpackage.gc8
    public final StringBuilder p0(StringBuilder sb) {
        sb.append('[');
        return this.G.p0(sb);
    }

    @Override // defpackage.gc8
    public final StringBuilder q0(StringBuilder sb) {
        sb.append('[');
        return this.G.q0(sb);
    }

    public final String toString() {
        return "[array type, component type: " + this.G + "]";
    }

    @Override // defpackage.gc8
    public final boolean u0() {
        return this.G.u0();
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
