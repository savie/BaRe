package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class qc9 extends ho6 {
    @Override // defpackage.ho6
    public final nc9 b0(ue9 ue9Var) {
        nc9 nc9Var;
        nc9 nc9Var2 = nc9.d;
        synchronized (ue9Var) {
            try {
                nc9Var = ue9Var.b;
                if (nc9Var != nc9Var2) {
                    ue9Var.b = nc9Var2;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return nc9Var;
    }

    @Override // defpackage.ho6
    public final sc9 d0(ue9 ue9Var) {
        sc9 sc9Var;
        sc9 sc9Var2 = sc9.c;
        synchronized (ue9Var) {
            try {
                sc9Var = ue9Var.c;
                if (sc9Var != sc9Var2) {
                    ue9Var.c = sc9Var2;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return sc9Var;
    }

    @Override // defpackage.ho6
    public final void e0(sc9 sc9Var, sc9 sc9Var2) {
        sc9Var.b = sc9Var2;
    }

    @Override // defpackage.ho6
    public final void f0(sc9 sc9Var, Thread thread) {
        sc9Var.a = thread;
    }

    @Override // defpackage.ho6
    public final boolean g0(ue9 ue9Var, nc9 nc9Var, nc9 nc9Var2) {
        synchronized (ue9Var) {
            try {
                if (ue9Var.b != nc9Var) {
                    return false;
                }
                ue9Var.b = nc9Var2;
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // defpackage.ho6
    public final boolean h0(uc9 uc9Var, Object obj, Object obj2) {
        synchronized (uc9Var) {
            try {
                if (uc9Var.a != obj) {
                    return false;
                }
                uc9Var.a = obj2;
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // defpackage.ho6
    public final boolean i0(uc9 uc9Var, sc9 sc9Var, sc9 sc9Var2) {
        synchronized (uc9Var) {
            try {
                if (uc9Var.c != sc9Var) {
                    return false;
                }
                uc9Var.c = sc9Var2;
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
