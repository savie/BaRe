package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class zu7 extends ez2 {
    public final qc6 d;

    public zu7(qc6 qc6Var) {
        this.d = qc6Var;
    }

    @Override // defpackage.ez2
    public final ez2 a(qc6 qc6Var) {
        return new zu7(qc6Var);
    }

    @Override // defpackage.ez2
    public final pa2 b(k31 k31Var, qc6 qc6Var) {
        return null;
    }

    @Override // defpackage.ez2
    public final qc6 e() {
        return this.d;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof zu7) && ((zu7) obj).d.equals(this.d);
    }

    @Override // defpackage.ez2
    public final boolean f(ez2 ez2Var) {
        return ez2Var instanceof zu7;
    }

    @Override // defpackage.ez2
    public final boolean g(int i) {
        return false;
    }

    public final int hashCode() {
        return this.d.hashCode();
    }

    @Override // defpackage.ez2
    public final void c(wc2 wc2Var) {
    }

    @Override // defpackage.ez2
    public final void d(pa2 pa2Var) {
    }
}
