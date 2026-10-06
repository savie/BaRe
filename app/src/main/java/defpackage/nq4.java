package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class nq4 extends ol1 {
    public final /* synthetic */ oq4 e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public nq4(oq4 oq4Var) {
        super(10);
        this.e = oq4Var;
    }

    public final void H() {
        short[] sArr = (short[]) this.b;
        pq4 pq4Var = this.e.d;
        int i = 256;
        int iB = pq4Var.n.b(pq4Var.z) | 256;
        if (pq4Var.c.a < 7) {
            do {
                pq4Var.m.R(sArr, iB >>> 8, (iB >>> 7) & 1);
                iB <<= 1;
            } while (iB < 65536);
        } else {
            int iB2 = pq4Var.n.b(pq4Var.b[0] + 1 + pq4Var.z);
            do {
                iB2 <<= 1;
                pq4Var.m.R(sArr, (iB2 & i) + i + (iB >>> 8), (iB >>> 7) & 1);
                iB <<= 1;
                i &= ~(iB2 ^ iB);
            } while (iB < 65536);
        }
        pq4Var.c.a();
    }
}
