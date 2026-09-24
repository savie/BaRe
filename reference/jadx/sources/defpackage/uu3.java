package defpackage;

/* JADX INFO: loaded from: classes.dex */
public abstract class uu3 implements hl2, xb5 {
    public final b42 a;
    public final byte[] b;
    public int c;
    public long d;

    public uu3(uu3 uu3Var) {
        this.b = new byte[4];
        this.a = uu3Var.a;
        d(uu3Var);
    }

    @Override // defpackage.hl2
    public final void a(byte b) {
        int i = this.c;
        int i2 = i + 1;
        this.c = i2;
        byte[] bArr = this.b;
        bArr[i] = b;
        if (i2 == bArr.length) {
            i(bArr, 0);
            this.c = 0;
        }
        this.d++;
    }

    public final void d(uu3 uu3Var) {
        byte[] bArr = uu3Var.b;
        System.arraycopy(bArr, 0, this.b, 0, bArr.length);
        this.c = uu3Var.c;
        this.d = uu3Var.d;
    }

    public final void e() {
        long j = this.d << 3;
        byte b = -128;
        while (true) {
            a(b);
            if (this.c == 0) {
                h(j);
                g();
                return;
            }
            b = 0;
        }
    }

    public abstract void g();

    public abstract void h(long j);

    public abstract void i(byte[] bArr, int i);

    @Override // defpackage.hl2
    public void reset() {
        this.d = 0L;
        this.c = 0;
        int i = 0;
        while (true) {
            byte[] bArr = this.b;
            if (i >= bArr.length) {
                return;
            }
            bArr[i] = 0;
            i++;
        }
    }

    @Override // defpackage.hl2
    public final void update(byte[] bArr, int i, int i2) {
        int i3 = 0;
        int iMax = Math.max(0, i2);
        int i4 = this.c;
        byte[] bArr2 = this.b;
        if (i4 != 0) {
            int i5 = 0;
            while (true) {
                if (i5 >= iMax) {
                    i3 = i5;
                    break;
                }
                int i6 = this.c;
                int i7 = i6 + 1;
                this.c = i7;
                int i8 = i5 + 1;
                bArr2[i6] = bArr[i5 + i];
                if (i7 == 4) {
                    i(bArr2, 0);
                    this.c = 0;
                    i3 = i8;
                    break;
                }
                i5 = i8;
            }
        }
        int i9 = iMax - 3;
        while (i3 < i9) {
            i(bArr, i + i3);
            i3 += 4;
        }
        while (i3 < iMax) {
            int i10 = this.c;
            this.c = i10 + 1;
            bArr2[i10] = bArr[i3 + i];
            i3++;
        }
        this.d += (long) iMax;
    }

    public uu3(b42 b42Var) {
        this.b = new byte[4];
        this.a = b42Var;
        this.c = 0;
    }
}
