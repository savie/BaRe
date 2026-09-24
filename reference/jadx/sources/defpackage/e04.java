package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class e04 implements mt3 {
    public final /* synthetic */ kh6 a;
    public final /* synthetic */ long b;
    public final /* synthetic */ l04 c;
    public final /* synthetic */ long d;

    public /* synthetic */ e04(kh6 kh6Var, long j, l04 l04Var, long j2) {
        this.a = kh6Var;
        this.b = j;
        this.c = l04Var;
        this.d = j2;
    }

    @Override // defpackage.mt3
    public final Object invoke(Object obj) {
        long jLongValue = ((Long) obj).longValue();
        kh6 kh6Var = this.a;
        long j = kh6Var.a;
        if (jLongValue < 0) {
            jLongValue = 0;
        }
        long j2 = j + jLongValue;
        long j3 = this.b;
        if (j2 > j3) {
            j2 = j3;
        }
        kh6Var.a = j2;
        this.c.b(this.d + j2);
        return be8.a;
    }
}
