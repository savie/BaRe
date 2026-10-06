package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class rp7 extends Throwable {
    public final String a;
    public final long b;
    public final t40 c;
    public volatile boolean d;

    public rp7(t40 t40Var) {
        super("Thread [" + Thread.currentThread().getName() + "] opened scope for " + t40Var + " here:");
        this.a = Thread.currentThread().getName();
        this.b = Thread.currentThread().getId();
        this.c = t40Var;
    }
}
