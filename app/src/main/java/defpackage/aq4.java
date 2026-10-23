package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class aq4 {
    public final int a;
    public final int b;
    public final int c;
    public final int d;
    public final byte[] e;
    public final int f;
    public int g = -1;
    public int h = -1;
    public boolean i = false;
    public int j = 0;
    public int k = 0;

    public aq4(int i, int i2, int i3, int i4, v40 v40Var) {
        int i5 = i2 + i;
        int i6 = i3 + 273;
        int iMin = i5 + i6 + Math.min((i / 2) + 262144, 536870912);
        this.f = iMin;
        this.e = v40Var.a(iMin);
        this.a = i5;
        this.b = i6;
        this.c = 273;
        this.d = i4;
    }

    public static void f(int i, int i2, int[] iArr) {
        for (int i3 = 0; i3 < i; i3++) {
            int i4 = iArr[i3];
            if (i4 <= i2) {
                iArr[i3] = 0;
            } else {
                iArr[i3] = i4 - i2;
            }
        }
    }

    public final int a(byte[] bArr, int i, int i2) {
        int i3 = this.g;
        int i4 = this.f;
        int i5 = this.b;
        int i6 = i4 - i5;
        byte[] bArr2 = this.e;
        if (i3 >= i6) {
            int i7 = ((i3 + 1) - this.a) & (-16);
            System.arraycopy(bArr2, i7, bArr2, 0, this.j - i7);
            this.g -= i7;
            this.h -= i7;
            this.j -= i7;
        }
        int i8 = this.j;
        int i9 = i4 - i8;
        if (i2 > i9) {
            i2 = i9;
        }
        System.arraycopy(bArr, i, bArr2, i8, i2);
        int i10 = this.j + i2;
        this.j = i10;
        if (i10 >= i5) {
            this.h = i10 - i5;
        }
        g();
        return i2;
    }

    public final int b(int i) {
        return this.e[this.g - i] & 255;
    }

    public final int c(int i, int i2) {
        return this.e[(this.g + i) - i2] & 255;
    }

    public abstract nn1 d();

    public final int e(int i) {
        int i2 = this.g + 1;
        this.g = i2;
        int i3 = this.j - i2;
        if (i3 >= i || (i3 >= 4 && this.i)) {
            return i3;
        }
        this.k++;
        return 0;
    }

    public final void g() {
        int i;
        int i2 = this.k;
        if (i2 <= 0 || (i = this.g) >= this.h) {
            return;
        }
        this.g = i - i2;
        this.k = 0;
        i(i2);
    }

    public abstract void h(v40 v40Var);

    public abstract void i(int i);
}
