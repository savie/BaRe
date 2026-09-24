package defpackage;

import com.nimbusds.jose.crypto.PasswordBasedEncrypter;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class bv4 {
    public static boolean q = false;
    public final f66 d;
    public final gh m;
    public m50 p;
    public int a = PasswordBasedEncrypter.MIN_RECOMMENDED_ITERATION_COUNT;
    public boolean b = false;
    public int c = 0;
    public int e = 32;
    public int f = 32;
    public boolean h = false;
    public boolean[] i = new boolean[32];
    public int j = 1;
    public int k = 0;
    public int l = 32;
    public ej7[] n = new ej7[PasswordBasedEncrypter.MIN_RECOMMENDED_ITERATION_COUNT];
    public int o = 0;
    public m50[] g = new m50[32];

    public bv4() {
        s();
        gh ghVar = new gh();
        ghVar.a = new e36();
        ghVar.b = new e36();
        ghVar.c = new ej7[32];
        this.m = ghVar;
        f66 f66Var = new f66(ghVar);
        f66Var.f = new ej7[128];
        f66Var.g = new ej7[128];
        f66Var.h = 0;
        f66Var.i = new wc9(f66Var);
        this.d = f66Var;
        this.p = new m50(ghVar);
    }

    public static int n(Object obj) {
        ej7 ej7Var = ((ys1) obj).i;
        if (ej7Var != null) {
            return (int) (ej7Var.e + 0.5f);
        }
        return 0;
    }

    public final ej7 a(int i) {
        e36 e36Var = (e36) this.m.b;
        int i2 = e36Var.a;
        Object obj = null;
        if (i2 > 0) {
            int i3 = i2 - 1;
            Object[] objArr = (Object[]) e36Var.b;
            Object obj2 = objArr[i3];
            objArr[i3] = null;
            e36Var.a = i3;
            obj = obj2;
        }
        ej7 ej7Var = (ej7) obj;
        if (ej7Var == null) {
            ej7Var = new ej7(i);
            ej7Var.t = i;
        } else {
            ej7Var.c();
            ej7Var.t = i;
        }
        int i4 = this.o;
        int i5 = this.a;
        if (i4 >= i5) {
            int i6 = i5 * 2;
            this.a = i6;
            this.n = (ej7[]) Arrays.copyOf(this.n, i6);
        }
        ej7[] ej7VarArr = this.n;
        int i7 = this.o;
        this.o = i7 + 1;
        ej7VarArr[i7] = ej7Var;
        return ej7Var;
    }

    public final void b(ej7 ej7Var, ej7 ej7Var2, int i, float f, ej7 ej7Var3, ej7 ej7Var4, int i2, int i3) {
        m50 m50VarL = l();
        if (ej7Var2 == ej7Var3) {
            m50VarL.d.g(ej7Var, 1.0f);
            m50VarL.d.g(ej7Var4, 1.0f);
            m50VarL.d.g(ej7Var2, -2.0f);
        } else {
            d50 d50Var = m50VarL.d;
            if (f == 0.5f) {
                d50Var.g(ej7Var, 1.0f);
                m50VarL.d.g(ej7Var2, -1.0f);
                m50VarL.d.g(ej7Var3, -1.0f);
                m50VarL.d.g(ej7Var4, 1.0f);
                if (i > 0 || i2 > 0) {
                    m50VarL.b = (-i) + i2;
                }
            } else if (f <= 0.0f) {
                d50Var.g(ej7Var, -1.0f);
                m50VarL.d.g(ej7Var2, 1.0f);
                m50VarL.b = i;
            } else if (f >= 1.0f) {
                d50Var.g(ej7Var4, -1.0f);
                m50VarL.d.g(ej7Var3, 1.0f);
                m50VarL.b = -i2;
            } else {
                float f2 = 1.0f - f;
                d50Var.g(ej7Var, f2 * 1.0f);
                m50VarL.d.g(ej7Var2, f2 * (-1.0f));
                m50VarL.d.g(ej7Var3, (-1.0f) * f);
                m50VarL.d.g(ej7Var4, 1.0f * f);
                if (i > 0 || i2 > 0) {
                    m50VarL.b = (i2 * f) + ((-i) * f2);
                }
            }
        }
        if (i3 != 8) {
            m50VarL.a(this, i3);
        }
        c(m50VarL);
    }

    /* JADX WARN: Code duplicated, block: B:119:0x01ab  */
    /* JADX WARN: Code duplicated, block: B:57:0x00d3  */
    /* JADX WARN: Code duplicated, block: B:75:0x00f5  */
    public final void c(m50 m50Var) {
        boolean z;
        boolean z2;
        ej7 ej7VarF;
        if (this.k + 1 >= this.l || this.j + 1 >= this.f) {
            o();
        }
        if (m50Var.e) {
            z = false;
        } else {
            ArrayList arrayList = m50Var.c;
            if (this.g.length != 0) {
                boolean z3 = false;
                while (!z3) {
                    int iD = m50Var.d.d();
                    for (int i = 0; i < iD; i++) {
                        ej7 ej7VarE = m50Var.d.e(i);
                        if (ej7VarE.c != -1 || ej7VarE.f) {
                            arrayList.add(ej7VarE);
                        }
                    }
                    int size = arrayList.size();
                    if (size > 0) {
                        for (int i2 = 0; i2 < size; i2++) {
                            ej7 ej7Var = (ej7) arrayList.get(i2);
                            if (ej7Var.f) {
                                m50Var.h(this, ej7Var, true);
                            } else {
                                m50Var.i(this, this.g[ej7Var.c], true);
                            }
                        }
                        arrayList.clear();
                    } else {
                        z3 = true;
                    }
                }
                if (m50Var.a != null && m50Var.d.d() == 0) {
                    m50Var.e = true;
                    this.b = true;
                }
            }
            if (m50Var.e()) {
                return;
            }
            float f = m50Var.b;
            float f2 = 0.0f;
            if (f < 0.0f) {
                m50Var.b = f * (-1.0f);
                d50 d50Var = m50Var.d;
                int i3 = d50Var.h;
                for (int i4 = 0; i3 != -1 && i4 < d50Var.a; i4++) {
                    float[] fArr = d50Var.g;
                    fArr[i3] = fArr[i3] * (-1.0f);
                    i3 = d50Var.f[i3];
                }
            }
            int iD2 = m50Var.d.d();
            float f3 = 0.0f;
            float f4 = 0.0f;
            ej7 ej7Var2 = null;
            ej7 ej7Var3 = null;
            int i5 = 0;
            boolean z4 = false;
            boolean z5 = false;
            while (i5 < iD2) {
                float f5 = m50Var.d.f(i5);
                ej7 ej7VarE2 = m50Var.d.e(i5);
                float f6 = f2;
                if (ej7VarE2.t == 1) {
                    if (ej7Var2 == null) {
                        if (ej7VarE2.r <= 1) {
                            z4 = true;
                        } else {
                            z4 = false;
                        }
                        ej7Var2 = ej7VarE2;
                        f3 = f5;
                    } else {
                        if (f3 > f5) {
                            if (ej7VarE2.r > 1) {
                                z4 = false;
                            }
                            ej7Var2 = ej7VarE2;
                            f3 = f5;
                        } else if (z4 || ej7VarE2.r > 1) {
                        }
                        z4 = true;
                        ej7Var2 = ej7VarE2;
                        f3 = f5;
                    }
                } else if (ej7Var2 == null && f5 < f6) {
                    if (ej7Var3 == null) {
                        if (ej7VarE2.r <= 1) {
                            z5 = true;
                        } else {
                            z5 = false;
                        }
                        ej7Var3 = ej7VarE2;
                        f4 = f5;
                    } else {
                        if (f4 > f5) {
                            if (ej7VarE2.r > 1) {
                                z5 = false;
                            }
                            ej7Var3 = ej7VarE2;
                            f4 = f5;
                        } else if (z5 || ej7VarE2.r > 1) {
                        }
                        z5 = true;
                        ej7Var3 = ej7VarE2;
                        f4 = f5;
                    }
                }
                i5++;
                f2 = f6;
            }
            float f7 = f2;
            if (ej7Var2 == null) {
                ej7Var2 = ej7Var3;
            }
            if (ej7Var2 == null) {
                z2 = true;
            } else {
                m50Var.g(ej7Var2);
                z2 = false;
            }
            if (m50Var.d.d() == 0) {
                m50Var.e = true;
            }
            if (z2) {
                if (this.j + 1 >= this.f) {
                    o();
                }
                ej7 ej7VarA = a(3);
                int i6 = this.c + 1;
                this.c = i6;
                this.j++;
                ej7VarA.b = i6;
                gh ghVar = this.m;
                ((ej7[]) ghVar.c)[i6] = ej7VarA;
                m50Var.a = ej7VarA;
                int i7 = this.k;
                h(m50Var);
                if (this.k == i7 + 1) {
                    m50 m50Var2 = this.p;
                    m50Var2.a = null;
                    m50Var2.d.b();
                    for (int i8 = 0; i8 < m50Var.d.d(); i8++) {
                        m50Var2.d.a(m50Var.d.e(i8), m50Var.d.f(i8), true);
                    }
                    r(this.p);
                    if (ej7VarA.c == -1) {
                        if (m50Var.a == ej7VarA && (ej7VarF = m50Var.f(null, ej7VarA)) != null) {
                            m50Var.g(ej7VarF);
                        }
                        if (!m50Var.e) {
                            m50Var.a.e(this, m50Var);
                        }
                        ((e36) ghVar.a).b(m50Var);
                        this.k--;
                    }
                    z = true;
                } else {
                    z = false;
                }
            } else {
                z = false;
            }
            ej7 ej7Var4 = m50Var.a;
            if (ej7Var4 == null) {
                return;
            }
            if (ej7Var4.t != 1 && m50Var.b < f7) {
                return;
            }
        }
        if (z) {
            return;
        }
        h(m50Var);
    }

    public final void d(ej7 ej7Var, int i) {
        int i2 = ej7Var.c;
        if (i2 == -1) {
            ej7Var.d(this, i);
            for (int i3 = 0; i3 < this.c + 1; i3++) {
                ej7 ej7Var2 = ((ej7[]) this.m.c)[i3];
            }
            return;
        }
        if (i2 == -1) {
            m50 m50VarL = l();
            m50VarL.a = ej7Var;
            float f = i;
            ej7Var.e = f;
            m50VarL.b = f;
            m50VarL.e = true;
            c(m50VarL);
            return;
        }
        m50 m50Var = this.g[i2];
        if (m50Var.e) {
            m50Var.b = i;
            return;
        }
        if (m50Var.d.d() == 0) {
            m50Var.e = true;
            m50Var.b = i;
            return;
        }
        m50 m50VarL2 = l();
        if (i < 0) {
            m50VarL2.b = i * (-1);
            m50VarL2.d.g(ej7Var, 1.0f);
        } else {
            m50VarL2.b = i;
            m50VarL2.d.g(ej7Var, -1.0f);
        }
        c(m50VarL2);
    }

    public final void e(ej7 ej7Var, ej7 ej7Var2, int i, int i2) {
        if (i2 == 8 && ej7Var2.f && ej7Var.c == -1) {
            ej7Var.d(this, ej7Var2.e + i);
            return;
        }
        m50 m50VarL = l();
        boolean z = false;
        if (i != 0) {
            if (i < 0) {
                i *= -1;
                z = true;
            }
            m50VarL.b = i;
        }
        d50 d50Var = m50VarL.d;
        if (z) {
            d50Var.g(ej7Var, 1.0f);
            m50VarL.d.g(ej7Var2, -1.0f);
        } else {
            d50Var.g(ej7Var, -1.0f);
            m50VarL.d.g(ej7Var2, 1.0f);
        }
        if (i2 != 8) {
            m50VarL.a(this, i2);
        }
        c(m50VarL);
    }

    public final void f(ej7 ej7Var, ej7 ej7Var2, int i, int i2) {
        m50 m50VarL = l();
        ej7 ej7VarM = m();
        ej7VarM.d = 0;
        m50VarL.b(ej7Var, ej7Var2, ej7VarM, i);
        if (i2 != 8) {
            m50VarL.d.g(j(i2), (int) (m50VarL.d.c(ej7VarM) * (-1.0f)));
        }
        c(m50VarL);
    }

    public final void g(ej7 ej7Var, ej7 ej7Var2, int i, int i2) {
        m50 m50VarL = l();
        ej7 ej7VarM = m();
        ej7VarM.d = 0;
        m50VarL.c(ej7Var, ej7Var2, ej7VarM, i);
        if (i2 != 8) {
            m50VarL.d.g(j(i2), (int) (m50VarL.d.c(ej7VarM) * (-1.0f)));
        }
        c(m50VarL);
    }

    public final void h(m50 m50Var) {
        int i;
        if (m50Var.e) {
            m50Var.a.d(this, m50Var.b);
        } else {
            m50[] m50VarArr = this.g;
            int i2 = this.k;
            m50VarArr[i2] = m50Var;
            ej7 ej7Var = m50Var.a;
            ej7Var.c = i2;
            this.k = i2 + 1;
            ej7Var.e(this, m50Var);
        }
        if (this.b) {
            int i3 = 0;
            while (i3 < this.k) {
                if (this.g[i3] == null) {
                    System.out.println("WTF");
                }
                m50 m50Var2 = this.g[i3];
                if (m50Var2 != null && m50Var2.e) {
                    m50Var2.a.d(this, m50Var2.b);
                    ((e36) this.m.a).b(m50Var2);
                    this.g[i3] = null;
                    int i4 = i3 + 1;
                    int i5 = i4;
                    while (true) {
                        i = this.k;
                        if (i4 >= i) {
                            break;
                        }
                        m50[] m50VarArr2 = this.g;
                        int i6 = i4 - 1;
                        m50 m50Var3 = m50VarArr2[i4];
                        m50VarArr2[i6] = m50Var3;
                        ej7 ej7Var2 = m50Var3.a;
                        if (ej7Var2.c == i4) {
                            ej7Var2.c = i6;
                        }
                        i5 = i4;
                        i4++;
                    }
                    if (i5 < i) {
                        this.g[i5] = null;
                    }
                    this.k = i - 1;
                    i3--;
                }
                i3++;
            }
            this.b = false;
        }
    }

    public final void i() {
        for (int i = 0; i < this.k; i++) {
            m50 m50Var = this.g[i];
            m50Var.a.e = m50Var.b;
        }
    }

    public final ej7 j(int i) {
        if (this.j + 1 >= this.f) {
            o();
        }
        ej7 ej7VarA = a(4);
        float[] fArr = ej7VarA.n;
        int i2 = this.c + 1;
        this.c = i2;
        this.j++;
        ej7VarA.b = i2;
        ej7VarA.d = i;
        ((ej7[]) this.m.c)[i2] = ej7VarA;
        f66 f66Var = this.d;
        f66Var.i.b = ej7VarA;
        Arrays.fill(fArr, 0.0f);
        fArr[ej7VarA.d] = 1.0f;
        f66Var.j(ej7VarA);
        return ej7VarA;
    }

    public final ej7 k(Object obj) {
        if (obj == null) {
            return null;
        }
        if (this.j + 1 >= this.f) {
            o();
        }
        if (!(obj instanceof ys1)) {
            return null;
        }
        ys1 ys1Var = (ys1) obj;
        ej7 ej7Var = ys1Var.i;
        if (ej7Var == null) {
            ys1Var.k();
            ej7Var = ys1Var.i;
        }
        int i = ej7Var.b;
        gh ghVar = this.m;
        if (i != -1 && i <= this.c && ((ej7[]) ghVar.c)[i] != null) {
            return ej7Var;
        }
        if (i != -1) {
            ej7Var.c();
        }
        int i2 = this.c + 1;
        this.c = i2;
        this.j++;
        ej7Var.b = i2;
        ej7Var.t = 1;
        ((ej7[]) ghVar.c)[i2] = ej7Var;
        return ej7Var;
    }

    public final m50 l() {
        Object obj;
        gh ghVar = this.m;
        e36 e36Var = (e36) ghVar.a;
        int i = e36Var.a;
        if (i > 0) {
            int i2 = i - 1;
            Object[] objArr = (Object[]) e36Var.b;
            obj = objArr[i2];
            objArr[i2] = null;
            e36Var.a = i2;
        } else {
            obj = null;
        }
        m50 m50Var = (m50) obj;
        if (m50Var == null) {
            return new m50(ghVar);
        }
        m50Var.a = null;
        m50Var.d.b();
        m50Var.b = 0.0f;
        m50Var.e = false;
        return m50Var;
    }

    public final ej7 m() {
        if (this.j + 1 >= this.f) {
            o();
        }
        ej7 ej7VarA = a(3);
        int i = this.c + 1;
        this.c = i;
        this.j++;
        ej7VarA.b = i;
        ((ej7[]) this.m.c)[i] = ej7VarA;
        return ej7VarA;
    }

    public final void o() {
        int i = this.e * 2;
        this.e = i;
        this.g = (m50[]) Arrays.copyOf(this.g, i);
        gh ghVar = this.m;
        ghVar.c = (ej7[]) Arrays.copyOf((ej7[]) ghVar.c, this.e);
        int i2 = this.e;
        this.i = new boolean[i2];
        this.f = i2;
        this.l = i2;
    }

    public final void p() {
        f66 f66Var = this.d;
        if (f66Var.e()) {
            i();
            return;
        }
        if (!this.h) {
            q(f66Var);
            return;
        }
        for (int i = 0; i < this.k; i++) {
            if (!this.g[i].e) {
                q(f66Var);
                return;
            }
        }
        i();
    }

    public final void q(f66 f66Var) {
        for (int i = 0; i < this.k; i++) {
            m50 m50Var = this.g[i];
            int i2 = 1;
            if (m50Var.a.t != 1) {
                float f = 0.0f;
                if (m50Var.b < 0.0f) {
                    boolean z = false;
                    int i3 = 0;
                    while (!z) {
                        i3 += i2;
                        float f2 = Float.MAX_VALUE;
                        int i4 = -1;
                        int i5 = -1;
                        int i6 = 0;
                        int i7 = 0;
                        while (i6 < this.k) {
                            m50 m50Var2 = this.g[i6];
                            if (m50Var2.a.t != i2 && !m50Var2.e && m50Var2.b < f) {
                                int iD = m50Var2.d.d();
                                int i8 = 0;
                                while (i8 < iD) {
                                    ej7 ej7VarE = m50Var2.d.e(i8);
                                    float fC = m50Var2.d.c(ej7VarE);
                                    if (fC > f) {
                                        for (int i9 = 0; i9 < 9; i9++) {
                                            float f3 = ej7VarE.k[i9] / fC;
                                            if ((f3 < f2 && i9 == i7) || i9 > i7) {
                                                i7 = i9;
                                                i5 = ej7VarE.b;
                                                i4 = i6;
                                                f2 = f3;
                                            }
                                        }
                                    }
                                    i8++;
                                    f = 0.0f;
                                }
                            }
                            i6++;
                            f = 0.0f;
                            i2 = 1;
                        }
                        if (i4 != -1) {
                            m50 m50Var3 = this.g[i4];
                            m50Var3.a.c = -1;
                            m50Var3.g(((ej7[]) this.m.c)[i5]);
                            ej7 ej7Var = m50Var3.a;
                            ej7Var.c = i4;
                            ej7Var.e(this, m50Var3);
                        } else {
                            z = true;
                        }
                        if (i3 > this.j / 2) {
                            z = true;
                        }
                        f = 0.0f;
                        i2 = 1;
                    }
                    break;
                }
            }
        }
        r(f66Var);
        i();
    }

    public final void r(m50 m50Var) {
        boolean z;
        int i = 0;
        for (int i2 = 0; i2 < this.j; i2++) {
            this.i[i2] = false;
        }
        boolean z2 = false;
        int i3 = 0;
        while (!z2) {
            i3++;
            if (i3 >= this.j * 2) {
                return;
            }
            ej7 ej7Var = m50Var.a;
            if (ej7Var != null) {
                this.i[ej7Var.b] = true;
            }
            ej7 ej7VarD = m50Var.d(this.i);
            if (ej7VarD != null) {
                boolean[] zArr = this.i;
                int i4 = ej7VarD.b;
                if (zArr[i4]) {
                    return;
                } else {
                    zArr[i4] = true;
                }
            }
            if (ej7VarD != null) {
                float f = Float.MAX_VALUE;
                int i5 = i;
                int i6 = -1;
                while (i5 < this.k) {
                    m50 m50Var2 = this.g[i5];
                    if (m50Var2.a.t != 1 && !m50Var2.e) {
                        d50 d50Var = m50Var2.d;
                        int i7 = d50Var.h;
                        if (i7 == -1) {
                            z = false;
                            break;
                        }
                        int i8 = i;
                        while (true) {
                            if (i7 == -1 || i8 >= d50Var.a) {
                                z = false;
                                break;
                            } else if (d50Var.e[i7] == ej7VarD.b) {
                                z = true;
                                break;
                            } else {
                                i7 = d50Var.f[i7];
                                i8++;
                            }
                        }
                        if (z) {
                            float fC = m50Var2.d.c(ej7VarD);
                            if (fC < 0.0f) {
                                float f2 = (-m50Var2.b) / fC;
                                if (f2 < f) {
                                    i6 = i5;
                                    f = f2;
                                }
                            }
                        }
                    }
                    i5++;
                    i = 0;
                }
                if (i6 > -1) {
                    m50 m50Var3 = this.g[i6];
                    m50Var3.a.c = -1;
                    m50Var3.g(ej7VarD);
                    ej7 ej7Var2 = m50Var3.a;
                    ej7Var2.c = i6;
                    ej7Var2.e(this, m50Var3);
                }
            } else {
                z2 = true;
            }
            i = 0;
        }
    }

    public final void s() {
        for (int i = 0; i < this.k; i++) {
            m50 m50Var = this.g[i];
            if (m50Var != null) {
                ((e36) this.m.a).b(m50Var);
            }
            this.g[i] = null;
        }
    }

    public final void t() {
        gh ghVar;
        int i = 0;
        while (true) {
            ghVar = this.m;
            ej7[] ej7VarArr = (ej7[]) ghVar.c;
            if (i >= ej7VarArr.length) {
                break;
            }
            ej7 ej7Var = ej7VarArr[i];
            if (ej7Var != null) {
                ej7Var.c();
            }
            i++;
        }
        e36 e36Var = (e36) ghVar.b;
        ej7[] ej7VarArr2 = this.n;
        int length = this.o;
        e36Var.getClass();
        if (length > ej7VarArr2.length) {
            length = ej7VarArr2.length;
        }
        for (int i2 = 0; i2 < length; i2++) {
            ej7 ej7Var2 = ej7VarArr2[i2];
            int i3 = e36Var.a;
            Object[] objArr = (Object[]) e36Var.b;
            if (i3 < objArr.length) {
                objArr[i3] = ej7Var2;
                e36Var.a = i3 + 1;
            }
        }
        this.o = 0;
        Arrays.fill((ej7[]) ghVar.c, (Object) null);
        this.c = 0;
        f66 f66Var = this.d;
        f66Var.h = 0;
        f66Var.b = 0.0f;
        this.j = 1;
        for (int i4 = 0; i4 < this.k; i4++) {
            m50 m50Var = this.g[i4];
        }
        s();
        this.k = 0;
        this.p = new m50(ghVar);
    }
}
