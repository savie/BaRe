package defpackage;

import com.google.android.gms.dynamite.descriptors.com.google.firebase.auth.ModuleDescriptor;
import com.jcraft.jsch.Argon2;
import java.nio.charset.Charset;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class hk1 {
    public final gk1 a;
    public int b;
    public int c;
    public int d = 0;

    public hk1(gk1 gk1Var) {
        Charset charset = yd4.a;
        this.a = gk1Var;
        gk1Var.b = this;
    }

    public final int a() {
        int i = this.d;
        if (i != 0) {
            this.b = i;
            this.d = 0;
        } else {
            this.b = this.a.v();
        }
        int i2 = this.b;
        if (i2 == 0 || i2 == this.c) {
            return Integer.MAX_VALUE;
        }
        return i2 >>> 3;
    }

    public final void b(Object obj, k57 k57Var, c13 c13Var) {
        int i = this.c;
        this.c = ((this.b >>> 3) << 3) | 4;
        try {
            k57Var.f(obj, this, c13Var);
            if (this.b != this.c) {
                throw new fg4("Failed to parse the message.");
            }
            this.c = i;
        } catch (Throwable th) {
            this.c = i;
            throw th;
        }
    }

    public final void c(Object obj, k57 k57Var, c13 c13Var) throws fg4 {
        gk1 gk1Var = this.a;
        int iW = gk1Var.w();
        if (gk1Var.a >= 100) {
            throw new fg4("Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit.");
        }
        int iE = gk1Var.e(iW);
        gk1Var.a++;
        k57Var.f(obj, this, c13Var);
        gk1Var.a(0);
        gk1Var.a--;
        gk1Var.d(iE);
    }

    public final void d(xd4 xd4Var) throws fg4 {
        int iV;
        int i = this.b & 7;
        gk1 gk1Var = this.a;
        if (i == 0) {
            do {
                ((t96) xd4Var).add(Boolean.valueOf(gk1Var.f()));
                if (gk1Var.c()) {
                    return;
                } else {
                    iV = gk1Var.v();
                }
            } while (iV == this.b);
            this.d = iV;
            return;
        }
        if (i != 2) {
            throw fg4.b();
        }
        int iB = gk1Var.b() + gk1Var.w();
        do {
            ((t96) xd4Var).add(Boolean.valueOf(gk1Var.f()));
        } while (gk1Var.b() < iB);
        v(iB);
    }

    public final gy0 e() throws eg4 {
        w(2);
        return this.a.g();
    }

    public final void f(xd4 xd4Var) throws eg4 {
        int iV;
        if ((this.b & 7) != 2) {
            throw fg4.b();
        }
        do {
            ((t96) xd4Var).add(e());
            gk1 gk1Var = this.a;
            if (gk1Var.c()) {
                return;
            } else {
                iV = gk1Var.v();
            }
        } while (iV == this.b);
        this.d = iV;
    }

    public final void g(xd4 xd4Var) throws fg4 {
        int iV;
        int i = this.b & 7;
        gk1 gk1Var = this.a;
        if (i == 1) {
            do {
                ((t96) xd4Var).add(Double.valueOf(gk1Var.h()));
                if (gk1Var.c()) {
                    return;
                } else {
                    iV = gk1Var.v();
                }
            } while (iV == this.b);
            this.d = iV;
            return;
        }
        if (i != 2) {
            throw fg4.b();
        }
        int iW = gk1Var.w();
        if ((iW & 7) != 0) {
            throw new fg4("Failed to parse the message.");
        }
        int iB = gk1Var.b() + iW;
        do {
            ((t96) xd4Var).add(Double.valueOf(gk1Var.h()));
        } while (gk1Var.b() < iB);
    }

    public final void h(xd4 xd4Var) throws fg4 {
        int iV;
        int i = this.b & 7;
        gk1 gk1Var = this.a;
        if (i == 0) {
            do {
                ((t96) xd4Var).add(Integer.valueOf(gk1Var.j()));
                if (gk1Var.c()) {
                    return;
                } else {
                    iV = gk1Var.v();
                }
            } while (iV == this.b);
            this.d = iV;
            return;
        }
        if (i != 2) {
            throw fg4.b();
        }
        int iB = gk1Var.b() + gk1Var.w();
        do {
            ((t96) xd4Var).add(Integer.valueOf(gk1Var.j()));
        } while (gk1Var.b() < iB);
        v(iB);
    }

    public final Object i(gw8 gw8Var, Class cls, c13 c13Var) throws fg4 {
        int iOrdinal = gw8Var.ordinal();
        gk1 gk1Var = this.a;
        switch (iOrdinal) {
            case 0:
                w(1);
                return Double.valueOf(gk1Var.h());
            case 1:
                w(5);
                return Float.valueOf(gk1Var.m());
            case 2:
                w(0);
                return Long.valueOf(gk1Var.o());
            case 3:
                w(0);
                return Long.valueOf(gk1Var.x());
            case 4:
                w(0);
                return Integer.valueOf(gk1Var.n());
            case 5:
                w(1);
                return Long.valueOf(gk1Var.l());
            case 6:
                w(5);
                return Integer.valueOf(gk1Var.k());
            case 7:
                w(0);
                return Boolean.valueOf(gk1Var.f());
            case 8:
                w(2);
                return gk1Var.u();
            case XmlPullParser.COMMENT /* 9 */:
            default:
                c6.f("unsupported field type.");
                return null;
            case 10:
                w(2);
                k57 k57VarA = s96.c.a(cls);
                av3 av3VarI = k57VarA.i();
                c(av3VarI, k57VarA, c13Var);
                k57VarA.c(av3VarI);
                return av3VarI;
            case ModuleDescriptor.MODULE_VERSION /* 11 */:
                return e();
            case 12:
                w(0);
                return Integer.valueOf(gk1Var.w());
            case 13:
                w(0);
                return Integer.valueOf(gk1Var.j());
            case 14:
                w(5);
                return Integer.valueOf(gk1Var.p());
            case 15:
                w(1);
                return Long.valueOf(gk1Var.q());
            case Argon2.V10 /* 16 */:
                w(0);
                return Integer.valueOf(gk1Var.r());
            case 17:
                w(0);
                return Long.valueOf(gk1Var.s());
        }
    }

    public final void j(xd4 xd4Var) throws fg4 {
        int iV;
        int i = this.b & 7;
        gk1 gk1Var = this.a;
        if (i == 2) {
            int iW = gk1Var.w();
            if ((iW & 3) != 0) {
                throw new fg4("Failed to parse the message.");
            }
            int iB = gk1Var.b() + iW;
            do {
                ((t96) xd4Var).add(Integer.valueOf(gk1Var.k()));
            } while (gk1Var.b() < iB);
            return;
        }
        if (i != 5) {
            throw fg4.b();
        }
        do {
            ((t96) xd4Var).add(Integer.valueOf(gk1Var.k()));
            if (gk1Var.c()) {
                return;
            } else {
                iV = gk1Var.v();
            }
        } while (iV == this.b);
        this.d = iV;
    }

    public final void k(xd4 xd4Var) throws fg4 {
        int iV;
        int i = this.b & 7;
        gk1 gk1Var = this.a;
        if (i == 1) {
            do {
                ((t96) xd4Var).add(Long.valueOf(gk1Var.l()));
                if (gk1Var.c()) {
                    return;
                } else {
                    iV = gk1Var.v();
                }
            } while (iV == this.b);
            this.d = iV;
            return;
        }
        if (i != 2) {
            throw fg4.b();
        }
        int iW = gk1Var.w();
        if ((iW & 7) != 0) {
            throw new fg4("Failed to parse the message.");
        }
        int iB = gk1Var.b() + iW;
        do {
            ((t96) xd4Var).add(Long.valueOf(gk1Var.l()));
        } while (gk1Var.b() < iB);
    }

    public final void l(xd4 xd4Var) throws fg4 {
        int iV;
        int i = this.b & 7;
        gk1 gk1Var = this.a;
        if (i == 2) {
            int iW = gk1Var.w();
            if ((iW & 3) != 0) {
                throw new fg4("Failed to parse the message.");
            }
            int iB = gk1Var.b() + iW;
            do {
                ((t96) xd4Var).add(Float.valueOf(gk1Var.m()));
            } while (gk1Var.b() < iB);
            return;
        }
        if (i != 5) {
            throw fg4.b();
        }
        do {
            ((t96) xd4Var).add(Float.valueOf(gk1Var.m()));
            if (gk1Var.c()) {
                return;
            } else {
                iV = gk1Var.v();
            }
        } while (iV == this.b);
        this.d = iV;
    }

    public final void m(xd4 xd4Var) throws fg4 {
        int iV;
        int i = this.b & 7;
        gk1 gk1Var = this.a;
        if (i == 0) {
            do {
                ((t96) xd4Var).add(Integer.valueOf(gk1Var.n()));
                if (gk1Var.c()) {
                    return;
                } else {
                    iV = gk1Var.v();
                }
            } while (iV == this.b);
            this.d = iV;
            return;
        }
        if (i != 2) {
            throw fg4.b();
        }
        int iB = gk1Var.b() + gk1Var.w();
        do {
            ((t96) xd4Var).add(Integer.valueOf(gk1Var.n()));
        } while (gk1Var.b() < iB);
        v(iB);
    }

    public final void n(xd4 xd4Var) throws fg4 {
        int iV;
        int i = this.b & 7;
        gk1 gk1Var = this.a;
        if (i == 0) {
            do {
                ((t96) xd4Var).add(Long.valueOf(gk1Var.o()));
                if (gk1Var.c()) {
                    return;
                } else {
                    iV = gk1Var.v();
                }
            } while (iV == this.b);
            this.d = iV;
            return;
        }
        if (i != 2) {
            throw fg4.b();
        }
        int iB = gk1Var.b() + gk1Var.w();
        do {
            ((t96) xd4Var).add(Long.valueOf(gk1Var.o()));
        } while (gk1Var.b() < iB);
        v(iB);
    }

    public final void o(xd4 xd4Var) throws fg4 {
        int iV;
        int i = this.b & 7;
        gk1 gk1Var = this.a;
        if (i == 2) {
            int iW = gk1Var.w();
            if ((iW & 3) != 0) {
                throw new fg4("Failed to parse the message.");
            }
            int iB = gk1Var.b() + iW;
            do {
                ((t96) xd4Var).add(Integer.valueOf(gk1Var.p()));
            } while (gk1Var.b() < iB);
            return;
        }
        if (i != 5) {
            throw fg4.b();
        }
        do {
            ((t96) xd4Var).add(Integer.valueOf(gk1Var.p()));
            if (gk1Var.c()) {
                return;
            } else {
                iV = gk1Var.v();
            }
        } while (iV == this.b);
        this.d = iV;
    }

    public final void p(xd4 xd4Var) throws fg4 {
        int iV;
        int i = this.b & 7;
        gk1 gk1Var = this.a;
        if (i == 1) {
            do {
                ((t96) xd4Var).add(Long.valueOf(gk1Var.q()));
                if (gk1Var.c()) {
                    return;
                } else {
                    iV = gk1Var.v();
                }
            } while (iV == this.b);
            this.d = iV;
            return;
        }
        if (i != 2) {
            throw fg4.b();
        }
        int iW = gk1Var.w();
        if ((iW & 7) != 0) {
            throw new fg4("Failed to parse the message.");
        }
        int iB = gk1Var.b() + iW;
        do {
            ((t96) xd4Var).add(Long.valueOf(gk1Var.q()));
        } while (gk1Var.b() < iB);
    }

    public final void q(xd4 xd4Var) throws fg4 {
        int iV;
        int i = this.b & 7;
        gk1 gk1Var = this.a;
        if (i == 0) {
            do {
                ((t96) xd4Var).add(Integer.valueOf(gk1Var.r()));
                if (gk1Var.c()) {
                    return;
                } else {
                    iV = gk1Var.v();
                }
            } while (iV == this.b);
            this.d = iV;
            return;
        }
        if (i != 2) {
            throw fg4.b();
        }
        int iB = gk1Var.b() + gk1Var.w();
        do {
            ((t96) xd4Var).add(Integer.valueOf(gk1Var.r()));
        } while (gk1Var.b() < iB);
        v(iB);
    }

    public final void r(xd4 xd4Var) throws fg4 {
        int iV;
        int i = this.b & 7;
        gk1 gk1Var = this.a;
        if (i == 0) {
            do {
                ((t96) xd4Var).add(Long.valueOf(gk1Var.s()));
                if (gk1Var.c()) {
                    return;
                } else {
                    iV = gk1Var.v();
                }
            } while (iV == this.b);
            this.d = iV;
            return;
        }
        if (i != 2) {
            throw fg4.b();
        }
        int iB = gk1Var.b() + gk1Var.w();
        do {
            ((t96) xd4Var).add(Long.valueOf(gk1Var.s()));
        } while (gk1Var.b() < iB);
        v(iB);
    }

    public final void s(xd4 xd4Var, boolean z) throws eg4 {
        String strT;
        int iV;
        if ((this.b & 7) != 2) {
            throw fg4.b();
        }
        do {
            gk1 gk1Var = this.a;
            if (z) {
                w(2);
                strT = gk1Var.u();
            } else {
                w(2);
                strT = gk1Var.t();
            }
            ((t96) xd4Var).add(strT);
            if (gk1Var.c()) {
                return;
            } else {
                iV = gk1Var.v();
            }
        } while (iV == this.b);
        this.d = iV;
    }

    public final void t(xd4 xd4Var) throws fg4 {
        int iV;
        int i = this.b & 7;
        gk1 gk1Var = this.a;
        if (i == 0) {
            do {
                ((t96) xd4Var).add(Integer.valueOf(gk1Var.w()));
                if (gk1Var.c()) {
                    return;
                } else {
                    iV = gk1Var.v();
                }
            } while (iV == this.b);
            this.d = iV;
            return;
        }
        if (i != 2) {
            throw fg4.b();
        }
        int iB = gk1Var.b() + gk1Var.w();
        do {
            ((t96) xd4Var).add(Integer.valueOf(gk1Var.w()));
        } while (gk1Var.b() < iB);
        v(iB);
    }

    public final void u(xd4 xd4Var) throws fg4 {
        int iV;
        int i = this.b & 7;
        gk1 gk1Var = this.a;
        if (i == 0) {
            do {
                ((t96) xd4Var).add(Long.valueOf(gk1Var.x()));
                if (gk1Var.c()) {
                    return;
                } else {
                    iV = gk1Var.v();
                }
            } while (iV == this.b);
            this.d = iV;
            return;
        }
        if (i != 2) {
            throw fg4.b();
        }
        int iB = gk1Var.b() + gk1Var.w();
        do {
            ((t96) xd4Var).add(Long.valueOf(gk1Var.x()));
        } while (gk1Var.b() < iB);
        v(iB);
    }

    public final void v(int i) throws fg4 {
        if (this.a.b() != i) {
            throw fg4.e();
        }
    }

    public final void w(int i) throws eg4 {
        if ((this.b & 7) != i) {
            throw fg4.b();
        }
    }

    public final boolean x() {
        int i;
        gk1 gk1Var = this.a;
        if (gk1Var.c() || (i = this.b) == this.c) {
            return false;
        }
        return gk1Var.y(i);
    }
}
