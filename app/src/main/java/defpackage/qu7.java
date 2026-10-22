package defpackage;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class qu7 implements Callable {
    public final /* synthetic */ qc6 a;
    public final /* synthetic */ ez2 b;
    public final /* synthetic */ wc2 c;
    public final /* synthetic */ boolean d;
    public final /* synthetic */ bv7 e;

    public qu7(bv7 bv7Var, qc6 qc6Var, ez2 ez2Var, wc2 wc2Var, boolean z) {
        this.e = bv7Var;
        this.a = qc6Var;
        this.b = ez2Var;
        this.c = wc2Var;
        this.d = z;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        boolean z;
        Object obj;
        qc6 qc6Var = this.a;
        gy5 gy5Var = qc6Var.a;
        bv7 bv7Var = this.e;
        ua4 ua4Var = bv7Var.a;
        av7 av7Var = bv7Var.f;
        lu7 lu7Var = (lu7) ua4Var.e(gy5Var);
        ArrayList arrayList = new ArrayList();
        if (lu7Var == null) {
            return arrayList;
        }
        HashMap map = lu7Var.a;
        if (!qc6Var.b() && lu7Var.h(qc6Var) == null) {
            return arrayList;
        }
        ArrayList<qc6> arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        boolean zG = lu7Var.g();
        boolean zB = qc6Var.b();
        oc6 oc6Var = qc6Var.b;
        wc2 wc2Var = this.c;
        ez2 ez2Var = this.b;
        if (zB) {
            Iterator it = map.entrySet().iterator();
            while (it.hasNext()) {
                ik8 ik8Var = (ik8) ((Map.Entry) it.next()).getValue();
                List listB = ik8Var.b(ez2Var, wc2Var);
                qc6 qc6Var2 = ik8Var.a;
                arrayList3.addAll(listB);
                if (ik8Var.d.isEmpty()) {
                    it.remove();
                    if (!qc6Var2.b.d()) {
                        arrayList2.add(qc6Var2);
                    }
                }
            }
        } else {
            ik8 ik8Var2 = (ik8) map.get(oc6Var);
            if (ik8Var2 != null) {
                qc6 qc6Var3 = ik8Var2.a;
                arrayList3.addAll(ik8Var2.b(ez2Var, wc2Var));
                if (ik8Var2.d.isEmpty()) {
                    map.remove(oc6Var);
                    if (!qc6Var3.b.d()) {
                        arrayList2.add(qc6Var3);
                    }
                }
            }
        }
        if (zG && !lu7Var.g()) {
            arrayList2.add(qc6.a(qc6Var.a));
        }
        if (map.isEmpty()) {
            bv7Var.a = bv7Var.a.g(gy5Var);
        }
        Iterator it2 = arrayList2.iterator();
        loop1: while (true) {
            while (true) {
                if (!it2.hasNext()) {
                    break loop1;
                }
                qc6 qc6Var4 = (qc6) it2.next();
                bv7Var.g.c();
                z = z || qc6Var4.b.d();
            }
        }
        if (this.d) {
            return null;
        }
        ua4 ua4VarF = bv7Var.a;
        Object obj2 = ua4VarF.a;
        boolean z2 = obj2 != null && ((lu7) obj2).g();
        dy5 dy5Var = new dy5(gy5Var);
        while (dy5Var.hasNext()) {
            ua4VarF = ua4VarF.f((m61) dy5Var.next());
            z2 = z2 || ((obj = ua4VarF.a) != null && ((lu7) obj).g());
            if (z2 || ua4VarF.isEmpty()) {
                break;
            }
        }
        if (z && !z2) {
            ua4 ua4VarL = bv7Var.a.l(gy5Var);
            if (!ua4VarL.isEmpty()) {
                ArrayList<ik8> arrayList4 = new ArrayList();
                bv7.j(ua4VarL, arrayList4);
                for (ik8 ik8Var3 : arrayList4) {
                    gd gdVar = new gd(bv7Var, ik8Var3);
                    av7Var.f(bv7.k(ik8Var3.a), (hx7) gdVar.c, gdVar, gdVar);
                }
            }
        }
        if (!z2 && !arrayList2.isEmpty() && wc2Var == null) {
            if (z) {
                av7Var.c(bv7.k(qc6Var));
            } else {
                for (qc6 qc6Var5 : arrayList2) {
                    zm5.s(bv7Var.m(qc6Var5) != null);
                    av7Var.c(bv7.k(qc6Var5));
                }
            }
        }
        for (qc6 qc6Var6 : arrayList2) {
            if (!qc6Var6.b.d()) {
                hx7 hx7VarM = bv7Var.m(qc6Var6);
                zm5.s(hx7VarM != null);
                bv7Var.d.remove(qc6Var6);
                bv7Var.c.remove(hx7VarM);
            }
        }
        return arrayList3;
    }
}
