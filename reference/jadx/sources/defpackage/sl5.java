package defpackage;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class sl5 {
    public final km7 a = new km7(tl5.g);
    public final km7 b;
    public final mf6 c;
    public final w40 d;
    public final w40 e;
    public rs5 f;
    public int g;
    public rl5 h;
    public final LinkedHashSet i;
    public final LinkedHashSet j;
    public final LinkedHashSet k;
    public boolean l;
    public boolean m;
    public boolean n;

    public sl5() {
        km7 km7Var = new km7(new ql5());
        this.b = km7Var;
        this.c = new mf6(km7Var);
        this.d = new w40();
        this.e = new w40();
        this.i = new LinkedHashSet();
        this.j = new LinkedHashSet();
        this.k = new LinkedHashSet();
    }

    public final void a(f41 f41Var, rl5 rl5Var, int i) {
        LinkedHashSet linkedHashSet;
        boolean z;
        f41Var.getClass();
        if (rl5Var.a != null) {
            StringBuilder sb = new StringBuilder("Input '");
            sb.append(rl5Var);
            f41 f41Var2 = rl5Var.a;
            sb.append("' is already added to dispatcher ");
            sb.append(f41Var2);
            sb.append('.');
            throw new IllegalArgumentException(sb.toString().toString());
        }
        if (i != 0) {
            linkedHashSet = i != 1 ? this.i : this.j;
        } else {
            linkedHashSet = this.k;
        }
        linkedHashSet.add(rl5Var);
        rl5Var.a = f41Var;
        ((ql5) this.c.a.d()).getClass();
        if (i != 0) {
            z = i != 1 ? this.n : this.l;
        } else {
            z = this.m;
        }
        rl5Var.b(z);
    }

    public final void b() {
        boolean z;
        boolean z2;
        ql5 ql5Var;
        w40<rs5> w40Var = this.d;
        if (w40Var != null && w40Var.isEmpty()) {
            z = false;
            break;
        }
        Iterator it = w40Var.iterator();
        while (true) {
            if (it.hasNext()) {
                if (((rs5) it.next()).d) {
                    z = true;
                    break;
                }
            } else {
                z = false;
                break;
            }
        }
        w40<rs5> w40Var2 = this.e;
        if (w40Var2 != null && w40Var2.isEmpty()) {
            z2 = false;
            break;
        }
        Iterator it2 = w40Var2.iterator();
        while (true) {
            if (it2.hasNext()) {
                if (((rs5) it2.next()).d) {
                    z2 = true;
                    break;
                }
            } else {
                z2 = false;
                break;
            }
        }
        boolean z3 = z || z2;
        boolean z4 = this.m != z;
        boolean z5 = this.l != z2;
        boolean z6 = this.n != z3;
        LinkedHashSet linkedHashSet = this.k;
        if (z4) {
            Iterator it3 = linkedHashSet.iterator();
            while (it3.hasNext()) {
                ((rl5) it3.next()).b(z);
            }
        }
        LinkedHashSet linkedHashSet2 = this.j;
        if (z5) {
            Iterator it4 = linkedHashSet2.iterator();
            while (it4.hasNext()) {
                ((rl5) it4.next()).b(z2);
            }
        }
        LinkedHashSet linkedHashSet3 = this.i;
        if (z6) {
            Iterator it5 = linkedHashSet3.iterator();
            while (it5.hasNext()) {
                ((rl5) it5.next()).b(z3);
            }
        }
        this.m = z;
        this.l = z2;
        this.n = z3;
        rs5 rs5VarC = this.f;
        if (rs5VarC == null) {
            rs5VarC = c(0);
        }
        rs5 rs5VarC2 = this.f;
        if (rs5VarC2 == null) {
            rs5VarC2 = c(0);
        }
        if (pe4.d(rs5VarC2, rs5VarC)) {
            if (rs5VarC2 == null) {
                ql5Var = new ql5();
            } else {
                ArrayList arrayList = new ArrayList();
                for (rs5 rs5Var : w40Var) {
                    if (rs5Var.d) {
                        rs5Var.b.getClass();
                    }
                }
                for (rs5 rs5Var2 : w40Var2) {
                    if (rs5Var2.d) {
                        rs5Var2.b.getClass();
                    }
                }
                ts5 ts5Var = rs5VarC2.a;
                ov2 ov2Var = rs5VarC2.c;
                ts5Var.getClass();
                ov2Var.getClass();
                ww4 ww4VarP = nc8.p();
                el1.K0(arrayList, ww4VarP);
                ww4VarP.add(ts5Var);
                el1.K0(ov2Var, ww4VarP);
                ql5Var = new ql5(arrayList.size(), nc8.h(ww4VarP));
            }
            km7 km7Var = this.b;
            if (pe4.d((ql5) km7Var.d(), ql5Var)) {
                return;
            }
            km7Var.e(null, ql5Var);
            Iterator it6 = linkedHashSet.iterator();
            while (it6.hasNext()) {
                ((rl5) it6.next()).getClass();
            }
            Iterator it7 = linkedHashSet2.iterator();
            while (it7.hasNext()) {
                ((rl5) it7.next()).getClass();
            }
            Iterator it8 = linkedHashSet3.iterator();
            while (it8.hasNext()) {
                ((rl5) it8.next()).getClass();
            }
        }
    }

    public final rs5 c(int i) {
        Object next;
        Object next2;
        w40 w40Var = this.e;
        w40 w40Var2 = this.d;
        Object obj = null;
        if (i == -1) {
            Iterator it = w40Var2.iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (!((rs5) next).d);
            rs5 rs5Var = (rs5) next;
            if (rs5Var != null) {
                return rs5Var;
            }
            for (Object obj2 : w40Var) {
                if (((rs5) obj2).d) {
                    obj = obj2;
                    break;
                }
            }
            return (rs5) obj;
        }
        if (i != 0) {
            if (i != 1) {
                throw new IllegalStateException(("Unsupported direction: '" + i + "'.").toString());
            }
            Iterator it2 = w40Var2.iterator();
            while (it2.hasNext()) {
                ((rs5) it2.next()).getClass();
            }
            Iterator it3 = w40Var.iterator();
            while (it3.hasNext()) {
                ((rs5) it3.next()).getClass();
            }
            return null;
        }
        Iterator it4 = w40Var2.iterator();
        do {
            if (!it4.hasNext()) {
                next2 = null;
                break;
            }
            next2 = it4.next();
        } while (!((rs5) next2).d);
        rs5 rs5Var2 = (rs5) next2;
        if (rs5Var2 != null) {
            return rs5Var2;
        }
        for (Object obj3 : w40Var) {
            if (((rs5) obj3).d) {
                obj = obj3;
                break;
            }
        }
        return (rs5) obj;
    }
}
