package defpackage;

import java.lang.annotation.Annotation;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class op7 {
    public final wo1 a;
    public final ni4 b;
    public final ow8 c;
    public final op7[] d;
    public final dj4 e;
    public boolean f;
    public String g;
    public String h;

    public op7(wo1 wo1Var, ni4 ni4Var, ow8 ow8Var, op7[] op7VarArr) {
        wo1Var.getClass();
        this.a = wo1Var;
        this.b = ni4Var;
        this.c = ow8Var;
        this.d = op7VarArr;
        this.e = ni4Var.a;
        int iOrdinal = ow8Var.ordinal();
        if (op7VarArr != null) {
            op7 op7Var = op7VarArr[iOrdinal];
            if (op7Var == null && op7Var == this) {
                return;
            }
            op7VarArr[iOrdinal] = this;
        }
    }

    public final op7 a(p77 p77Var) {
        op7 op7Var;
        p77Var.getClass();
        ni4 ni4Var = this.b;
        ow8 ow8VarB = wx3.B(ni4Var, p77Var);
        char c = ow8VarB.a;
        wo1 wo1Var = this.a;
        wo1Var.c(c);
        wo1Var.a = true;
        String str = this.g;
        if (str != null) {
            String strA = this.h;
            if (strA == null) {
                strA = p77Var.a();
            }
            wo1Var.b();
            wo1Var.d(str);
            wo1Var.c(':');
            j(strA);
            this.g = null;
            this.h = null;
        }
        if (this.c == ow8VarB) {
            return this;
        }
        op7[] op7VarArr = this.d;
        return (op7VarArr == null || (op7Var = op7VarArr[ow8VarB.ordinal()]) == null) ? new op7(wo1Var, ni4Var, ow8VarB, op7VarArr) : op7Var;
    }

    public final void b(p77 p77Var, int i) {
        p77Var.getClass();
        int iOrdinal = this.c.ordinal();
        wo1 wo1Var = this.a;
        boolean z = true;
        if (iOrdinal == 1) {
            if (!wo1Var.a) {
                wo1Var.c(',');
            }
            wo1Var.b();
            return;
        }
        if (iOrdinal == 2) {
            if (wo1Var.a) {
                this.f = true;
                wo1Var.b();
                return;
            }
            if (i % 2 == 0) {
                wo1Var.c(',');
                wo1Var.b();
            } else {
                wo1Var.c(':');
                wo1Var.e();
                z = false;
            }
            this.f = z;
            return;
        }
        if (iOrdinal != 3) {
            if (!wo1Var.a) {
                wo1Var.c(',');
            }
            wo1Var.b();
            vm4.y(this.b, p77Var);
            j(p77Var.g(i));
            wo1Var.c(':');
            wo1Var.e();
            return;
        }
        if (i == 0) {
            this.f = true;
        }
        if (i == 1) {
            wo1Var.c(',');
            wo1Var.e();
            this.f = false;
        }
    }

    public final void c(int i) {
        if (this.f) {
            j(String.valueOf(i));
        } else {
            ((lm4) this.a.b).c(String.valueOf(i));
        }
    }

    public final void d(long j) {
        if (this.f) {
            j(String.valueOf(j));
        } else {
            ((lm4) this.a.b).c(String.valueOf(j));
        }
    }

    public final void e(p77 p77Var, int i, long j) {
        p77Var.getClass();
        b(p77Var, i);
        d(j);
    }

    public final void f() {
        wo1 wo1Var = this.a;
        wo1Var.getClass();
        ((lm4) wo1Var.b).c("null");
    }

    public final void g(p77 p77Var, int i, do4 do4Var, Object obj) {
        p77Var.getClass();
        do4Var.getClass();
        if (obj != null || this.e.a) {
            p77Var.getClass();
            do4Var.getClass();
            b(p77Var, i);
            if (do4Var.d().c()) {
                i(do4Var, obj);
            } else if (obj == null) {
                f();
            } else {
                i(do4Var, obj);
            }
        }
    }

    public final void h(p77 p77Var, int i, do4 do4Var, Object obj) {
        p77Var.getClass();
        do4Var.getClass();
        b(p77Var, i);
        i(do4Var, obj);
    }

    public final void i(do4 do4Var, Object obj) {
        String strDiscriminator;
        do4Var.getClass();
        dj4 dj4Var = this.b.a;
        dj4Var.getClass();
        int iOrdinal = dj4Var.e.ordinal();
        if (iOrdinal == 0) {
            strDiscriminator = null;
        } else {
            if (iOrdinal == 1) {
                zh8 zh8VarE = do4Var.d().e();
                if (pe4.d(zh8VarE, dr7.g) || pe4.d(zh8VarE, gr7.g)) {
                    p77 p77VarD = do4Var.d();
                    p77VarD.getClass();
                    Iterator it = p77VarD.getAnnotations().iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            strDiscriminator = dj4Var.c;
                            break;
                        }
                        Annotation annotation = (Annotation) it.next();
                        if (annotation instanceof cj4) {
                            strDiscriminator = ((cj4) annotation).discriminator();
                            break;
                        }
                    }
                }
            } else if (iOrdinal != 2) {
                q.j();
                return;
            }
            strDiscriminator = null;
        }
        if (strDiscriminator != null) {
            String strA = do4Var.d().a();
            this.g = strDiscriminator;
            this.h = strA;
        }
        do4Var.b(this, obj);
    }

    public final void j(String str) {
        str.getClass();
        this.a.d(str);
    }

    public final void k(p77 p77Var) {
        p77Var.getClass();
        wo1 wo1Var = this.a;
        wo1Var.getClass();
        wo1Var.a = false;
        wo1Var.c(this.c.b);
    }

    public final boolean l(p77 p77Var) {
        this.e.getClass();
        return false;
    }
}
