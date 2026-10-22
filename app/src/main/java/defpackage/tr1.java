package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class tr1 {
    public final jk6 a;
    public final long b;
    public final /* synthetic */ ur1 c;

    public tr1(ur1 ur1Var, jk6 jk6Var, long j) {
        this.c = ur1Var;
        this.a = jk6Var;
        this.b = j;
    }

    public final void a() {
        ur1 ur1Var = this.c;
        us6 us6Var = (us6) ur1Var.c.b.e;
        jk6 jk6Var = this.a;
        long j = jk6Var.c;
        long j2 = jk6Var.f;
        is6 is6Var = new is6(4, us6Var, it6.SMB2_CANCEL, this.b, 0L);
        ut6 ut6Var = (ut6) is6Var.a;
        ut6Var.f = j;
        if (j2 != 0) {
            ut6Var.k |= 2;
            ut6Var.g = j2;
        }
        try {
            ur1Var.d.c(Long.valueOf(this.b)).n(is6Var);
        } catch (va8 unused) {
            ur1.I.t(is6Var, "Failed to send {}");
        }
    }
}
