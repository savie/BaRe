package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class lb4 {
    public int a;
    public int b;
    public int c = 0;
    public Object d;

    public lb4(gk1 gk1Var) {
        byte[] bArr = l79.a;
        if (gk1Var == null) {
            f6.n("input");
            throw null;
        }
        this.d = gk1Var;
        gk1Var.b = this;
    }

    public void A(o79 o79Var) throws p79 {
        int iR;
        gk1 gk1Var = (gk1) this.d;
        int i = this.a & 7;
        if (i == 0) {
            do {
                ((b89) o79Var).add(Long.valueOf(gk1Var.X()));
                if (gk1Var.b0()) {
                    return;
                } else {
                    iR = gk1Var.R();
                }
            } while (iR == this.a);
            this.c = iR;
            return;
        }
        if (i != 2) {
            throw p79.a();
        }
        int iJ = gk1Var.J() + gk1Var.S();
        do {
            ((b89) o79Var).add(Long.valueOf(gk1Var.X()));
        } while (gk1Var.J() < iJ);
        b(iJ);
    }

    public String a(int i) {
        String str;
        vc9 vc9Var = (vc9) this.d;
        if (this.a <= 0) {
            return "";
        }
        String[] strArr = (String[]) vc9Var.c;
        String str2 = i < strArr.length ? strArr[i] : null;
        if (str2 == null) {
            int i2 = this.b;
            char[] cArr = new char[i2 + 1];
            int i3 = 0;
            if (i2 > 0) {
                cArr[0] = '\n';
                for (int i4 = 1; i4 <= this.b; i4++) {
                    cArr[i4] = ' ';
                }
                str = new String(cArr);
            } else {
                str = "\n";
            }
            str2 = str;
            if (i >= ((String[]) vc9Var.c).length) {
                String[] strArr2 = new String[i * 2];
                while (true) {
                    String[] strArr3 = (String[]) vc9Var.c;
                    if (i3 >= strArr3.length) {
                        break;
                    }
                    strArr2[i3] = strArr3[i3];
                    i3++;
                }
                vc9Var.c = strArr2;
            }
            if (i > vc9Var.b) {
                vc9Var.b = i;
            }
            ((String[]) vc9Var.c)[i] = str2;
        }
        return vc9Var.b > 0 ? str2 : "";
    }

    public void b(int i) throws p79 {
        if (((gk1) this.d).J() != i) {
            throw p79.g();
        }
    }

    public void c(o79 o79Var) throws p79 {
        int iR;
        gk1 gk1Var = (gk1) this.d;
        int i = this.a & 7;
        if (i == 0) {
            do {
                ((b89) o79Var).add(Boolean.valueOf(gk1Var.c0()));
                if (gk1Var.b0()) {
                    return;
                } else {
                    iR = gk1Var.R();
                }
            } while (iR == this.a);
            this.c = iR;
            return;
        }
        if (i != 2) {
            throw p79.a();
        }
        int iJ = gk1Var.J() + gk1Var.S();
        do {
            ((b89) o79Var).add(Boolean.valueOf(gk1Var.c0()));
        } while (gk1Var.J() < iJ);
        b(iJ);
    }

    public void d(o79 o79Var, e89 e89Var, f79 f79Var) throws r79 {
        int iR;
        gk1 gk1Var = (gk1) this.d;
        int i = this.a;
        if ((i & 7) != 3) {
            throw p79.a();
        }
        do {
            k79 k79VarZza = e89Var.zza();
            j(k79VarZza, e89Var, f79Var);
            e89Var.e(k79VarZza);
            ((b89) o79Var).add(k79VarZza);
            if (gk1Var.b0() || this.c != 0) {
                return;
            } else {
                iR = gk1Var.R();
            }
        } while (iR == i);
        this.c = iR;
    }

    public void e(o79 o79Var, boolean z) throws r79 {
        String strZ;
        int iR;
        gk1 gk1Var = (gk1) this.d;
        if ((this.a & 7) != 2) {
            throw p79.a();
        }
        do {
            if (z) {
                f(2);
                strZ = gk1Var.a0();
            } else {
                f(2);
                strZ = gk1Var.Z();
            }
            ((b89) o79Var).add(strZ);
            if (gk1Var.b0()) {
                return;
            } else {
                iR = gk1Var.R();
            }
        } while (iR == this.a);
        this.c = iR;
    }

    public void f(int i) {
        if ((this.a & 7) != i) {
            throw p79.a();
        }
    }

    public void g(o79 o79Var) throws r79 {
        int iR;
        gk1 gk1Var = (gk1) this.d;
        if ((this.a & 7) != 2) {
            throw p79.a();
        }
        do {
            ((b89) o79Var).add(y());
            if (gk1Var.b0()) {
                return;
            } else {
                iR = gk1Var.R();
            }
        } while (iR == this.a);
        this.c = iR;
    }

    public void h(o79 o79Var, e89 e89Var, f79 f79Var) throws p79 {
        int iR;
        gk1 gk1Var = (gk1) this.d;
        int i = this.a;
        if ((i & 7) != 2) {
            throw p79.a();
        }
        do {
            k79 k79VarZza = e89Var.zza();
            l(k79VarZza, e89Var, f79Var);
            e89Var.e(k79VarZza);
            ((b89) o79Var).add(k79VarZza);
            if (gk1Var.b0() || this.c != 0) {
                return;
            } else {
                iR = gk1Var.R();
            }
        } while (iR == i);
        this.c = iR;
    }

    public int i() {
        int i = this.c;
        if (i != 0) {
            this.a = i;
            this.c = 0;
        } else {
            this.a = ((gk1) this.d).R();
        }
        int i2 = this.a;
        if (i2 == 0 || i2 == this.b) {
            return Integer.MAX_VALUE;
        }
        return i2 >>> 3;
    }

    public void j(Object obj, e89 e89Var, f79 f79Var) {
        int i = this.b;
        this.b = ((this.a >>> 3) << 3) | 4;
        try {
            e89Var.h(obj, this, f79Var);
            if (this.a != this.b) {
                throw p79.f();
            }
            this.b = i;
        } catch (Throwable th) {
            this.b = i;
            throw th;
        }
    }

    public void k(o79 o79Var) throws p79 {
        int iR;
        gk1 gk1Var = (gk1) this.d;
        int i = this.a & 7;
        if (i == 1) {
            do {
                ((b89) o79Var).add(Double.valueOf(gk1Var.A()));
                if (gk1Var.b0()) {
                    return;
                } else {
                    iR = gk1Var.R();
                }
            } while (iR == this.a);
            this.c = iR;
            return;
        }
        if (i != 2) {
            throw p79.a();
        }
        int iS = gk1Var.S();
        if ((iS & 7) != 0) {
            throw p79.f();
        }
        int iJ = gk1Var.J() + iS;
        do {
            ((b89) o79Var).add(Double.valueOf(gk1Var.A()));
        } while (gk1Var.J() < iJ);
    }

    public void l(Object obj, e89 e89Var, f79 f79Var) throws p79 {
        gk1 gk1Var = (gk1) this.d;
        int iS = gk1Var.S();
        if (gk1Var.a + 0 >= 100) {
            throw new p79("Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit.");
        }
        int I = gk1Var.I(iS);
        gk1Var.a++;
        e89Var.h(obj, this, f79Var);
        gk1Var.K(0);
        gk1Var.a--;
        gk1Var.M(I);
    }

    public void m(o79 o79Var) throws p79 {
        int iR;
        gk1 gk1Var = (gk1) this.d;
        int i = this.a & 7;
        if (i == 0) {
            do {
                ((b89) o79Var).add(Integer.valueOf(gk1Var.L()));
                if (gk1Var.b0()) {
                    return;
                } else {
                    iR = gk1Var.R();
                }
            } while (iR == this.a);
            this.c = iR;
            return;
        }
        if (i != 2) {
            throw p79.a();
        }
        int iJ = gk1Var.J() + gk1Var.S();
        do {
            ((b89) o79Var).add(Integer.valueOf(gk1Var.L()));
        } while (gk1Var.J() < iJ);
        b(iJ);
    }

    public void n(o79 o79Var) throws p79 {
        int iR;
        gk1 gk1Var = (gk1) this.d;
        int i = this.a & 7;
        if (i == 2) {
            int iS = gk1Var.S();
            if ((iS & 3) != 0) {
                throw p79.f();
            }
            int iJ = gk1Var.J() + iS;
            do {
                ((b89) o79Var).add(Integer.valueOf(gk1Var.N()));
            } while (gk1Var.J() < iJ);
            return;
        }
        if (i != 5) {
            throw p79.a();
        }
        do {
            ((b89) o79Var).add(Integer.valueOf(gk1Var.N()));
            if (gk1Var.b0()) {
                return;
            } else {
                iR = gk1Var.R();
            }
        } while (iR == this.a);
        this.c = iR;
    }

    public void o(o79 o79Var) throws p79 {
        int iR;
        gk1 gk1Var = (gk1) this.d;
        int i = this.a & 7;
        if (i == 1) {
            do {
                ((b89) o79Var).add(Long.valueOf(gk1Var.T()));
                if (gk1Var.b0()) {
                    return;
                } else {
                    iR = gk1Var.R();
                }
            } while (iR == this.a);
            this.c = iR;
            return;
        }
        if (i != 2) {
            throw p79.a();
        }
        int iS = gk1Var.S();
        if ((iS & 7) != 0) {
            throw p79.f();
        }
        int iJ = gk1Var.J() + iS;
        do {
            ((b89) o79Var).add(Long.valueOf(gk1Var.T()));
        } while (gk1Var.J() < iJ);
    }

    public void p(o79 o79Var) throws p79 {
        int iR;
        gk1 gk1Var = (gk1) this.d;
        int i = this.a & 7;
        if (i == 2) {
            int iS = gk1Var.S();
            if ((iS & 3) != 0) {
                throw p79.f();
            }
            int iJ = gk1Var.J() + iS;
            do {
                ((b89) o79Var).add(Float.valueOf(gk1Var.H()));
            } while (gk1Var.J() < iJ);
            return;
        }
        if (i != 5) {
            throw p79.a();
        }
        do {
            ((b89) o79Var).add(Float.valueOf(gk1Var.H()));
            if (gk1Var.b0()) {
                return;
            } else {
                iR = gk1Var.R();
            }
        } while (iR == this.a);
        this.c = iR;
    }

    public void q(o79 o79Var) throws p79 {
        int iR;
        gk1 gk1Var = (gk1) this.d;
        int i = this.a & 7;
        if (i == 0) {
            do {
                ((b89) o79Var).add(Integer.valueOf(gk1Var.O()));
                if (gk1Var.b0()) {
                    return;
                } else {
                    iR = gk1Var.R();
                }
            } while (iR == this.a);
            this.c = iR;
            return;
        }
        if (i != 2) {
            throw p79.a();
        }
        int iJ = gk1Var.J() + gk1Var.S();
        do {
            ((b89) o79Var).add(Integer.valueOf(gk1Var.O()));
        } while (gk1Var.J() < iJ);
        b(iJ);
    }

    public void r(o79 o79Var) throws p79 {
        int iR;
        gk1 gk1Var = (gk1) this.d;
        int i = this.a & 7;
        if (i == 0) {
            do {
                ((b89) o79Var).add(Long.valueOf(gk1Var.U()));
                if (gk1Var.b0()) {
                    return;
                } else {
                    iR = gk1Var.R();
                }
            } while (iR == this.a);
            this.c = iR;
            return;
        }
        if (i != 2) {
            throw p79.a();
        }
        int iJ = gk1Var.J() + gk1Var.S();
        do {
            ((b89) o79Var).add(Long.valueOf(gk1Var.U()));
        } while (gk1Var.J() < iJ);
        b(iJ);
    }

    public void s(o79 o79Var) throws p79 {
        int iR;
        gk1 gk1Var = (gk1) this.d;
        int i = this.a & 7;
        if (i == 2) {
            int iS = gk1Var.S();
            if ((iS & 3) != 0) {
                throw p79.f();
            }
            int iJ = gk1Var.J() + iS;
            do {
                ((b89) o79Var).add(Integer.valueOf(gk1Var.P()));
            } while (gk1Var.J() < iJ);
            return;
        }
        if (i != 5) {
            throw p79.a();
        }
        do {
            ((b89) o79Var).add(Integer.valueOf(gk1Var.P()));
            if (gk1Var.b0()) {
                return;
            } else {
                iR = gk1Var.R();
            }
        } while (iR == this.a);
        this.c = iR;
    }

    public void t(o79 o79Var) throws p79 {
        int iR;
        gk1 gk1Var = (gk1) this.d;
        int i = this.a & 7;
        if (i == 1) {
            do {
                ((b89) o79Var).add(Long.valueOf(gk1Var.V()));
                if (gk1Var.b0()) {
                    return;
                } else {
                    iR = gk1Var.R();
                }
            } while (iR == this.a);
            this.c = iR;
            return;
        }
        if (i != 2) {
            throw p79.a();
        }
        int iS = gk1Var.S();
        if ((iS & 7) != 0) {
            throw p79.f();
        }
        int iJ = gk1Var.J() + iS;
        do {
            ((b89) o79Var).add(Long.valueOf(gk1Var.V()));
        } while (gk1Var.J() < iJ);
    }

    public void u(o79 o79Var) throws p79 {
        int iR;
        gk1 gk1Var = (gk1) this.d;
        int i = this.a & 7;
        if (i == 0) {
            do {
                ((b89) o79Var).add(Integer.valueOf(gk1Var.Q()));
                if (gk1Var.b0()) {
                    return;
                } else {
                    iR = gk1Var.R();
                }
            } while (iR == this.a);
            this.c = iR;
            return;
        }
        if (i != 2) {
            throw p79.a();
        }
        int iJ = gk1Var.J() + gk1Var.S();
        do {
            ((b89) o79Var).add(Integer.valueOf(gk1Var.Q()));
        } while (gk1Var.J() < iJ);
        b(iJ);
    }

    public void v(o79 o79Var) throws p79 {
        int iR;
        gk1 gk1Var = (gk1) this.d;
        int i = this.a & 7;
        if (i == 0) {
            do {
                ((b89) o79Var).add(Long.valueOf(gk1Var.W()));
                if (gk1Var.b0()) {
                    return;
                } else {
                    iR = gk1Var.R();
                }
            } while (iR == this.a);
            this.c = iR;
            return;
        }
        if (i != 2) {
            throw p79.a();
        }
        int iJ = gk1Var.J() + gk1Var.S();
        do {
            ((b89) o79Var).add(Long.valueOf(gk1Var.W()));
        } while (gk1Var.J() < iJ);
        b(iJ);
    }

    public void w(o79 o79Var) throws r79 {
        e(o79Var, false);
    }

    public void x(o79 o79Var) throws r79 {
        e(o79Var, true);
    }

    public t69 y() {
        f(2);
        return ((gk1) this.d).Y();
    }

    public void z(o79 o79Var) throws p79 {
        int iR;
        gk1 gk1Var = (gk1) this.d;
        int i = this.a & 7;
        if (i == 0) {
            do {
                ((b89) o79Var).add(Integer.valueOf(gk1Var.S()));
                if (gk1Var.b0()) {
                    return;
                } else {
                    iR = gk1Var.R();
                }
            } while (iR == this.a);
            this.c = iR;
            return;
        }
        if (i != 2) {
            throw p79.a();
        }
        int iJ = gk1Var.J() + gk1Var.S();
        do {
            ((b89) o79Var).add(Integer.valueOf(gk1Var.S()));
        } while (gk1Var.J() < iJ);
        b(iJ);
    }
}
