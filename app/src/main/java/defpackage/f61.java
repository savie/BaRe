package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class f61 extends ez2 {
    public final wj6 d;
    public final e61 e;
    public final qc6 f;

    public f61(wj6 wj6Var, e61 e61Var, qc6 qc6Var) {
        this.d = wj6Var;
        this.e = e61Var;
        this.f = qc6Var;
    }

    @Override // defpackage.ez2
    public final ez2 a(qc6 qc6Var) {
        return new f61(this.d, this.e, qc6Var);
    }

    @Override // defpackage.ez2
    public final pa2 b(k31 k31Var, qc6 qc6Var) {
        eb2 eb2Var = new eb2(new zc2(this.d, qc6Var.a.d(k31Var.d)), k31Var.b);
        m61 m61Var = k31Var.e;
        return new pa2(k31Var.a, this, eb2Var, m61Var != null ? m61Var.a : null);
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
        int i = pa2Var.a;
        eb2 eb2Var = pa2Var.c;
        int iA = dj7.A(i);
        e61 e61Var = this.e;
        if (iA == 0) {
            e61Var.a(eb2Var);
            return;
        }
        if (iA == 1) {
            e61Var.d(eb2Var);
        } else if (iA == 2) {
            e61Var.c(eb2Var);
        } else {
            if (iA != 3) {
                return;
            }
            e61Var.b(eb2Var);
        }
    }

    @Override // defpackage.ez2
    public final qc6 e() {
        return this.f;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof f61)) {
            return false;
        }
        f61 f61Var = (f61) obj;
        return f61Var.e.equals(this.e) && f61Var.d.equals(this.d) && f61Var.f.equals(this.f);
    }

    @Override // defpackage.ez2
    public final boolean f(ez2 ez2Var) {
        return (ez2Var instanceof f61) && ((f61) ez2Var).e.equals(this.e);
    }

    @Override // defpackage.ez2
    public final boolean g(int i) {
        return i != 5;
    }

    public final int hashCode() {
        return this.f.hashCode() + ((this.d.hashCode() + (this.e.hashCode() * 31)) * 31);
    }

    public final String toString() {
        return "ChildEventRegistration";
    }
}
