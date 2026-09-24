package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class vy2 extends xy2 {
    public final o21 c;
    public final /* synthetic */ zy2 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public vy2(zy2 zy2Var, long j, o21 o21Var) {
        super(j);
        this.d = zy2Var;
        this.c = o21Var;
    }

    @Override // java.lang.Runnable
    public final void run() throws xm2 {
        this.c.E(this.d);
    }

    @Override // defpackage.xy2
    public final String toString() {
        return super.toString() + this.c;
    }
}
