package defpackage;

import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ej7 implements Comparable {
    public boolean a;
    public float e;
    public int t;
    public int b = -1;
    public int c = -1;
    public int d = 0;
    public boolean f = false;
    public final float[] k = new float[9];
    public final float[] n = new float[9];
    public m50[] p = new m50[16];
    public int q = 0;
    public int r = 0;

    public ej7(int i) {
        this.t = i;
    }

    public final void a(m50 m50Var) {
        int i = 0;
        while (true) {
            int i2 = this.q;
            m50[] m50VarArr = this.p;
            if (i >= i2) {
                if (i2 >= m50VarArr.length) {
                    this.p = (m50[]) Arrays.copyOf(m50VarArr, m50VarArr.length * 2);
                }
                m50[] m50VarArr2 = this.p;
                int i3 = this.q;
                m50VarArr2[i3] = m50Var;
                this.q = i3 + 1;
                return;
            }
            if (m50VarArr[i] == m50Var) {
                return;
            } else {
                i++;
            }
        }
    }

    public final void b(m50 m50Var) {
        int i = this.q;
        int i2 = 0;
        while (i2 < i) {
            if (this.p[i2] == m50Var) {
                while (i2 < i - 1) {
                    m50[] m50VarArr = this.p;
                    int i3 = i2 + 1;
                    m50VarArr[i2] = m50VarArr[i3];
                    i2 = i3;
                }
                this.q--;
                return;
            }
            i2++;
        }
    }

    public final void c() {
        this.t = 5;
        this.d = 0;
        this.b = -1;
        this.c = -1;
        this.e = 0.0f;
        this.f = false;
        int i = this.q;
        for (int i2 = 0; i2 < i; i2++) {
            this.p[i2] = null;
        }
        this.q = 0;
        this.r = 0;
        this.a = false;
        Arrays.fill(this.n, 0.0f);
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        return this.b - ((ej7) obj).b;
    }

    public final void d(bv4 bv4Var, float f) {
        this.e = f;
        this.f = true;
        int i = this.q;
        this.c = -1;
        for (int i2 = 0; i2 < i; i2++) {
            this.p[i2].h(bv4Var, this, false);
        }
        this.q = 0;
    }

    public final void e(bv4 bv4Var, m50 m50Var) {
        int i = this.q;
        for (int i2 = 0; i2 < i; i2++) {
            this.p[i2].i(bv4Var, m50Var, false);
        }
        this.q = 0;
    }

    public final String toString() {
        return "" + this.b;
    }
}
