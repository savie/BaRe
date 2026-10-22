package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class yg7 extends gc8 {
    public yg7(Class cls, jc8 jc8Var, gc8 gc8Var, gc8[] gc8VarArr, Object obj, Object obj2, boolean z) {
        super(cls, jc8Var, gc8Var, gc8VarArr, (jc8Var == null ? jc8.k : jc8Var).d, obj, obj2, z);
    }

    public static yg7 J0(Class cls) {
        return new yg7(cls, null, null, null, null, null, false);
    }

    @Override // defpackage.gc8
    public gc8 B0(Class cls, jc8 jc8Var, gc8 gc8Var, gc8[] gc8VarArr) {
        return null;
    }

    @Override // defpackage.gc8
    public gc8 D0(gc8 gc8Var) {
        throw new IllegalArgumentException("Simple types have no content types; cannot call withContentType()");
    }

    @Override // defpackage.gc8
    public gc8 E0(sc8 sc8Var) {
        throw new IllegalArgumentException("Simple types have no content types; cannot call withContenTypeHandler()");
    }

    @Override // defpackage.gc8
    /* JADX INFO: renamed from: K0, reason: merged with bridge method [inline-methods] */
    public yg7 G0() {
        if (this.q) {
            return this;
        }
        return new yg7(this.f, this.x, this.r, this.t, this.n, this.p, true);
    }

    @Override // defpackage.gc8
    /* JADX INFO: renamed from: L0, reason: merged with bridge method [inline-methods] */
    public yg7 H0(Object obj) {
        if (this.p == obj) {
            return this;
        }
        return new yg7(this.f, this.x, this.r, this.t, this.n, obj, this.q);
    }

    @Override // defpackage.gc8
    /* JADX INFO: renamed from: M0, reason: merged with bridge method [inline-methods] */
    public yg7 I0(Object obj) {
        if (obj == this.n) {
            return this;
        }
        return new yg7(this.f, this.x, this.r, this.t, obj, this.p, this.q);
    }

    @Override // defpackage.gc8
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || obj.getClass() != getClass()) {
            return false;
        }
        yg7 yg7Var = (yg7) obj;
        if (yg7Var.f != this.f) {
            return false;
        }
        return this.x.equals(yg7Var.x);
    }

    @Override // defpackage.gc8
    public String l0() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f.getName());
        jc8 jc8Var = this.x;
        int length = jc8Var.b.length;
        if (length > 0 && k0(length)) {
            sb.append('<');
            for (int i = 0; i < length; i++) {
                gc8 gc8VarD = jc8Var.d(i);
                if (i > 0) {
                    sb.append(',');
                }
                sb.append(gc8VarD.C0());
            }
            sb.append('>');
        }
        return sb.toString();
    }

    @Override // defpackage.gc8
    public StringBuilder p0(StringBuilder sb) {
        gc8.j0(this.f, sb, true);
        return sb;
    }

    @Override // defpackage.gc8
    public StringBuilder q0(StringBuilder sb) {
        gc8.j0(this.f, sb, false);
        jc8 jc8Var = this.x;
        int length = jc8Var.b.length;
        if (length > 0) {
            sb.append('<');
            for (int i = 0; i < length; i++) {
                sb = jc8Var.d(i).q0(sb);
            }
            sb.append('>');
        }
        sb.append(';');
        return sb;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(40);
        sb.append("[simple type, class ");
        sb.append(l0());
        sb.append(']');
        return sb.toString();
    }

    @Override // defpackage.gc8
    public final boolean x0() {
        return false;
    }

    public yg7(Class cls) {
        this(cls, jc8.k, null, null);
    }

    public yg7(Class cls, jc8 jc8Var, gc8 gc8Var, gc8[] gc8VarArr) {
        this(cls, jc8Var, gc8Var, gc8VarArr, null, null, false);
    }
}
