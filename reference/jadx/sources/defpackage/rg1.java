package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class rg1 implements AutoCloseable {
    public final vg1 a;
    public boolean b;

    public rg1(vg1 vg1Var) {
        this.a = vg1Var;
    }

    @Override // java.lang.AutoCloseable
    public final void close() {
        if (this.b) {
            return;
        }
        synchronized (this) {
            if (this.b) {
                return;
            }
            this.b = true;
            vg1 vg1Var = this.a;
            synchronized (vg1Var.b) {
                if (!vg1Var.c) {
                    throw new IllegalStateException("Cloud maintenance lease is not active");
                }
                vg1Var.c = false;
            }
        }
    }
}
