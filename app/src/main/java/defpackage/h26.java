package defpackage;

/* JADX INFO: loaded from: classes.dex */
public final class h26 {
    public final g26[] a;
    public final int b;
    public final int c;

    public h26(k45 k45Var) {
        int i = k45Var.b;
        this.b = i;
        this.c = k45Var.c;
        this.a = new g26[i];
        for (int i2 = 0; i2 < this.b; i2++) {
            this.a[i2] = new g26(k45Var);
        }
    }

    public final void a() {
        for (int i = 0; i < this.b; i++) {
            g26 g26Var = this.a[i];
            short[] sArr = new short[256];
            System.arraycopy(g26Var.a, 0, sArr, 0, 256);
            int i2 = 1;
            for (int i3 = 128; i3 >= 2; i3 >>= 1) {
                int i4 = 0;
                while (i4 < 256) {
                    int i5 = i2 + 1;
                    short s = ji8.e[i2];
                    int i6 = i4;
                    while (i6 < i4 + i3) {
                        int i7 = i6 + i3;
                        short sU = wx3.u(sArr[i7] * s);
                        sArr[i7] = (short) (sArr[i6] - sU);
                        sArr[i6] = (short) (sArr[i6] + sU);
                        i6++;
                    }
                    i4 = i6 + i3;
                    i2 = i5;
                }
            }
            g26Var.a = sArr;
            g26Var.c();
        }
    }

    public final byte[] b() {
        byte[] bArr = new byte[this.c];
        for (int i = 0; i < this.b; i++) {
            g26 g26Var = this.a[i];
            for (int i2 = 0; i2 < 256; i2++) {
                short[] sArr = g26Var.a;
                short s = (short) (sArr[i2] - 3329);
                sArr[i2] = (short) (s + ((s >> 15) & 3329));
            }
            byte[] bArr2 = new byte[384];
            for (int i3 = 0; i3 < 128; i3++) {
                short[] sArr2 = g26Var.a;
                int i4 = i3 * 2;
                short s2 = sArr2[i4];
                short s3 = sArr2[i4 + 1];
                int i5 = i3 * 3;
                bArr2[i5] = (byte) s2;
                bArr2[i5 + 1] = (byte) ((s2 >> 8) | (s3 << 4));
                bArr2[i5 + 2] = (byte) (s3 >> 4);
            }
            g26Var.getClass();
            System.arraycopy(bArr2, 0, bArr, i * 384, 384);
        }
        return bArr;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("[");
        int i = 0;
        while (true) {
            int i2 = this.b;
            if (i >= i2) {
                sb.append("]");
                return sb.toString();
            }
            sb.append(this.a[i].toString());
            if (i != i2 - 1) {
                sb.append(", ");
            }
            i++;
        }
    }
}
