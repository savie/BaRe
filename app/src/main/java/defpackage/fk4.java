package defpackage;

import java.io.Closeable;
import java.io.Flushable;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class fk4 implements Closeable, Flushable {
    public r56 a;

    static {
        lp7[] lp7VarArrValues = lp7.values();
        if (lp7VarArrValues.length > 31) {
            l0.i("Can not use type `%s` with JacksonFeatureSet: too many entries (%d > 31)", new Object[]{lp7VarArrValues[0].getClass().getName(), Integer.valueOf(lp7VarArrValues.length)});
            return;
        }
        for (lp7 lp7Var : lp7VarArrValues) {
            lp7Var.getClass();
        }
        lp7.CAN_WRITE_FORMATTED_NUMBERS.c();
        lp7.CAN_WRITE_BINARY_NATIVELY.c();
    }

    public static void b(int i, int i2) {
        if (i2 <= i) {
            return;
        }
        l0.i("invalid argument(s) (offset=%d, length=%d) for input array of %d element", new Object[]{0, Integer.valueOf(i2), Integer.valueOf(i)});
    }

    public abstract void A(float f);

    public abstract void D(int i);

    public abstract void G(long j);

    public abstract void J(char c);

    public abstract void O(String str);

    public abstract void S(Object obj);

    public abstract void U(Object obj);

    public abstract void W();

    public abstract void Y(Object obj);

    public abstract void Z(z77 z77Var);

    public final void a(String str) {
        throw new dk4(str, this);
    }

    public abstract void b0(String str);

    public abstract void c0(char[] cArr, int i, int i2);

    public abstract void g(Object obj);

    public final void g0(nw8 nw8Var) throws dp7 {
        Object obj = nw8Var.c;
        mm4 mm4Var = nw8Var.f;
        String string = Objects.toString(obj, null);
        boolean z = false;
        if (string != null) {
            int i = nw8Var.e;
            if (mm4Var != mm4.START_OBJECT) {
                if (i == 0) {
                    throw null;
                }
                if (i == 3 || i == 4) {
                    nw8Var.e = 1;
                    i = 1;
                }
            }
            nw8Var.g = true;
            int iA = dj7.A(i);
            if (iA == 1) {
                W();
                u(string);
            } else if (iA == 2) {
                Y(nw8Var.a);
                u(nw8Var.d);
                b0(string);
                z = true;
            } else if (iA != 3 && iA != 4) {
                pw8 pw8Var = (pw8) this;
                pw8Var.l0("start an array");
                v08 v08Var = pw8Var.e;
                v08 v08Var2 = (v08) v08Var.i;
                if (v08Var2 == null) {
                    f41 f41Var = (f41) v08Var.h;
                    v08Var2 = new v08(1, v08Var, f41Var != null ? new f41((cv3) f41Var.a) : null);
                    v08Var.i = v08Var2;
                } else {
                    v08Var2.b = 1;
                    v08Var2.c = -1;
                    v08Var2.e = null;
                    v08Var2.f = false;
                    f41 f41Var2 = (f41) v08Var2.h;
                    if (f41Var2 != null) {
                        f41Var2.b = null;
                        f41Var2.c = null;
                        f41Var2.d = null;
                    }
                }
                pw8Var.e = v08Var2;
                int i2 = v08Var2.d;
                pw8Var.n.getClass();
                mp7.a(i2);
                r56 r56Var = pw8Var.a;
                if (r56Var != null) {
                    ((kf2) r56Var).a(pw8Var);
                } else {
                    if (pw8Var.K >= pw8Var.L) {
                        pw8Var.u0();
                    }
                    char[] cArr = pw8Var.I;
                    int i3 = pw8Var.K;
                    pw8Var.K = i3 + 1;
                    cArr[i3] = '[';
                }
                b0(string);
            }
        }
        int iOrdinal = mm4Var.ordinal();
        if (iOrdinal != 1) {
            if (iOrdinal != 3) {
                return;
            }
            S(nw8Var.a);
        } else {
            if (z) {
                return;
            }
            Y(nw8Var.a);
        }
    }

    public abstract boolean h(ek4 ek4Var);

    public final void h0(nw8 nw8Var) {
        mm4 mm4Var = nw8Var.f;
        if (mm4Var == mm4.START_OBJECT) {
            q();
        } else if (mm4Var == mm4.START_ARRAY) {
            n();
        }
        if (nw8Var.g) {
            int iA = dj7.A(nw8Var.e);
            if (iA == 0) {
                n();
                return;
            }
            if (iA == 2 || iA == 3) {
                return;
            }
            if (iA != 4) {
                q();
                return;
            }
            Object obj = nw8Var.c;
            String strValueOf = obj instanceof String ? (String) obj : String.valueOf(obj);
            u(nw8Var.d);
            b0(strValueOf);
        }
    }

    public abstract void j(bl0 bl0Var, byte[] bArr, int i, int i2);

    public abstract void m(boolean z);

    public abstract void n();

    public abstract void q();

    public abstract void r(z77 z77Var);

    public abstract void u(String str);

    public abstract void v();

    public abstract void z(double d);
}
