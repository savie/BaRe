package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class mq2 {
    public final long a;
    public final long b;
    public final xf c;
    public final l39 d;
    public final c7 e;
    public final mm f;
    public long g = -1;

    public mq2(long j, long j2, int i, xf xfVar, l39 l39Var, m92 m92Var, c7 c7Var, mm mmVar) {
        this.a = j;
        this.b = j2;
        this.c = xfVar;
        this.d = l39Var;
        this.e = c7Var;
        this.f = mmVar;
    }

    public final void a(long j) {
        long jI = l73.i(j, 0L, this.a);
        if (jI != this.g) {
            this.g = jI;
            this.f.invoke(Long.valueOf(jI));
        }
    }
}
