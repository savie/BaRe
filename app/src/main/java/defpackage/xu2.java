package defpackage;

import java.nio.ByteBuffer;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class xu2 {
    public int a = 1;
    public final pf5 b;
    public pf5 c;
    public pf5 d;
    public int e;
    public int f;

    public xu2(pf5 pf5Var) {
        this.b = pf5Var;
        this.c = pf5Var;
    }

    public final void a() {
        this.a = 1;
        this.c = this.b;
        this.f = 0;
    }

    public final boolean b() {
        nf5 nf5VarB = this.c.b.b();
        int iA = nf5VarB.a(6);
        return !(iA == 0 || ((ByteBuffer) nf5VarB.d).get(iA + nf5VarB.a) == 0) || this.e == 65039;
    }
}
