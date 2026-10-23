package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class r15 extends at4 {
    public final long c;

    public r15(Long l, qn5 qn5Var) {
        super(qn5Var);
        this.c = l.longValue();
    }

    @Override // defpackage.at4
    public final int c(at4 at4Var) {
        long j = this.c;
        long j2 = ((r15) at4Var).c;
        if (j < j2) {
            return -1;
        }
        return j == j2 ? 0 : 1;
    }

    @Override // defpackage.at4
    public final int d() {
        return 3;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof r15)) {
            return false;
        }
        r15 r15Var = (r15) obj;
        return this.c == r15Var.c && this.a.equals(r15Var.a);
    }

    @Override // defpackage.qn5
    public final Object getValue() {
        return Long.valueOf(this.c);
    }

    public final int hashCode() {
        long j = this.c;
        return this.a.hashCode() + ((int) (j ^ (j >>> 32)));
    }

    @Override // defpackage.qn5
    public final qn5 q(qn5 qn5Var) {
        return new r15(Long.valueOf(this.c), qn5Var);
    }

    @Override // defpackage.qn5
    public final String v(int i) {
        return e(i).concat("number:").concat(zm5.j(this.c));
    }
}
