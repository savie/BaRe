package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class hu6 extends rt6 {
    public final nr6 e;
    public final int f;
    public final int g;
    public final byte[] h;

    public hu6(us6 us6Var, long j, long j2, nr6 nr6Var, int i, byte[] bArr) {
        super(33, us6Var, it6.SMB2_SET_INFO, j, j2);
        this.e = nr6Var;
        this.f = 1;
        this.g = i;
        this.h = bArr;
    }

    @Override // defpackage.rt6
    public final void h(zu6 zu6Var) {
        long j;
        zu6Var.k(this.c);
        int i = this.f;
        if (i == 1) {
            j = 1;
        } else if (i == 2) {
            j = 2;
        } else if (i == 3) {
            j = 3;
        } else {
            if (i != 4) {
                throw null;
            }
            j = 4;
        }
        zu6Var.f((byte) j);
        int i2 = this.g;
        zu6Var.f(i2 == 0 ? (byte) 0 : (byte) xs1.d(i2));
        byte[] bArr = this.h;
        zu6Var.l(bArr.length);
        zu6Var.k(96);
        zu6Var.v();
        zu6Var.l(0L);
        this.e.a(zu6Var);
        zu6Var.i(bArr, bArr.length);
    }
}
