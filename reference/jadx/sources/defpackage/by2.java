package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class by2 implements qk6, kk6 {
    public final Object a;
    public final qk6 b;
    public volatile kk6 c;
    public volatile kk6 d;
    public int e = 3;
    public int f = 3;

    public by2(Object obj, qk6 qk6Var) {
        this.a = obj;
        this.b = qk6Var;
    }

    @Override // defpackage.qk6, defpackage.kk6
    public final boolean a() {
        boolean z;
        synchronized (this.a) {
            try {
                z = this.c.a() || this.d.a();
            } catch (Throwable th) {
                throw th;
            }
        }
        return z;
    }

    @Override // defpackage.kk6
    public final boolean b(kk6 kk6Var) {
        if (kk6Var instanceof by2) {
            by2 by2Var = (by2) kk6Var;
            if (this.c.b(by2Var.c) && this.d.b(by2Var.d)) {
                return true;
            }
        }
        return false;
    }

    @Override // defpackage.qk6
    public final void c(kk6 kk6Var) {
        synchronized (this.a) {
            try {
                if (kk6Var.equals(this.d)) {
                    this.f = 5;
                    qk6 qk6Var = this.b;
                    if (qk6Var != null) {
                        qk6Var.c(this);
                    }
                    return;
                }
                this.e = 5;
                if (this.f != 1) {
                    this.f = 1;
                    this.d.j();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // defpackage.kk6
    public final void clear() {
        synchronized (this.a) {
            try {
                this.e = 3;
                this.c.clear();
                if (this.f != 3) {
                    this.f = 3;
                    this.d.clear();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // defpackage.qk6
    public final void d(kk6 kk6Var) {
        synchronized (this.a) {
            try {
                if (kk6Var.equals(this.c)) {
                    this.e = 4;
                } else if (kk6Var.equals(this.d)) {
                    this.f = 4;
                }
                qk6 qk6Var = this.b;
                if (qk6Var != null) {
                    qk6Var.d(this);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // defpackage.kk6
    public final void e() {
        synchronized (this.a) {
            try {
                if (this.e == 1) {
                    this.e = 2;
                    this.c.e();
                }
                if (this.f == 1) {
                    this.f = 2;
                    this.d.e();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // defpackage.qk6
    public final boolean f(kk6 kk6Var) {
        boolean z;
        synchronized (this.a) {
            qk6 qk6Var = this.b;
            z = (qk6Var == null || qk6Var.f(this)) && kk6Var.equals(this.c);
        }
        return z;
    }

    @Override // defpackage.qk6
    public final boolean g(kk6 kk6Var) {
        boolean z;
        boolean zEquals;
        int i;
        synchronized (this.a) {
            qk6 qk6Var = this.b;
            z = false;
            if (qk6Var == null || qk6Var.g(this)) {
                if (this.e != 5) {
                    zEquals = kk6Var.equals(this.c);
                } else {
                    zEquals = kk6Var.equals(this.d) && ((i = this.f) == 4 || i == 5);
                }
                if (zEquals) {
                    z = true;
                }
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
        synchronized (this.a) {
            try {
                qk6 qk6Var = this.b;
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
        synchronized (this.a) {
            qk6 qk6Var = this.b;
            z = qk6Var == null || qk6Var.h(this);
        }
        return z;
    }

    @Override // defpackage.kk6
    public final boolean i() {
        boolean z;
        synchronized (this.a) {
            try {
                z = this.e == 3 && this.f == 3;
            } catch (Throwable th) {
                throw th;
            }
        }
        return z;
    }

    @Override // defpackage.kk6
    public final boolean isRunning() {
        boolean z;
        synchronized (this.a) {
            try {
                z = true;
                if (this.e != 1 && this.f != 1) {
                    z = false;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return z;
    }

    @Override // defpackage.kk6
    public final void j() {
        synchronized (this.a) {
            try {
                if (this.e != 1) {
                    this.e = 1;
                    this.c.j();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // defpackage.kk6
    public final boolean k() {
        boolean z;
        synchronized (this.a) {
            try {
                z = this.e == 4 || this.f == 4;
            } catch (Throwable th) {
                throw th;
            }
        }
        return z;
    }
}
