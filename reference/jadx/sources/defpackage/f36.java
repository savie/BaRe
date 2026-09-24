package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class f36 extends vc9 {
    public final Object d;

    public f36(int i) {
        super(i);
        this.d = new Object();
    }

    @Override // defpackage.vc9, defpackage.d36
    public final boolean c(Object obj) {
        boolean zC;
        obj.getClass();
        synchronized (this.d) {
            zC = super.c(obj);
        }
        return zC;
    }

    @Override // defpackage.vc9, defpackage.d36
    public final Object d() {
        Object objD;
        synchronized (this.d) {
            objD = super.d();
        }
        return objD;
    }
}
