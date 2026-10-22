package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class kl6 extends p94 {
    public gc8 G;

    @Override // defpackage.gc8
    public final gc8 B0(Class cls, jc8 jc8Var, gc8 gc8Var, gc8[] gc8VarArr) {
        return null;
    }

    @Override // defpackage.gc8
    public final jc8 n0() {
        gc8 gc8Var = this.G;
        return gc8Var != null ? gc8Var.n0() : this.x;
    }

    @Override // defpackage.gc8
    public final StringBuilder p0(StringBuilder sb) {
        gc8 gc8Var = this.G;
        return gc8Var != null ? gc8Var.p0(sb) : sb;
    }

    @Override // defpackage.gc8
    public final StringBuilder q0(StringBuilder sb) {
        gc8 gc8Var = this.G;
        if (gc8Var != null) {
            return gc8Var.p0(sb);
        }
        sb.append("?");
        return sb;
    }

    @Override // defpackage.gc8
    public final gc8 t0() {
        gc8 gc8Var = this.G;
        return gc8Var != null ? gc8Var.t0() : this.r;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(40);
        sb.append("[recursive type; ");
        gc8 gc8Var = this.G;
        if (gc8Var == null) {
            sb.append("UNRESOLVED");
        } else {
            sb.append(gc8Var.f.getName());
        }
        return sb.toString();
    }

    @Override // defpackage.gc8
    public final boolean x0() {
        return false;
    }

    @Override // defpackage.gc8
    public final gc8 G0() {
        return this;
    }

    @Override // defpackage.gc8
    public final gc8 D0(gc8 gc8Var) {
        return this;
    }

    @Override // defpackage.gc8
    public final gc8 E0(sc8 sc8Var) {
        return this;
    }

    @Override // defpackage.gc8
    public final gc8 H0(Object obj) {
        return this;
    }

    @Override // defpackage.gc8
    public final gc8 I0(Object obj) {
        return this;
    }
}
