package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class pi2 extends t65 {
    public static final int t = s65.b(qi2.class);
    public final int r;

    public pi2(en0 en0Var, un7 un7Var, jg7 jg7Var, op6 op6Var, mp7 mp7Var, uk1 uk1Var, cd2 cd2Var) {
        super(en0Var, un7Var, jg7Var, op6Var, mp7Var, cd2Var);
        this.r = t;
    }

    @Override // defpackage.s65
    public final boolean h(ad2 ad2Var) {
        cd2 cd2Var = this.n;
        cd2Var.getClass();
        int iB = ad2Var.b();
        if (iB == 0) {
            return ad2Var.a(cd2Var.a);
        }
        if (iB == 1) {
            return ad2Var.a(cd2Var.b);
        }
        int i = yj8.a;
        g84.h("Internal error: this code path should never get executed");
        return false;
    }

    public final t65 j(long j) {
        return new pi2(this, j, this.r);
    }

    public pi2(pi2 pi2Var, long j, int i) {
        super(pi2Var, j);
        this.r = i;
    }
}
