package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class vq5 implements mt3 {
    public final /* synthetic */ kh6 a;
    public final /* synthetic */ long b;
    public final /* synthetic */ wq5 c;
    public final /* synthetic */ kh6 d;
    public final /* synthetic */ g30 e;
    public final /* synthetic */ long f;

    public /* synthetic */ vq5(kh6 kh6Var, long j, wq5 wq5Var, kh6 kh6Var2, g30 g30Var, long j2) {
        this.a = kh6Var;
        this.b = j;
        this.c = wq5Var;
        this.d = kh6Var2;
        this.e = g30Var;
        this.f = j2;
    }

    @Override // defpackage.mt3
    public final Object invoke(Object obj) {
        long jLongValue = ((Long) obj).longValue();
        kh6 kh6Var = this.a;
        long j = kh6Var.a + jLongValue;
        kh6Var.a = j;
        wq5.l(this.c, this.d, this.e, this.f, this.b + j, false);
        return be8.a;
    }
}
