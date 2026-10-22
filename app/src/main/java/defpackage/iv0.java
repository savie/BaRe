package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class iv0 implements mt3 {
    public final /* synthetic */ kh6 a;
    public final /* synthetic */ long b;
    public final /* synthetic */ kh6 c;
    public final /* synthetic */ long d;
    public final /* synthetic */ kh6 e;
    public final /* synthetic */ c7 f;

    public /* synthetic */ iv0(kh6 kh6Var, long j, kh6 kh6Var2, long j2, kh6 kh6Var3, c7 c7Var) {
        this.a = kh6Var;
        this.b = j;
        this.c = kh6Var2;
        this.d = j2;
        this.e = kh6Var3;
        this.f = c7Var;
    }

    @Override // defpackage.mt3
    public final Object invoke(Object obj) {
        long jLongValue = ((Long) obj).longValue();
        kh6 kh6Var = this.a;
        long j = kh6Var.a + jLongValue;
        long j2 = this.b;
        if (j > j2) {
            j = j2;
        }
        kh6Var.a = j;
        long jI = l73.i(this.c.a + j, 0L, this.d);
        kh6 kh6Var2 = this.e;
        if (jI != kh6Var2.a) {
            kh6Var2.a = jI;
            this.f.invoke(Long.valueOf(jI));
        }
        return be8.a;
    }
}
