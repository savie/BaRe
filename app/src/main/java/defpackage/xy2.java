package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class xy2 implements Runnable, Comparable, in2 {
    private volatile Object _heap;
    public long a;
    public int b = -1;

    public xy2(long j) {
        this.a = j;
    }

    public final int b(long j, yy2 yy2Var, zy2 zy2Var) {
        synchronized (this) {
            if (this._heap == jm1.c) {
                return 2;
            }
            synchronized (yy2Var) {
                try {
                    xy2[] xy2VarArr = yy2Var.a;
                    xy2 xy2Var = xy2VarArr != null ? xy2VarArr[0] : null;
                    if (zy2.p.get(zy2Var) == 1) {
                        return 1;
                    }
                    if (xy2Var == null) {
                        yy2Var.c = j;
                    } else {
                        long j2 = xy2Var.a;
                        if (j2 - j < 0) {
                            j = j2;
                        }
                        if (j - yy2Var.c > 0) {
                            yy2Var.c = j;
                        }
                    }
                    long j3 = this.a;
                    long j4 = yy2Var.c;
                    if (j3 - j4 < 0) {
                        this.a = j4;
                    }
                    yy2Var.a(this);
                    return 0;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public final void c(yy2 yy2Var) {
        if (this._heap != jm1.c) {
            this._heap = yy2Var;
        } else {
            c6.f("Failed requirement.");
        }
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        long j = this.a - ((xy2) obj).a;
        if (j > 0) {
            return 1;
        }
        return j < 0 ? -1 : 0;
    }

    @Override // defpackage.in2
    public final void dispose() {
        synchronized (this) {
            try {
                Object obj = this._heap;
                du9 du9Var = jm1.c;
                if (obj == du9Var) {
                    return;
                }
                yy2 yy2Var = obj instanceof yy2 ? (yy2) obj : null;
                if (yy2Var != null) {
                    synchronized (yy2Var) {
                        Object obj2 = this._heap;
                        if ((obj2 instanceof t28 ? (t28) obj2 : null) != null) {
                            yy2Var.b(this.b);
                        }
                    }
                }
                this._heap = du9Var;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public String toString() {
        return "Delayed[nanos=" + this.a + ']';
    }
}
