package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class xm2 extends Exception {
    public final Throwable a;

    public xm2(Throwable th, rx1 rx1Var, ox1 ox1Var) {
        super("Coroutine dispatcher " + rx1Var + " threw an exception, context = " + ox1Var, th);
        this.a = th;
    }

    @Override // java.lang.Throwable
    public final Throwable getCause() {
        return this.a;
    }
}
