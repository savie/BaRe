package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class bj8 extends ez2 {
    public final wj6 d;
    public final aj8 e;
    public final qc6 f;

    public bj8(wj6 wj6Var, aj8 aj8Var, qc6 qc6Var) {
        this.d = wj6Var;
        this.e = aj8Var;
        this.f = qc6Var;
    }

    @Override // defpackage.ez2
    public final ez2 a(qc6 qc6Var) {
        return new bj8(this.d, this.e, qc6Var);
    }

    @Override // defpackage.ez2
    public final pa2 b(k31 k31Var, qc6 qc6Var) {
        return new pa2(5, this, new eb2(new zc2(this.d, qc6Var.a), k31Var.b), null);
    }

    @Override // defpackage.ez2
    public final void c(wc2 wc2Var) {
        this.e.onCancelled(wc2Var);
    }

    @Override // defpackage.ez2
    public final void d(pa2 pa2Var) {
        if (this.a.get()) {
            return;
        }
        this.e.onDataChange(pa2Var.c);
    }

    @Override // defpackage.ez2
    public final qc6 e() {
        return this.f;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof bj8)) {
            return false;
        }
        bj8 bj8Var = (bj8) obj;
        return bj8Var.e.equals(this.e) && bj8Var.d.equals(this.d) && bj8Var.f.equals(this.f);
    }

    @Override // defpackage.ez2
    public final boolean f(ez2 ez2Var) {
        return (ez2Var instanceof bj8) && ((bj8) ez2Var).e.equals(this.e);
    }

    @Override // defpackage.ez2
    public final boolean g(int i) {
        return i == 5;
    }

    public final int hashCode() {
        return this.f.hashCode() + ((this.d.hashCode() + (this.e.hashCode() * 31)) * 31);
    }

    public final String toString() {
        return "ValueEventRegistration";
    }
}
