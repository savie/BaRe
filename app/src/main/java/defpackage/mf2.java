package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class mf2 implements Thread.UncaughtExceptionHandler {
    public final /* synthetic */ nf2 a;

    public mf2(nf2 nf2Var) {
        this.a = nf2Var;
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public final void uncaughtException(Thread thread, Throwable th) {
        this.a.a.d(th);
    }
}
