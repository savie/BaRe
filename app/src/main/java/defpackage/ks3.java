package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ks3 extends RuntimeException {
    public final ls3 a;
    public final Throwable b;

    public ks3(ls3 ls3Var, Throwable th) {
        super(th);
        this.a = ls3Var;
        this.b = th;
    }

    @Override // java.lang.Throwable
    public final Throwable getCause() {
        return this.b;
    }
}
