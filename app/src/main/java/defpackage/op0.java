package defpackage;

import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedList;
import java.util.Map;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class op0 extends tn7 implements iv1 {
    public static final mp0[] q;
    public final gc8 c;
    public final mp0[] d;
    public final mp0[] e;
    public final Object f;
    public final od k;
    public final lr5 n;
    public final ak4 p;

    static {
        new z86("#object-ref", null);
        q = new mp0[0];
    }

    public op0(op0 op0Var, Set set, Set set2) {
        super(op0Var.a);
        this.c = op0Var.c;
        mp0[] mp0VarArr = op0Var.d;
        mp0[] mp0VarArr2 = op0Var.e;
        int length = mp0VarArr.length;
        ArrayList arrayList = new ArrayList(length);
        ArrayList arrayList2 = mp0VarArr2 == null ? null : new ArrayList(length);
        for (int i = 0; i < length; i++) {
            mp0 mp0Var = mp0VarArr[i];
            if (!jd4.F(mp0Var.b.a, set, set2)) {
                arrayList.add(mp0Var);
                if (mp0VarArr2 != null) {
                    arrayList2.add(mp0VarArr2[i]);
                }
            }
        }
        this.d = (mp0[]) arrayList.toArray(new mp0[arrayList.size()]);
        this.e = arrayList2 != null ? (mp0[]) arrayList2.toArray(new mp0[arrayList2.size()]) : null;
        this.k = op0Var.k;
        this.n = op0Var.n;
        this.f = op0Var.f;
        this.p = op0Var.p;
    }

    public static final mp0[] s(mp0[] mp0VarArr, fk5 fk5Var) {
        if (mp0VarArr == null || mp0VarArr.length == 0 || fk5Var == null || fk5Var == fk5.a) {
            return mp0VarArr;
        }
        int length = mp0VarArr.length;
        mp0[] mp0VarArr2 = new mp0[length];
        for (int i = 0; i < length; i++) {
            mp0 mp0Var = mp0VarArr[i];
            if (mp0Var != null) {
                mp0VarArr2[i] = mp0Var.i(fk5Var);
            }
        }
        return mp0VarArr2;
    }

    public abstract op0 A(mp0[] mp0VarArr, mp0[] mp0VarArr2);

    @Override // defpackage.iv1
    public final em4 a(c87 c87Var, kp0 kp0Var) throws ag4 {
        ak4 ak4Var;
        Object obj;
        lr5 lr5VarA;
        int i;
        Object objG;
        Set set;
        Set set2;
        mp0[] mp0VarArr;
        kr5 kr5VarR;
        boolean z;
        ak4 ak4Var2;
        op0 op0VarY = this;
        v77 v77Var = c87Var.a;
        as5 as5VarD = v77Var.d();
        od odVarA = kp0Var != null ? kp0Var.a() : null;
        Class cls = op0VarY.a;
        bk4 bk4VarK = tn7.k(c87Var, kp0Var, cls);
        ak4 ak4Var3 = op0VarY.p;
        int i2 = 0;
        if (bk4VarK == null || (ak4Var = bk4VarK.b) == (ak4Var2 = ak4.p)) {
            ak4Var = null;
        } else if (ak4Var != ak4Var2 && ak4Var != ak4Var3) {
            gc8 gc8Var = op0VarY.c;
            if (gc8Var.y0()) {
                int iOrdinal = ak4Var.ordinal();
                if (iOrdinal == 2 || iOrdinal == 4 || iOrdinal == 5) {
                    ((xo0) v77Var.b.b).getClass();
                    wo0 wo0VarP0 = xo0.p0(v77Var, gc8Var);
                    if (wo0VarP0 == null) {
                        wo0VarP0 = wo0.d(v77Var, gc8Var, xo0.q0(v77Var, gc8Var, v77Var));
                    }
                    return c87Var.v(ox2.q(gc8Var.f, v77Var, wo0VarP0, bk4VarK), kp0Var);
                }
            } else if (ak4Var == ak4.q && ((!(gc8Var instanceof q65) || !Map.class.isAssignableFrom(cls)) && Map.Entry.class.isAssignableFrom(cls))) {
                gc8 gc8VarM0 = gc8Var.m0(Map.Entry.class);
                gc8 gc8VarD = gc8VarM0.x.d(0);
                if (gc8VarD == null) {
                    gc8VarD = lc8.K;
                }
                gc8 gc8Var2 = gc8VarD;
                gc8 gc8VarD2 = gc8VarM0.x.d(1);
                if (gc8VarD2 == null) {
                    gc8VarD2 = lc8.K;
                }
                return c87Var.v(new i65(op0VarY.c, gc8Var2, gc8VarD2, false, null, kp0Var), kp0Var);
            }
        }
        mp0[] mp0VarArr2 = op0VarY.d;
        lr5 lr5Var = op0VarY.n;
        if (odVarA != null) {
            mk4 mk4VarX = as5VarD.x(odVarA);
            set = mk4VarX.c ? Collections.EMPTY_SET : mk4VarX.a;
            set2 = as5VarD.A(odVarA).a;
            kr5 kr5VarQ = as5VarD.q(odVarA);
            if (kr5VarQ == null) {
                lr5VarA = (lr5Var == null || (kr5VarR = as5VarD.r(odVarA, null)) == null || (z = kr5VarR.e) == lr5Var.e) ? lr5Var : new lr5(lr5Var.a, lr5Var.b, lr5Var.c, lr5Var.d, z);
                ak4Var3 = ak4Var3;
                ak4Var = ak4Var;
                i = i2;
                obj = null;
            } else {
                i2 = 0;
                kr5 kr5VarR2 = as5VarD.r(odVarA, kr5VarQ);
                Class cls2 = kr5VarR2.b;
                boolean z2 = kr5VarR2.e;
                z86 z86Var = kr5VarR2.a;
                gc8 gc8VarB = cls2 == null ? null : c87Var.s().b(null, cls2, lc8.d);
                c87Var.s().getClass();
                gc8 gc8Var3 = lc8.h(gc8VarB, ir5.class)[0];
                if (cls2 == v86.class) {
                    String str = z86Var.a;
                    int length = mp0VarArr2.length;
                    i = 0;
                    while (true) {
                        if (i == length) {
                            c87Var.B("Invalid Object Id definition for " + u81.t(cls) + ": cannot find property with name " + (str == null ? "[null]" : u81.c(str)));
                            throw null;
                        }
                        mp0 mp0Var = mp0VarArr2[i];
                        if (str.equals(mp0Var.b.a)) {
                            lr5VarA = lr5.a(mp0Var.d, null, new v86(mp0Var, kr5VarR2.d), z2);
                            obj = null;
                            break;
                        }
                        i++;
                    }
                } else {
                    obj = null;
                    lr5VarA = lr5.a(gc8Var3, z86Var, c87Var.z(kr5VarR2), z2);
                    i = 0;
                }
            }
            objG = as5VarD.g(odVarA);
            if (objG == null || objG.equals(op0VarY.f)) {
                objG = obj;
            }
        } else {
            obj = null;
            ak4Var3 = ak4Var3;
            i2 = 0;
            ak4Var = ak4Var;
            lr5VarA = lr5Var;
            i = 0;
            objG = null;
            set = null;
            set2 = null;
        }
        if (i > 0) {
            mp0[] mp0VarArr3 = (mp0[]) Arrays.copyOf(mp0VarArr2, mp0VarArr2.length);
            mp0 mp0Var2 = mp0VarArr3[i];
            int i3 = i2;
            System.arraycopy(mp0VarArr3, i3, mp0VarArr3, 1, i);
            mp0VarArr3[i3] = mp0Var2;
            mp0[] mp0VarArr4 = op0VarY.e;
            if (mp0VarArr4 == null) {
                mp0VarArr = obj;
            } else {
                mp0[] mp0VarArr5 = (mp0[]) Arrays.copyOf(mp0VarArr4, mp0VarArr4.length);
                mp0 mp0Var3 = mp0VarArr5[i];
                System.arraycopy(mp0VarArr5, i3, mp0VarArr5, 1, i);
                mp0VarArr5[i3] = mp0Var3;
                mp0VarArr = mp0VarArr5;
            }
            op0VarY = op0VarY.A(mp0VarArr3, mp0VarArr);
        }
        if (lr5VarA != null) {
            lr5 lr5Var2 = new lr5(lr5VarA.a, lr5VarA.b, lr5VarA.c, c87Var.p(lr5VarA.a, kp0Var), lr5VarA.e);
            if (lr5Var2 != lr5Var) {
                op0VarY = op0VarY.z(lr5Var2);
            }
        }
        if ((set != null && !set.isEmpty()) || set2 != null) {
            op0VarY = op0VarY.x(set, set2);
        }
        if (objG != null) {
            op0VarY = op0VarY.y(objG);
        }
        return (ak4Var == null ? ak4Var3 : ak4Var) == ak4.k ? op0VarY.r() : op0VarY;
    }

    @Override // defpackage.em4
    public void f(Object obj, fk4 fk4Var, c87 c87Var, rc8 rc8Var) {
        if (this.n != null) {
            o(obj, fk4Var, c87Var, rc8Var);
            return;
        }
        nw8 nw8VarQ = q(rc8Var, obj, mm4.START_OBJECT);
        rc8Var.e(fk4Var, nw8VarQ);
        fk4Var.g(obj);
        if (this.f != null) {
            w(obj, fk4Var, c87Var);
            throw null;
        }
        v(obj, fk4Var, c87Var);
        rc8Var.f(fk4Var, nw8VarQ);
    }

    @Override // defpackage.em4
    public final boolean h() {
        return this.n != null;
    }

    public final void o(Object obj, fk4 fk4Var, c87 c87Var, rc8 rc8Var) {
        lr5 lr5Var = this.n;
        v86 v86Var = lr5Var.c;
        boolean z = lr5Var.e;
        em4 em4Var = lr5Var.d;
        mw8 mw8VarL = c87Var.l(obj, v86Var);
        if (mw8VarL.b != null && (mw8VarL.c || z)) {
            fk4Var.getClass();
            em4Var.e(mw8VarL.b, fk4Var, c87Var);
            return;
        }
        Object objA = mw8VarL.a(obj);
        if (z) {
            em4Var.e(objA, fk4Var, c87Var);
            return;
        }
        nw8 nw8VarQ = q(rc8Var, obj, mm4.START_OBJECT);
        rc8Var.e(fk4Var, nw8VarQ);
        fk4Var.g(obj);
        mw8VarL.c = true;
        z77 z77Var = lr5Var.b;
        if (z77Var != null) {
            fk4Var.r(z77Var);
            em4Var.e(mw8VarL.b, fk4Var, c87Var);
        }
        if (this.f != null) {
            w(obj, fk4Var, c87Var);
            throw null;
        }
        v(obj, fk4Var, c87Var);
        rc8Var.f(fk4Var, nw8VarQ);
    }

    public final void p(Object obj, fk4 fk4Var, c87 c87Var, boolean z) {
        lr5 lr5Var = this.n;
        v86 v86Var = lr5Var.c;
        boolean z2 = lr5Var.e;
        em4 em4Var = lr5Var.d;
        mw8 mw8VarL = c87Var.l(obj, v86Var);
        Object obj2 = mw8VarL.b;
        if (obj2 != null && (mw8VarL.c || z2)) {
            em4Var.e(obj2, fk4Var, c87Var);
            return;
        }
        Object objA = mw8VarL.a(obj);
        if (z2) {
            em4Var.e(objA, fk4Var, c87Var);
            return;
        }
        if (z) {
            fk4Var.Y(obj);
        }
        mw8VarL.c = true;
        z77 z77Var = lr5Var.b;
        if (z77Var != null) {
            fk4Var.r(z77Var);
            em4Var.e(mw8VarL.b, fk4Var, c87Var);
        }
        if (this.f != null) {
            w(obj, fk4Var, c87Var);
            throw null;
        }
        v(obj, fk4Var, c87Var);
        if (z) {
            fk4Var.q();
        }
    }

    public final nw8 q(rc8 rc8Var, Object obj, mm4 mm4Var) {
        od odVar = this.k;
        if (odVar == null) {
            return rc8Var.d(obj, mm4Var);
        }
        Object objS0 = odVar.s0(obj);
        if (objS0 == null) {
            objS0 = "";
        }
        nw8 nw8VarD = rc8Var.d(obj, mm4Var);
        nw8VarD.c = objS0;
        return nw8VarD;
    }

    public abstract op0 r();

    /* JADX WARN: Code duplicated, block: B:39:0x0069 A[PHI: r6
      0x0069: PHI (r6v5 gc8) = (r6v4 gc8), (r6v10 gc8) binds: [B:31:0x0049, B:33:0x0057] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:50:0x0091  */
    public final void t(c87 c87Var) {
        em4 em4VarP;
        mp0 mp0Var;
        rc8 rc8Var;
        Object objG;
        qp5 qp5Var;
        mp0 mp0Var2;
        mp0[] mp0VarArr = this.e;
        int length = mp0VarArr == null ? 0 : mp0VarArr.length;
        mp0[] mp0VarArr2 = this.d;
        int length2 = mp0VarArr2.length;
        for (int i = 0; i < length2; i++) {
            mp0 mp0Var3 = mp0VarArr2[i];
            boolean z = mp0Var3.y;
            od odVar = mp0Var3.k;
            if (!z && mp0Var3.r == null && (qp5Var = c87Var.f) != null) {
                mp0Var3.f(qp5Var);
                if (i < length && (mp0Var2 = mp0VarArr[i]) != null) {
                    mp0Var2.f(qp5Var);
                }
            }
            if (mp0Var3.q == null) {
                as5 as5VarD = c87Var.a.d();
                if (odVar != null && (objG = as5VarD.G(odVar)) != null) {
                    c87Var.f(objG);
                    c87Var.s();
                    throw null;
                }
                gc8 gc8Var = mp0Var3.e;
                if (gc8Var == null) {
                    gc8Var = mp0Var3.d;
                    if (Modifier.isFinal(gc8Var.f.getModifiers())) {
                        em4VarP = c87Var.p(gc8Var, mp0Var3);
                        if (gc8Var.x0() && (rc8Var = (rc8) gc8Var.o0().p) != null && (em4VarP instanceof fu1)) {
                            em4VarP = ((fu1) em4VarP).o(rc8Var);
                        }
                        if (i < length || (mp0Var = mp0VarArr[i]) == null) {
                            mp0Var3.g(em4VarP);
                        } else {
                            mp0Var.g(em4VarP);
                        }
                    } else if (gc8Var.x0() || gc8Var.x.b.length > 0) {
                        mp0Var3.f = gc8Var;
                    }
                } else {
                    em4VarP = c87Var.p(gc8Var, mp0Var3);
                    if (gc8Var.x0()) {
                        em4VarP = ((fu1) em4VarP).o(rc8Var);
                    }
                    if (i < length) {
                        mp0Var3.g(em4VarP);
                    } else {
                        mp0Var3.g(em4VarP);
                    }
                }
            }
        }
        for (mp0 mp0Var4 : mp0VarArr2) {
            if (mp0Var4 instanceof he) {
                he heVar = (he) mp0Var4;
                em4 em4Var = heVar.L;
                if (em4Var instanceof iv1) {
                    em4 em4VarV = c87Var.v(em4Var, heVar.J);
                    heVar.L = em4VarV;
                    if (em4VarV instanceof p65) {
                        heVar.M = (p65) em4VarV;
                    }
                }
            }
        }
    }

    public final void v(Object obj, fk4 fk4Var, c87 c87Var) {
        if (this.e != null) {
            c87Var.getClass();
        }
        mp0[] mp0VarArr = this.d;
        int i = 0;
        try {
            int length = mp0VarArr.length;
            while (i < length) {
                mp0 mp0Var = mp0VarArr[i];
                if (mp0Var != null) {
                    mp0Var.k(obj, fk4Var, c87Var);
                }
                i++;
            }
        } catch (Exception e) {
            tn7.n(c87Var, e, obj, i != mp0VarArr.length ? mp0VarArr[i].b.a : "[anySetter]");
            throw null;
        } catch (StackOverflowError e2) {
            yk4 yk4Var = new yk4(fk4Var, "Infinite recursion (StackOverflowError)", e2);
            xk4 xk4Var = new xk4(obj, i != mp0VarArr.length ? mp0VarArr[i].b.a : "[anySetter]");
            if (yk4Var.a == null) {
                yk4Var.a = new LinkedList();
            }
            if (yk4Var.a.size() >= 1000) {
                throw yk4Var;
            }
            yk4Var.a.addFirst(xk4Var);
            throw yk4Var;
        }
    }

    public final void w(Object obj, fk4 fk4Var, c87 c87Var) {
        if (this.e != null) {
            c87Var.getClass();
        }
        l(c87Var, this.f);
        throw null;
    }

    public abstract op0 x(Set set, Set set2);

    public abstract op0 y(Object obj);

    public abstract op0 z(lr5 lr5Var);

    public op0(op0 op0Var, mp0[] mp0VarArr, mp0[] mp0VarArr2) {
        super(op0Var.a);
        this.c = op0Var.c;
        this.d = mp0VarArr;
        this.e = mp0VarArr2;
        this.k = op0Var.k;
        this.n = op0Var.n;
        this.f = op0Var.f;
        this.p = op0Var.p;
    }

    public op0(op0 op0Var, lr5 lr5Var, Object obj) {
        super(op0Var.a);
        this.c = op0Var.c;
        this.d = op0Var.d;
        this.e = op0Var.e;
        this.k = op0Var.k;
        this.n = lr5Var;
        this.f = obj;
        this.p = op0Var.p;
    }

    public op0(gc8 gc8Var, pp0 pp0Var, mp0[] mp0VarArr, mp0[] mp0VarArr2) {
        super(gc8Var);
        this.c = gc8Var;
        this.d = mp0VarArr;
        this.e = mp0VarArr2;
        this.k = (od) pp0Var.f;
        this.f = pp0Var.e;
        this.n = (lr5) pp0Var.k;
        this.p = ((wo0) pp0Var.a).b().b;
    }
}
