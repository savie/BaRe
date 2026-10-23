package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class uy2 extends rx1 {
    public static final /* synthetic */ int f = 0;
    public long c;
    public boolean d;
    public w40 e;

    public final void q(boolean z) {
        long j = this.c - (z ? 4294967296L : 1L);
        this.c = j;
        if (j <= 0 && this.d) {
            shutdown();
        }
    }

    public final void r(boolean z) {
        this.c = (z ? 4294967296L : 1L) + this.c;
        if (z) {
            return;
        }
        this.d = true;
    }

    public abstract void shutdown();

    public abstract long u();

    public final boolean v() {
        w40 w40Var = this.e;
        if (w40Var == null) {
            return false;
        }
        an2 an2Var = (an2) (w40Var.isEmpty() ? null : w40Var.removeFirst());
        if (an2Var == null) {
            return false;
        }
        an2Var.run();
        return true;
    }
}
