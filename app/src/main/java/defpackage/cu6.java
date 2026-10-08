package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class cu6 extends lt6 {
    public final long f;
    public final nr6 g;

    public cu6(us6 us6Var, nr6 nr6Var, long j, long j2, long j3, int i) {
        super(49, us6Var, it6.SMB2_READ, j, j2, i);
        this.g = nr6Var;
        this.f = j3;
    }

    @Override // defpackage.rt6
    public final void h(zu6 zu6Var) {
        zu6Var.k(this.c);
        zu6Var.f((byte) 0);
        zu6Var.f((byte) 0);
        zu6Var.l(Math.min(this.e, ((ut6) this.a).b * 65536));
        zu6Var.m(this.f);
        this.g.a(zu6Var);
        zu6Var.l(1L);
        zu6Var.l(0L);
        zu6Var.l(0L);
        zu6Var.k(0);
        zu6Var.k(0);
        zu6Var.f((byte) 0);
    }
}
