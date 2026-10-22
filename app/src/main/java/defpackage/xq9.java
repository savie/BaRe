package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class xq9 extends zh8 {
    @Override // defpackage.zh8
    public final void P(jr9 jr9Var, jr9 jr9Var2) {
        jr9Var.b = jr9Var2;
    }

    @Override // defpackage.zh8
    public final void Q(jr9 jr9Var, Thread thread) {
        jr9Var.a = thread;
    }

    @Override // defpackage.zh8
    public final boolean R(ks9 ks9Var, hl9 hl9Var, hl9 hl9Var2) {
        synchronized (ks9Var) {
            try {
                if (ks9Var.b != hl9Var) {
                    return false;
                }
                ks9Var.b = hl9Var2;
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // defpackage.zh8
    public final boolean S(ks9 ks9Var, Object obj, Object obj2) {
        synchronized (ks9Var) {
            try {
                if (ks9Var.a != obj) {
                    return false;
                }
                ks9Var.a = obj2;
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // defpackage.zh8
    public final boolean T(ks9 ks9Var, jr9 jr9Var, jr9 jr9Var2) {
        synchronized (ks9Var) {
            try {
                if (ks9Var.c != jr9Var) {
                    return false;
                }
                ks9Var.c = jr9Var2;
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
