package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class t34 implements mt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ long b;

    public /* synthetic */ t34(int i, long j) {
        this.a = i;
        this.b = j;
    }

    @Override // defpackage.mt3
    public final Object invoke(Object obj) {
        int i = this.a;
        long j = this.b;
        switch (i) {
            case 0:
                ((ij5) obj).c(u34.b, Long.valueOf(j));
                return null;
            default:
                return nv6.loadMessagesAfterTime$lambda$0("SELECT * FROM smessage WHERE time > ?", j, (fw6) obj);
        }
    }
}
