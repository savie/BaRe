package defpackage;

/* JADX INFO: loaded from: classes.dex */
public final class k40 {
    public long[] a = new long[128];

    public static void a(k40 k40Var, k40 k40Var2, k40 k40Var3) {
        long[] jArr = k40Var.a;
        long[] jArr2 = k40Var2.a;
        long[] jArr3 = k40Var3.a;
        for (int i = 0; i < 128; i++) {
            jArr[i] = jArr2[i] ^ jArr3[i];
        }
    }
}
