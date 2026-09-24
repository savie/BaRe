package defpackage;

/* JADX INFO: loaded from: classes.dex */
public final class sy0 implements z61 {
    public static final sy0 d = new sy0("mceliece348864", 12, 3488, 64, false);
    public static final sy0 e = new sy0("mceliece348864f", 12, 3488, 64, true);
    public static final sy0 f = new sy0("mceliece460896", 13, 4608, 96, false);
    public static final sy0 k = new sy0("mceliece460896f", 13, 4608, 96, true);
    public static final sy0 n = new sy0("mceliece6688128", 13, 6688, 128, false);
    public static final sy0 p = new sy0("mceliece6688128f", 13, 6688, 128, true);
    public static final sy0 q = new sy0("mceliece6960119", 13, 6960, 119, false);
    public static final sy0 r = new sy0("mceliece6960119f", 13, 6960, 119, true);
    public static final sy0 t = new sy0("mceliece8192128", 13, 8192, 128, false);
    public static final sy0 x = new sy0("mceliece8192128f", 13, 8192, 128, true);
    public final String a;
    public final int b;
    public final qy0 c;

    public sy0(String str, int i, int i2, int i3, boolean z) {
        this.a = str;
        this.b = i3;
        qy0 qy0Var = new qy0();
        qy0Var.j = z;
        qy0Var.a = i2;
        qy0Var.b = i3;
        qy0Var.c = i;
        qy0Var.d = i3 * 2;
        int i4 = i3 * i;
        qy0Var.e = i4;
        qy0Var.f = i2 - i4;
        qy0Var.g = (1 << i) - 1;
        qy0Var.h = i == 12 ? new gu3() : new hu3();
        qy0Var.i = i3 % 8 != 0;
        this.c = qy0Var;
    }
}
