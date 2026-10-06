package defpackage;

/* JADX INFO: loaded from: classes.dex */
public final class l45 {
    public final k45 a;
    public final int b;
    public final int c;
    public final int d;
    public final ai5 e;
    public final int f;

    public l45(k45 k45Var) {
        this.a = k45Var;
        this.b = k45Var.b;
        this.c = k45Var.g;
        this.d = k45Var.c;
        ai5 ai5Var = k45Var.h;
        this.e = ai5Var;
        ai5Var.getClass();
        this.f = 3;
    }

    public static int a(g26 g26Var, int i, int i2, byte[] bArr, int i3) {
        int i4 = 0;
        int i5 = 0;
        while (i4 < i2) {
            int i6 = i5 + 3;
            if (i6 > i3) {
                break;
            }
            short s = (short) (bArr[i5] & 255);
            short s2 = (short) (bArr[i5 + 1] & 255);
            short s3 = (short) ((s | (s2 << 8)) & 4095);
            short s4 = (short) (((((short) (bArr[i5 + 2] & 255)) << 4) | (s2 >> 4)) & 4095);
            if (s3 < 3329) {
                g26Var.a[i + i4] = s3;
                i4++;
            }
            if (i4 < i2 && s4 < 3329) {
                g26Var.a[i + i4] = s4;
                i4++;
            }
            i5 = i6;
        }
        return i4;
    }
}
