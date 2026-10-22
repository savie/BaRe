package defpackage;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;
import java.util.Stack;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes.dex */
public final class lh0 implements Serializable {
    public final transient y8 a;
    public final int b;
    public final ArrayList c;
    public final int d;
    public final ArrayList e;
    public final TreeMap f;
    public final Stack k;
    public final TreeMap n;
    public int p;
    public boolean q;
    public transient int r;

    public lh0(lh0 lh0Var, f1 f1Var) {
        this.a = new y8(new un8(f1Var));
        this.b = lh0Var.b;
        this.d = lh0Var.d;
        ArrayList arrayList = new ArrayList();
        this.e = arrayList;
        arrayList.addAll(lh0Var.e);
        this.f = new TreeMap();
        for (Integer num : lh0Var.f.keySet()) {
            this.f.put(num, (LinkedList) ((LinkedList) lh0Var.f.get(num)).clone());
        }
        Stack stack = new Stack();
        this.k = stack;
        stack.addAll(lh0Var.k);
        this.c = new ArrayList();
        Iterator it = lh0Var.c.iterator();
        while (it.hasNext()) {
            this.c.add(((nh0) it.next()).clone());
        }
        this.n = new TreeMap((Map) lh0Var.n);
        int i = lh0Var.p;
        this.p = i;
        this.r = lh0Var.r;
        this.q = lh0Var.q;
        if (this.e == null) {
            l0.e("authenticationPath == null");
            throw null;
        }
        if (this.f == null) {
            l0.e("retain == null");
            throw null;
        }
        if (this.k == null) {
            l0.e("stack == null");
            throw null;
        }
        if (this.c == null) {
            l0.e("treeHashInstances == null");
            throw null;
        }
        if (jd4.u(this.b, i)) {
            return;
        }
        l0.e("index in BDS state out of bounds");
        throw null;
    }

    public final void a(byte[] bArr, byte[] bArr2, uq5 uq5Var) {
        uq5 uq5Var2;
        int i;
        uq5 uq5Var3 = uq5Var;
        long j = uq5Var3.b;
        int i2 = uq5Var3.a;
        xp4 xp4Var = new xp4();
        xp4Var.c = i2;
        xp4Var.b = j;
        yp4 yp4Var = new yp4(xp4Var);
        z24 z24Var = new z24();
        z24Var.c = i2;
        z24Var.b = j;
        a34 a34Var = new a34(z24Var);
        int i3 = 0;
        while (true) {
            int i4 = this.b;
            int i5 = 1 << i4;
            Stack stack = this.k;
            if (i3 >= i5) {
                return;
            }
            tq5 tq5Var = new tq5();
            tq5Var.c = uq5Var3.a;
            tq5Var.b = uq5Var3.b;
            tq5Var.e = i3;
            tq5Var.f = uq5Var3.f;
            tq5Var.g = uq5Var3.g;
            tq5Var.d = uq5Var3.d;
            uq5 uq5Var4 = new uq5(tq5Var);
            y8 y8Var = this.a;
            y8Var.g(y8Var.f(bArr2, uq5Var4), bArr);
            ty3 ty3VarE = y8Var.e(uq5Var4);
            xp4 xp4Var2 = new xp4();
            xp4Var2.c = yp4Var.a;
            xp4Var2.b = yp4Var.b;
            xp4Var2.e = i3;
            xp4Var2.f = yp4Var.f;
            xp4Var2.g = yp4Var.g;
            xp4Var2.d = yp4Var.d;
            yp4Var = new yp4(xp4Var2);
            qx8 qx8VarQ = xx3.q(y8Var, ty3VarE, yp4Var);
            z24 z24Var2 = new z24();
            z24Var2.c = a34Var.a;
            z24Var2.b = a34Var.b;
            z24Var2.f = i3;
            z24Var2.d = a34Var.d;
            a34Var = new a34(z24Var2);
            while (!stack.isEmpty()) {
                int i6 = ((qx8) stack.peek()).a;
                int i7 = qx8VarQ.a;
                if (i6 != i7) {
                    break;
                }
                int i8 = i3 / (1 << i7);
                if (i8 == 1) {
                    this.e.add(qx8VarQ);
                }
                int i9 = this.d;
                if (i8 == 3) {
                    if (i7 < i4 - i9) {
                        nh0 nh0Var = (nh0) this.c.get(i7);
                        nh0Var.a = qx8VarQ;
                        nh0Var.c = i7;
                        uq5Var2 = uq5Var4;
                        if (i7 == nh0Var.b) {
                            nh0Var.f = true;
                        }
                    } else {
                        uq5Var2 = uq5Var4;
                    }
                    i = 3;
                } else {
                    uq5Var2 = uq5Var4;
                    i = 3;
                }
                if (i8 >= i && (i8 & 1) == 1 && i7 >= i4 - i9 && i7 <= i4 - 2) {
                    Integer numValueOf = Integer.valueOf(i7);
                    TreeMap treeMap = this.f;
                    if (treeMap.get(numValueOf) == null) {
                        LinkedList linkedList = new LinkedList();
                        linkedList.add(qx8VarQ);
                        treeMap.put(Integer.valueOf(i7), linkedList);
                    } else {
                        ((LinkedList) treeMap.get(Integer.valueOf(i7))).add(qx8VarQ);
                    }
                }
                z24 z24Var3 = new z24();
                z24Var3.c = a34Var.a;
                z24Var3.b = a34Var.b;
                z24Var3.e = a34Var.e;
                z24Var3.f = (a34Var.f - 1) / 2;
                z24Var3.d = a34Var.d;
                a34 a34Var2 = new a34(z24Var3);
                qx8 qx8VarY = xx3.y(y8Var, (qx8) stack.pop(), qx8VarQ, a34Var2);
                qx8VarQ = new qx8(jd4.g(qx8VarY.b), qx8VarY.a + 1);
                z24 z24Var4 = new z24();
                z24Var4.c = a34Var2.a;
                z24Var4.b = a34Var2.b;
                z24Var4.e = a34Var2.e + 1;
                z24Var4.f = a34Var2.f;
                z24Var4.d = a34Var2.d;
                a34Var = new a34(z24Var4);
                uq5Var4 = uq5Var2;
            }
            stack.push(qx8VarQ);
            i3++;
            uq5Var3 = uq5Var4;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v9, types: [int] */
    /* JADX WARN: Type inference failed for: r7v17 */
    /* JADX WARN: Type inference failed for: r7v18, types: [int] */
    /* JADX WARN: Type inference failed for: r7v19 */
    public final void b(byte[] bArr, byte[] bArr2, uq5 uq5Var) {
        int i;
        boolean z;
        uq5 uq5Var2;
        int i2;
        int i3;
        int i4;
        long j;
        Stack stack;
        int i5;
        int i6;
        int i7;
        byte[] bArr3 = bArr;
        byte[] bArr4 = bArr2;
        uq5 uq5Var3 = uq5Var;
        long j2 = uq5Var3.b;
        int i8 = uq5Var3.a;
        if (this.q) {
            l0.e("index already used");
            return;
        }
        int i9 = this.p;
        if (i9 > this.r - 1) {
            l0.e("index out of bounds");
            return;
        }
        int i10 = 0;
        int i11 = 0;
        while (true) {
            i = this.b;
            if (i11 >= i) {
                i11 = 0;
                break;
            } else if (((i9 >> i11) & 1) == 0) {
                break;
            } else {
                i11++;
            }
        }
        int i12 = (this.p >> (i11 + 1)) & 1;
        TreeMap treeMap = this.n;
        ArrayList arrayList = this.e;
        if (i12 == 0 && i11 < i - 1) {
            treeMap.put(Integer.valueOf(i11), (qx8) arrayList.get(i11));
        }
        ArrayList<nh0> arrayList2 = this.c;
        int i13 = this.d;
        boolean z2 = true;
        y8 y8Var = this.a;
        if (i11 == 0) {
            tq5 tq5Var = new tq5();
            tq5Var.c = i8;
            tq5Var.b = j2;
            tq5Var.e = this.p;
            tq5Var.f = uq5Var3.f;
            tq5Var.g = uq5Var3.g;
            tq5Var.d = uq5Var3.d;
            uq5Var3 = new uq5(tq5Var);
            y8Var.g(y8Var.f(bArr4, uq5Var3), bArr3);
            ty3 ty3VarE = y8Var.e(uq5Var3);
            xp4 xp4Var = new xp4();
            xp4Var.c = i8;
            xp4Var.b = j2;
            xp4Var.e = this.p;
            xp4Var.f = 0;
            xp4Var.g = 0;
            xp4Var.d = 0;
            arrayList.set(0, xx3.q(y8Var, ty3VarE, new yp4(xp4Var)));
        } else {
            z24 z24Var = new z24();
            z24Var.c = i8;
            z24Var.b = j2;
            int i14 = i11 - 1;
            z24Var.e = i14;
            z24Var.f = this.p >> i11;
            z24Var.d = 0;
            a34 a34Var = new a34(z24Var);
            y8Var.g(y8Var.f(bArr4, uq5Var3), bArr3);
            qx8 qx8VarY = xx3.y(y8Var, (qx8) arrayList.get(i14), (qx8) treeMap.get(Integer.valueOf(i14)), a34Var);
            arrayList.set(i11, new qx8(jd4.g(qx8VarY.b), qx8VarY.a + 1));
            treeMap.remove(Integer.valueOf(i14));
            int i15 = 0;
            while (i15 < i11) {
                arrayList.set(i15, i15 < i - i13 ? ((nh0) arrayList2.get(i15)).a : (qx8) ((LinkedList) this.f.get(Integer.valueOf(i15))).removeFirst());
                i15++;
            }
            int iMin = Math.min(i11, i - i13);
            int i16 = 0;
            while (i16 < iMin) {
                int i17 = (((z2 ? 1 : 0) << i16) * 3) + this.p + 1;
                if (i17 < ((z2 ? 1 : 0) << i)) {
                    nh0 nh0Var = (nh0) arrayList2.get(i16);
                    nh0Var.a = null;
                    nh0Var.c = nh0Var.b;
                    nh0Var.d = i17;
                    z = z2 ? 1 : 0;
                    nh0Var.e = z;
                    nh0Var.f = false;
                } else {
                    z = z2 ? 1 : 0;
                }
                i16++;
                z2 = z;
            }
        }
        for (?? r7 = z2; i10 < ((i - i13) >> r7); r7 = 1) {
            nh0 nh0Var2 = null;
            for (nh0 nh0Var3 : arrayList2) {
                if (!nh0Var3.f && nh0Var3.e && (nh0Var2 == null || nh0Var3.b() < nh0Var2.b() || (nh0Var3.b() == nh0Var2.b() && nh0Var3.d < nh0Var2.d))) {
                    nh0Var2 = nh0Var3;
                }
            }
            if (nh0Var2 != null) {
                int i18 = nh0Var2.b;
                if (nh0Var2.f || !nh0Var2.e) {
                    l0.e("finished or not initialized");
                    return;
                }
                tq5 tq5Var2 = new tq5();
                tq5Var2.c = uq5Var3.a;
                tq5Var2.b = uq5Var3.b;
                int i19 = nh0Var2.d;
                tq5Var2.e = i19;
                tq5Var2.f = uq5Var3.f;
                tq5Var2.g = uq5Var3.g;
                tq5Var2.d = uq5Var3.d;
                uq5 uq5Var4 = new uq5(tq5Var2);
                long j3 = uq5Var4.b;
                xp4 xp4Var2 = new xp4();
                uq5Var2 = uq5Var3;
                int i20 = uq5Var4.a;
                xp4Var2.c = i20;
                xp4Var2.b = j3;
                xp4Var2.e = i19;
                i3 = i;
                yp4 yp4Var = new yp4(xp4Var2);
                z24 z24Var2 = new z24();
                z24Var2.c = i20;
                z24Var2.b = j3;
                z24Var2.f = i19;
                a34 a34Var2 = new a34(z24Var2);
                y8Var.g(y8Var.f(bArr4, uq5Var4), bArr3);
                qx8 qx8VarQ = xx3.q(y8Var, y8Var.e(uq5Var4), yp4Var);
                while (true) {
                    i4 = a34Var2.d;
                    j = a34Var2.b;
                    stack = this.k;
                    boolean zIsEmpty = stack.isEmpty();
                    i5 = a34Var2.f;
                    i6 = a34Var2.e;
                    i7 = a34Var2.a;
                    if (zIsEmpty || ((qx8) stack.peek()).a != qx8VarQ.a || ((qx8) stack.peek()).a == i18) {
                        break;
                    }
                    z24 z24Var3 = new z24();
                    z24Var3.c = i7;
                    z24Var3.b = j;
                    z24Var3.e = i6;
                    z24Var3.f = (i5 - 1) / 2;
                    z24Var3.d = i4;
                    a34 a34Var3 = new a34(z24Var3);
                    qx8 qx8VarY2 = xx3.y(y8Var, (qx8) stack.pop(), qx8VarQ, a34Var3);
                    qx8VarQ = new qx8(jd4.g(qx8VarY2.b), qx8VarY2.a + 1);
                    z24 z24Var4 = new z24();
                    z24Var4.c = a34Var3.a;
                    z24Var4.b = a34Var3.b;
                    z24Var4.e = a34Var3.e + 1;
                    z24Var4.f = a34Var3.f;
                    z24Var4.d = a34Var3.d;
                    a34Var2 = new a34(z24Var4);
                }
                qx8 qx8Var = nh0Var2.a;
                if (qx8Var == null) {
                    nh0Var2.a = qx8VarQ;
                    i2 = i10;
                } else {
                    i2 = i10;
                    if (qx8Var.a == qx8VarQ.a) {
                        z24 z24Var5 = new z24();
                        z24Var5.c = i7;
                        z24Var5.b = j;
                        z24Var5.e = i6;
                        z24Var5.f = (i5 - 1) / 2;
                        z24Var5.d = i4;
                        qx8VarQ = new qx8(jd4.g(xx3.y(y8Var, qx8Var, qx8VarQ, new a34(z24Var5)).b), nh0Var2.a.a + 1);
                        nh0Var2.a = qx8VarQ;
                    } else {
                        stack.push(qx8VarQ);
                    }
                }
                if (nh0Var2.a.a == i18) {
                    nh0Var2.f = true;
                } else {
                    nh0Var2.c = qx8VarQ.a;
                    nh0Var2.d++;
                }
            } else {
                uq5Var2 = uq5Var3;
                i2 = i10;
                i3 = i;
            }
            i10 = i2 + 1;
            bArr3 = bArr;
            bArr4 = bArr2;
            uq5Var3 = uq5Var2;
            i = i3;
        }
        this.p++;
    }

    public lh0(lh0 lh0Var) {
        this.a = new y8((un8) lh0Var.a.a);
        this.b = lh0Var.b;
        this.d = lh0Var.d;
        ArrayList arrayList = new ArrayList();
        this.e = arrayList;
        arrayList.addAll(lh0Var.e);
        this.f = new TreeMap();
        for (Integer num : lh0Var.f.keySet()) {
            this.f.put(num, (LinkedList) ((LinkedList) lh0Var.f.get(num)).clone());
        }
        Stack stack = new Stack();
        this.k = stack;
        stack.addAll(lh0Var.k);
        this.c = new ArrayList();
        Iterator it = lh0Var.c.iterator();
        while (it.hasNext()) {
            this.c.add(((nh0) it.next()).clone());
        }
        this.n = new TreeMap((Map) lh0Var.n);
        this.p = lh0Var.p;
        this.r = lh0Var.r;
        this.q = lh0Var.q;
    }

    public lh0(y8 y8Var, int i, int i2, int i3) {
        this.a = y8Var;
        this.b = i;
        this.r = i3;
        this.d = i2;
        if (i2 <= i && i2 >= 2) {
            int i4 = i - i2;
            if (i4 % 2 == 0) {
                this.e = new ArrayList();
                this.f = new TreeMap();
                this.k = new Stack();
                this.c = new ArrayList();
                for (int i5 = 0; i5 < i4; i5++) {
                    this.c.add(new nh0(i5));
                }
                this.n = new TreeMap();
                this.p = 0;
                this.q = false;
                return;
            }
        }
        c6.f("illegal value for BDS parameter k");
        throw null;
    }

    public lh0(lh0 lh0Var, byte[] bArr, byte[] bArr2, uq5 uq5Var) {
        this.a = new y8((un8) lh0Var.a.a);
        this.b = lh0Var.b;
        this.d = lh0Var.d;
        ArrayList arrayList = new ArrayList();
        this.e = arrayList;
        arrayList.addAll(lh0Var.e);
        this.f = new TreeMap();
        for (Integer num : lh0Var.f.keySet()) {
            this.f.put(num, (LinkedList) ((LinkedList) lh0Var.f.get(num)).clone());
        }
        Stack stack = new Stack();
        this.k = stack;
        stack.addAll(lh0Var.k);
        this.c = new ArrayList();
        Iterator it = lh0Var.c.iterator();
        while (it.hasNext()) {
            this.c.add(((nh0) it.next()).clone());
        }
        this.n = new TreeMap((Map) lh0Var.n);
        this.p = lh0Var.p;
        this.r = lh0Var.r;
        this.q = false;
        b(bArr, bArr2, uq5Var);
    }

    public lh0(rx8 rx8Var, byte[] bArr, byte[] bArr2, uq5 uq5Var) {
        y8 y8Var = new y8(rx8Var.g);
        int i = rx8Var.b;
        this(y8Var, i, rx8Var.c, (1 << i) - 1);
        a(bArr, bArr2, uq5Var);
    }
}
