package defpackage;

import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class us0 {
    public final int[] a;
    public final int[] b;
    public final long c;
    public final int d;
    public final int e;

    public us0(int[] iArr, int[] iArr2, long j, int i, int i2) {
        this.a = iArr;
        this.b = iArr2;
        this.c = j;
        this.d = i;
        this.e = i2;
    }

    public static int[] a(us0 us0Var) {
        return Arrays.copyOfRange(vs0.a(us0Var.a, us0Var.b, us0Var.c, us0Var.d, us0Var.e), 0, 8);
    }
}
