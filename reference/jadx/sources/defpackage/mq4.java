package defpackage;

import java.lang.reflect.Array;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class mq4 extends y23 {
    public final int[] e;
    public final int[][] f;
    public final /* synthetic */ pq4 g;

    public mq4(pq4 pq4Var, int i, int i2) {
        this.g = pq4Var;
        int i3 = 1 << i;
        this.e = new int[i3];
        this.f = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, i3, Math.max(i2 - 1, 16));
    }

    @Override // defpackage.y23
    public final void d() {
        super.d();
        int i = 0;
        while (true) {
            int[] iArr = this.e;
            if (i >= iArr.length) {
                return;
            }
            iArr[i] = 0;
            i++;
        }
    }

    public final void f(int i, int i2) {
        short[] sArr = (short[]) this.a;
        int i3 = i - 2;
        bf6 bf6Var = this.g.m;
        if (i3 < 8) {
            bf6Var.R(sArr, 0, 0);
            bf6Var.S(i3, ((short[][]) this.b)[i2]);
        } else {
            bf6Var.R(sArr, 0, 1);
            int i4 = i - 10;
            if (i4 < 8) {
                bf6Var.R(sArr, 1, 0);
                bf6Var.S(i4, ((short[][]) this.c)[i2]);
            } else {
                bf6Var.R(sArr, 1, 1);
                bf6Var.S(i - 18, (short[]) this.d);
            }
        }
        int[] iArr = this.e;
        iArr[i2] = iArr[i2] - 1;
    }

    public final void g() {
        int[][] iArr;
        int i = 0;
        while (true) {
            int[] iArr2 = this.e;
            if (i >= iArr2.length) {
                return;
            }
            if (iArr2[i] <= 0) {
                iArr2[i] = 32;
                short[] sArr = (short[]) this.a;
                int iT = bf6.T(sArr[0], 0);
                int i2 = 0;
                while (true) {
                    iArr = this.f;
                    if (i2 >= 8) {
                        break;
                    }
                    iArr[i][i2] = bf6.U(i2, ((short[][]) this.b)[i]) + iT;
                    i2++;
                }
                int iT2 = bf6.T(sArr[0], 1);
                int iT3 = bf6.T(sArr[1], 0);
                while (i2 < 16) {
                    iArr[i][i2] = bf6.U(i2 - 8, ((short[][]) this.c)[i]) + iT2 + iT3;
                    i2++;
                }
                int iT4 = bf6.T(sArr[1], 1);
                while (true) {
                    int[] iArr3 = iArr[i];
                    if (i2 < iArr3.length) {
                        iArr3[i2] = bf6.U(i2 - 16, (short[]) this.d) + iT2 + iT4;
                        i2++;
                    }
                }
            }
            i++;
        }
    }
}
