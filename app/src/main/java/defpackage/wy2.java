package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class wy2 extends xy2 {
    public final h48 c;

    public wy2(long j, h48 h48Var) {
        super(j);
        this.c = h48Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.c.run();
    }

    @Override // defpackage.xy2
    public final String toString() {
        return super.toString() + this.c;
    }
}
