package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class f5 extends ho6 {
    @Override // defpackage.ho6
    public final void I(g5 g5Var, g5 g5Var2) {
        g5Var.b = g5Var2;
    }

    @Override // defpackage.ho6
    public final void J(g5 g5Var, Thread thread) {
        g5Var.a = thread;
    }

    @Override // defpackage.ho6
    public final boolean b(h5 h5Var, d5 d5Var) {
        d5 d5Var2 = d5.b;
        synchronized (h5Var) {
            try {
                if (h5Var.b != d5Var) {
                    return false;
                }
                h5Var.b = d5Var2;
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // defpackage.ho6
    public final boolean c(h5 h5Var, Object obj, Object obj2) {
        synchronized (h5Var) {
            try {
                if (h5Var.a != obj) {
                    return false;
                }
                h5Var.a = obj2;
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // defpackage.ho6
    public final boolean d(h5 h5Var, g5 g5Var, g5 g5Var2) {
        synchronized (h5Var) {
            try {
                if (h5Var.c != g5Var) {
                    return false;
                }
                h5Var.c = g5Var2;
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
