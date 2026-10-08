package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class nt0 extends at4 {
    public final boolean c;

    public nt0(Boolean bool, qn5 qn5Var) {
        super(qn5Var);
        this.c = bool.booleanValue();
    }

    @Override // defpackage.at4
    public final int c(at4 at4Var) {
        boolean z = ((nt0) at4Var).c;
        boolean z2 = this.c;
        if (z2 == z) {
            return 0;
        }
        return z2 ? 1 : -1;
    }

    @Override // defpackage.at4
    public final int d() {
        return 2;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof nt0)) {
            return false;
        }
        nt0 nt0Var = (nt0) obj;
        return this.c == nt0Var.c && this.a.equals(nt0Var.a);
    }

    @Override // defpackage.qn5
    public final Object getValue() {
        return Boolean.valueOf(this.c);
    }

    public final int hashCode() {
        return this.a.hashCode() + (this.c ? 1 : 0);
    }

    @Override // defpackage.qn5
    public final qn5 q(qn5 qn5Var) {
        return new nt0(Boolean.valueOf(this.c), qn5Var);
    }

    @Override // defpackage.qn5
    public final String v(int i) {
        return e(i) + "boolean:" + this.c;
    }
}
