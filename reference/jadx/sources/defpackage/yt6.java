package defpackage;

import java.util.EnumSet;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class yt6 extends lt6 {
    public final int f;
    public final Set g;
    public final nr6 h;
    public final String i;

    public yt6(us6 us6Var, long j, long j2, nr6 nr6Var, int i, EnumSet enumSet, int i2) {
        super(33, us6Var, it6.SMB2_QUERY_DIRECTORY, j, j2, i2);
        this.f = i;
        this.g = enumSet;
        this.h = nr6Var;
        this.i = "*";
    }

    @Override // defpackage.rt6
    public final void h(zu6 zu6Var) {
        zu6Var.k(this.c);
        zu6Var.f((byte) xs1.d(this.f));
        zu6Var.f((byte) sz8.j0(this.g));
        zu6Var.l(0L);
        this.h.a(zu6Var);
        zu6Var.k(96);
        String str = this.i;
        zu6Var.k(str.length() * 2);
        zu6Var.l(Math.min(this.e, ((ut6) this.a).b * 65536));
        zu6Var.j(str, h51.d);
    }
}
