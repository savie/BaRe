package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class d38 implements qk6, kk6 {
    public final qk6 a;
    public final Object b;
    public volatile fh7 c;
    public volatile kk6 d;
    public int e = 3;
    public int f = 3;
    public boolean g;

    public d38(Object obj, qk6 qk6Var) {
        this.b = obj;
        this.a = qk6Var;
    }

    @Override // defpackage.qk6, defpackage.kk6
    public final boolean a() {
        boolean z;
        synchronized (this.b) {
            try {
                z = this.d.a() || this.c.a();
            } catch (Throwable th) {
                throw th;
            }
        }
        return z;
    }

    @Override // defpackage.kk6
    public final boolean b(kk6 kk6Var) {
        if (!(kk6Var instanceof d38)) {
            return false;
        }
        d38 d38Var = (d38) kk6Var;
        if (this.c == null) {
            if (d38Var.c != null) {
                return false;
            }
        } else if (!this.c.b(d38Var.c)) {
            return false;
        }
        if (this.d == null) {
            return d38Var.d == null;
        }
        return this.d.b(d38Var.d);
    }

    @Override // defpackage.qk6
    public final void c(kk6 kk6Var) {
        synchronized (this.b) {
            try {
                if (!kk6Var.equals(this.c)) {
                    this.f = 5;
                    return;
                }
                this.e = 5;
                qk6 qk6Var = this.a;
                if (qk6Var != null) {
                    qk6Var.c(this);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // defpackage.kk6
    public final void clear() {
        synchronized (this.b) {
            this.g = false;
            this.e = 3;
            this.f = 3;
            this.d.clear();
            this.c.clear();
        }
    }

    @Override // defpackage.qk6
    public final void d(kk6 kk6Var) {
        synchronized (this.b) {
            try {
                if (kk6Var.equals(this.d)) {
                    this.f = 4;
                    return;
                }
                this.e = 4;
                qk6 qk6Var = this.a;
                if (qk6Var != null) {
                    qk6Var.d(this);
                }
                if (!fz5.c(this.f)) {
                    this.d.clear();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // defpackage.kk6
    public final void e() {
        synchronized (this.b) {
            try {
                if (!fz5.c(this.f)) {
                    this.f = 2;
                    this.d.e();
                }
                if (!fz5.c(this.e)) {
                    this.e = 2;
                    this.c.e();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // defpackage.qk6
    public final boolean f(kk6 kk6Var) {
        boolean z;
        synchronized (this.b) {
            try {
                qk6 qk6Var = this.a;
                z = (qk6Var == null || qk6Var.f(this)) && kk6Var.equals(this.c) && this.e != 2;
            } catch (Throwable th) {
                throw th;
            }
        }
        return z;
    }

    @Override // defpackage.qk6
    public final boolean g(kk6 kk6Var) {
        boolean z;
        synchronized (this.b) {
            try {
                qk6 qk6Var = this.a;
                z = (qk6Var == null || qk6Var.g(this)) && kk6Var.equals(this.c) && !a();
            } catch (Throwable th) {
                throw th;
            }
        }
        return z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v2, types: [qk6] */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v5 */
    @Override // defpackage.qk6
    public final qk6 getRoot() {
        ?? root;
        synchronized (this.b) {
            try {
                qk6 qk6Var = this.a;
                this = this;
                if (qk6Var != null) {
                    root = qk6Var.getRoot();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return root;
    }

    @Override // defpackage.qk6
    public final boolean h(kk6 kk6Var) {
        boolean z;
        synchronized (this.b) {
            try {
                qk6 qk6Var = this.a;
                z = (qk6Var == null || qk6Var.h(this)) && (kk6Var.equals(this.c) || this.e != 4);
            } catch (Throwable th) {
                throw th;
            }
        }
        return z;
    }

    @Override // defpackage.kk6
    public final boolean i() {
        boolean z;
        synchronized (this.b) {
            z = this.e == 3;
        }
        return z;
    }

    @Override // defpackage.kk6
    public final boolean isRunning() {
        boolean z;
        synchronized (this.b) {
            z = true;
            if (this.e != 1) {
                z = false;
            }
        }
        return z;
    }

    @Override // defpackage.kk6
    public final void j() {
        synchronized (this.b) {
            try {
                this.g = true;
                try {
                    if (this.e != 4 && this.f != 1) {
                        this.f = 1;
                        this.d.j();
                    }
                    if (this.g && this.e != 1) {
                        this.e = 1;
                        this.c.j();
                    }
                    this.g = false;
                } catch (Throwable th) {
                    this.g = false;
                    throw th;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // defpackage.kk6
    public final boolean k() {
        boolean z;
        synchronized (this.b) {
            z = this.e == 4;
        }
        return z;
    }
}
