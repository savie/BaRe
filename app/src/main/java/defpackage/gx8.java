package defpackage;

/* JADX INFO: loaded from: classes.dex */
public abstract class gx8 {
    public final int a;
    public long b;
    public int c;
    public int d;

    public gx8(gx8 gx8Var) {
        this.a = gx8Var.c;
        this.b = gx8Var.b;
        this.c = gx8Var.a;
        this.d = gx8Var.d;
    }

    public byte[] a() {
        byte[] bArr = new byte[32];
        xx3.n(bArr, this.a, 0);
        xx3.u(4, this.b, bArr);
        xx3.n(bArr, this.c, 12);
        xx3.n(bArr, this.d, 28);
        return bArr;
    }

    public gx8(int i) {
        this.c = 0;
        this.b = 0L;
        this.d = 0;
        this.a = i;
    }
}
