package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class oq4 extends to4 {
    public final nq4[] c;
    public final /* synthetic */ pq4 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public oq4(pq4 pq4Var, int i, int i2) {
        super(i, i2, 1);
        this.d = pq4Var;
        this.c = new nq4[1 << (i + i2)];
        int i3 = 0;
        while (true) {
            nq4[] nq4VarArr = this.c;
            if (i3 >= nq4VarArr.length) {
                return;
            }
            nq4VarArr[i3] = new nq4(this);
            i3++;
        }
    }

    public final int b(int i, int i2, int i3, int i4, dm7 dm7Var) {
        pq4 pq4Var = this.d;
        int iT = 0;
        int iT2 = bf6.T(pq4Var.d[dm7Var.a][pq4Var.a & i4], 0);
        int iA = a(i3, i4);
        boolean z = dm7Var.a < 7;
        int i5 = 256;
        nq4[] nq4VarArr = this.c;
        if (z) {
            nq4 nq4Var = nq4VarArr[iA];
            int i6 = i | 256;
            do {
                iT += bf6.T(((short[]) nq4Var.b)[i6 >>> 8], (i6 >>> 7) & 1);
                i6 <<= 1;
            } while (i6 < 65536);
        } else {
            nq4 nq4Var2 = nq4VarArr[iA];
            int i7 = i | 256;
            do {
                i2 <<= 1;
                iT += bf6.T(((short[]) nq4Var2.b)[(i2 & i5) + i5 + (i7 >>> 8)], (i7 >>> 7) & 1);
                i7 <<= 1;
                i5 &= ~(i2 ^ i7);
            } while (i7 < 65536);
        }
        return iT2 + iT;
    }
}
