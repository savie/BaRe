package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ih7 implements Runnable {
    public final /* synthetic */ boolean a;
    public final /* synthetic */ jh7 b;

    public ih7(jh7 jh7Var, boolean z) {
        this.b = jh7Var;
        this.a = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        xh8.c();
        kh7 kh7Var = this.b.a;
        boolean z = kh7Var.a;
        boolean z2 = this.a;
        kh7Var.a = z2;
        if (z != z2) {
            kh7Var.b.a(z2);
        }
    }
}
