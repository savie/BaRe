package defpackage;

/* JADX INFO: loaded from: classes.dex */
public final class g26 {
    public short[] a = new short[256];
    public final int b;
    public final ai5 c;

    public g26(k45 k45Var) {
        k45Var.getClass();
        this.b = k45Var.d;
        this.c = k45Var.h;
    }

    public static void a(g26 g26Var, g26 g26Var2, g26 g26Var3) {
        for (int i = 0; i < 64; i++) {
            int i2 = i * 4;
            short[] sArr = g26Var2.a;
            short s = sArr[i2];
            int i3 = i2 + 1;
            short s2 = sArr[i3];
            short[] sArr2 = g26Var3.a;
            short s3 = sArr2[i2];
            short s4 = sArr2[i3];
            short[] sArr3 = ji8.e;
            int i4 = i + 64;
            ji8.a(g26Var, i2, s, s2, s3, s4, sArr3[i4]);
            int i5 = i2 + 2;
            short[] sArr4 = g26Var2.a;
            short s5 = sArr4[i5];
            int i6 = i2 + 3;
            short s6 = sArr4[i6];
            short[] sArr5 = g26Var3.a;
            ji8.a(g26Var, i5, s5, s6, sArr5[i5], sArr5[i6], (short) (sArr3[i4] * (-1)));
        }
    }

    public final void b(byte b, byte[] bArr) {
        int i = this.b;
        int i2 = (i * 256) / 4;
        byte[] bArr2 = new byte[i2];
        ai5 ai5Var = this.c;
        ai5Var.getClass();
        int length = bArr.length + 1;
        byte[] bArr3 = new byte[length];
        System.arraycopy(bArr, 0, bArr3, 0, bArr.length);
        bArr3[bArr.length] = b;
        lr6 lr6Var = (lr6) ai5Var.e;
        lr6Var.update(bArr3, 0, length);
        lr6Var.l(bArr2, 0, i2);
        if (i != 3) {
            for (int i3 = 0; i3 < 32; i3++) {
                int i4 = i3 * 4;
                long j = ((long) (bArr2[i4] & 255)) | (((long) (bArr2[i4 + 1] & 255)) << 8) | (((long) (bArr2[i4 + 2] & 255)) << 16) | (((long) (bArr2[i4 + 3] & 255)) << 24);
                long j2 = (j & 1431655765) + ((j >> 1) & 1431655765);
                for (int i5 = 0; i5 < 8; i5++) {
                    int i6 = i5 * 4;
                    this.a[(i3 * 8) + i5] = (short) (((short) ((j2 >> i6) & 3)) - ((short) ((j2 >> (i6 + i)) & 3)));
                }
            }
            return;
        }
        for (int i7 = 0; i7 < 64; i7++) {
            int i8 = i7 * 3;
            long j3 = ((long) (bArr2[i8] & 255)) | (((long) (bArr2[i8 + 1] & 255)) << 8) | (((long) (bArr2[i8 + 2] & 255)) << 16);
            long j4 = (j3 & 2396745) + ((j3 >> 1) & 2396745) + ((j3 >> 2) & 2396745);
            for (int i9 = 0; i9 < 4; i9++) {
                int i10 = i9 * 6;
                this.a[(i7 * 4) + i9] = (short) (((short) ((j4 >> i10) & 7)) - ((short) ((j4 >> (i10 + 3)) & 7)));
            }
        }
    }

    public final void c() {
        for (int i = 0; i < 256; i++) {
            short[] sArr = this.a;
            short s = sArr[i];
            sArr[i] = (short) (s - ((short) (((short) ((20159 * s) >> 26)) * 3329)));
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("[");
        int i = 0;
        while (true) {
            short[] sArr = this.a;
            if (i >= sArr.length) {
                sb.append("]");
                return sb.toString();
            }
            sb.append((int) sArr[i]);
            if (i != this.a.length - 1) {
                sb.append(", ");
            }
            i++;
        }
    }
}
