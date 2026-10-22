package defpackage;

import java.io.InputStream;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class eq4 extends ad3 {
    public static final int[] p = {262144, 1048576, 2097152, 4194304, 4194304, 8388608, 8388608, 16777216, 33554432, 67108864};
    public static final int[] q = {4, 8, 24, 48};
    public int a;
    public int b;
    public int c;
    public int d;
    public int e;
    public int f;
    public int k;
    public int n;

    public eq4() {
        try {
            d(6);
        } catch (hf8 unused) {
            throw new RuntimeException();
        }
    }

    @Override // defpackage.ad3
    public final InputStream a(InputStream inputStream, v40 v40Var) {
        return new dq4(inputStream, this.a, v40Var);
    }

    @Override // defpackage.ad3
    public final oe3 b(pe3 pe3Var, v40 v40Var) {
        return this.e == 0 ? new rd8(pe3Var, v40Var) : new fq4(pe3Var, this, v40Var);
    }

    public final void c(int i) throws hf8 {
        if (i < 4096) {
            y5.h(xs1.h(i, "LZMA2 dictionary size must be at least 4 KiB: ", " B"));
        } else if (i <= 805306368) {
            this.a = i;
        } else {
            y5.h(xs1.h(i, "LZMA2 dictionary size must not exceed 768 MiB: ", " B"));
        }
    }

    public final Object clone() {
        try {
            return super.clone();
        } catch (CloneNotSupportedException unused) {
            throw new RuntimeException();
        }
    }

    public final void d(int i) throws hf8 {
        int i2;
        if (i < 0 || i > 9) {
            y5.h(fz5.j(i, "Unsupported preset: "));
            return;
        }
        this.b = 3;
        this.c = 0;
        this.d = 2;
        this.a = p[i];
        if (i <= 3) {
            this.e = 1;
            this.k = 4;
            this.f = i <= 1 ? 128 : 273;
            this.n = q[i];
            return;
        }
        this.e = 2;
        this.k = 20;
        if (i == 4) {
            i2 = 16;
        } else {
            i2 = i == 5 ? 32 : 64;
        }
        this.f = i2;
        this.n = 0;
    }
}
