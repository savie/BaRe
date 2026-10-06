package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class eq8 extends cu3 implements mt3 {
    public static final eq8 a = new eq8(1, Thread.class, "sleep", "sleep(J)V", 0);

    @Override // defpackage.mt3
    public final Object invoke(Object obj) throws InterruptedException {
        Thread.sleep(((Number) obj).longValue());
        return be8.a;
    }
}
