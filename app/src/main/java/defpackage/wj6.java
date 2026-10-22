package defpackage;

import android.os.Handler;
import com.nimbusds.jose.jwk.JWKParameterNames;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class wj6 {
    public final xj6 a;
    public final is5 b;
    public wz5 c;
    public nh d;
    public ns0 e;
    public gd f;
    public final c00 g;
    public final uc2 h;
    public final u00 i;
    public final u00 j;
    public final u00 k;
    public long l;
    public bv7 m;
    public bv7 n;
    public long o;

    public wj6(uc2 uc2Var, xj6 xj6Var) {
        new lv1(11);
        is5 is5Var = new is5();
        is5Var.a = 0L;
        this.b = is5Var;
        this.l = 1L;
        this.o = 0L;
        this.a = xj6Var;
        this.h = uc2Var;
        this.i = uc2Var.a("RepoOperation");
        this.j = uc2Var.a("Transaction");
        this.k = uc2Var.a("DataOperation");
        this.g = new c00(uc2Var);
        n(new w8(this, 3));
    }

    public static void b(wj6 wj6Var, String str, gy5 gy5Var, wc2 wc2Var) {
        int i;
        wj6Var.getClass();
        if (wc2Var == null || (i = wc2Var.a) == -1 || i == -25) {
            return;
        }
        u00 u00Var = wj6Var.i;
        StringBuilder sbN = fz5.n(str, " at ");
        sbN.append(gy5Var.toString());
        sbN.append(" failed: ");
        sbN.append(wc2Var.toString());
        u00Var.j(sbN.toString());
    }

    public static void c(wj6 wj6Var, long j, gy5 gy5Var, wc2 wc2Var) {
        wj6Var.getClass();
        if (wc2Var == null || wc2Var.a != -25) {
            List listC = wj6Var.n.c(j, !(wc2Var == null), true, wj6Var.b);
            if (listC.size() > 0) {
                wj6Var.m(gy5Var);
            }
            wj6Var.j(listC);
        }
    }

    public static void e(ArrayList arrayList, gd gdVar) {
        List list = (List) ((eb8) gdVar.d).b;
        if (list != null) {
            arrayList.addAll(list);
        }
        for (Object obj : ((eb8) gdVar.d).a.entrySet().toArray()) {
            Map.Entry entry = (Map.Entry) obj;
            e(arrayList, new gd(7, (m61) entry.getKey(), gdVar, (eb8) entry.getValue()));
        }
    }

    public static ArrayList f(gd gdVar) {
        ArrayList arrayList = new ArrayList();
        e(arrayList, gdVar);
        Collections.sort(arrayList);
        return arrayList;
    }

    public final void a(gd gdVar) {
        eb8 eb8Var = (eb8) gdVar.d;
        List list = (List) eb8Var.b;
        ArrayList arrayList = new ArrayList();
        if (list != null) {
            ArrayList arrayList2 = new ArrayList();
            wc2 wc2VarB = wc2.b("overriddenBySet", null);
            int i = -1;
            for (int i2 = 0; i2 < list.size(); i2++) {
                vj6 vj6Var = (vj6) list.get(i2);
                int i3 = vj6Var.d;
                if (i3 != 5) {
                    if (i3 == 3) {
                        zm5.s(i == i2 + (-1));
                        vj6Var.d = 5;
                        vj6Var.k = wc2VarB;
                        i = i2;
                    } else {
                        int i4 = 2;
                        zm5.s(i3 == 2);
                        l(new bj8(this, vj6Var.c, qc6.a(vj6Var.a)));
                        arrayList.addAll(this.n.c(vj6Var.n, true, false, this.b));
                        arrayList2.add(new b9(i4, vj6Var, wc2VarB));
                    }
                }
            }
            if (i == -1) {
                eb8Var.b = null;
                gdVar.o();
            } else {
                eb8Var.b = list.subList(0, i + 1);
                gdVar.o();
            }
            j(arrayList);
            Iterator it = arrayList2.iterator();
            while (it.hasNext()) {
                i((Runnable) it.next());
            }
        }
    }

    public final void d(ez2 ez2Var) {
        m61 m61VarK = ez2Var.e().a.k();
        j((m61VarK == null || !m61VarK.equals(vs1.a)) ? this.n.d(ez2Var, false) : this.m.d(ez2Var, false));
    }

    public final gd g(gy5 gy5Var) {
        gd gdVarN = this.f;
        while (!gy5Var.isEmpty() && ((eb8) gdVarN.d).b == null) {
            gdVarN = gdVarN.n(new gy5(gy5Var.k()));
            gy5Var = gy5Var.p();
        }
        return gdVarN;
    }

    public final void h(qc6 qc6Var, boolean z) {
        gy5 gy5Var = qc6Var.a;
        zm5.s(gy5Var.isEmpty() || !gy5Var.k().equals(vs1.a));
        bv7 bv7Var = this.n;
        HashSet hashSet = bv7Var.e;
        if (z && !hashSet.contains(qc6Var)) {
            bv7Var.d(new zu7(qc6Var), true);
            hashSet.add(qc6Var);
        } else {
            if (z || !hashSet.contains(qc6Var)) {
                return;
            }
            zu7 zu7Var = new zu7(qc6Var);
            bv7Var.l(zu7Var.d, zu7Var, null, true);
            hashSet.remove(qc6Var);
        }
    }

    public final void i(Runnable runnable) {
        ((Handler) this.h.b.b).post(runnable);
    }

    public final void j(List list) {
        if (list.isEmpty()) {
            return;
        }
        c00 c00Var = this.g;
        u00 u00Var = (u00) c00Var.c;
        if (u00Var.e()) {
            u00Var.c("Raising " + list.size() + " event(s)", null, new Object[0]);
        }
        ArrayList arrayList = new ArrayList(list);
        ((Handler) ((zq8) c00Var.b).b).post(new ax2(1, c00Var, arrayList));
    }

    public final void k(gd gdVar) {
        eb8 eb8Var = (eb8) gdVar.d;
        eb8 eb8Var2 = (eb8) gdVar.d;
        List list = (List) eb8Var.b;
        if (list != null) {
            int i = 0;
            while (i < list.size()) {
                if (((vj6) list.get(i)).d == 4) {
                    list.remove(i);
                } else {
                    i++;
                }
            }
            if (list.size() > 0) {
                eb8Var2.b = list;
                gdVar.o();
            } else {
                eb8Var2.b = null;
                gdVar.o();
            }
        }
        for (Object obj : eb8Var2.a.entrySet().toArray()) {
            Map.Entry entry = (Map.Entry) obj;
            k(new gd(7, (m61) entry.getKey(), gdVar, (eb8) entry.getValue()));
        }
    }

    public final void l(ez2 ez2Var) {
        List listL;
        if (vs1.a.equals(ez2Var.e().a.k())) {
            bv7 bv7Var = this.m;
            bv7Var.getClass();
            listL = bv7Var.l(ez2Var.e(), ez2Var, null, false);
        } else {
            bv7 bv7Var2 = this.n;
            bv7Var2.getClass();
            listL = bv7Var2.l(ez2Var.e(), ez2Var, null, false);
        }
        j(listL);
    }

    /* JADX WARN: Code duplicated, block: B:47:0x0158  */
    /* JADX WARN: Code duplicated, block: B:62:0x017c A[SYNTHETIC] */
    public final gy5 m(gy5 gy5Var) {
        wc2 wc2Var;
        wc2 wc2VarB;
        boolean z;
        wc2 wc2VarA;
        b98 b98Var;
        gd gdVarG = g(gy5Var);
        gy5 gy5VarG = gdVarG.g();
        ArrayList arrayListF = f(gdVarG);
        if (arrayListF.isEmpty()) {
            return gy5VarG;
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        Iterator it = arrayListF.iterator();
        while (it.hasNext()) {
            arrayList2.add(Long.valueOf(((vj6) it.next()).n));
        }
        Iterator it2 = arrayListF.iterator();
        while (it2.hasNext()) {
            vj6 vj6Var = (vj6) it2.next();
            gy5 gy5Var2 = vj6Var.a;
            gy5 gy5VarO = gy5.o(gy5VarG, gy5Var2);
            ArrayList arrayList3 = new ArrayList();
            zm5.s(gy5VarO != null);
            int i = vj6Var.d;
            is5 is5Var = this.b;
            if (i == 6) {
                wc2VarB = vj6Var.k;
                if (wc2VarB.a != -25) {
                    arrayList3.addAll(this.n.c(vj6Var.n, true, false, is5Var));
                }
            } else {
                if (i == 2) {
                    if (vj6Var.f >= 25) {
                        wc2VarB = wc2.b("maxretries", null);
                        arrayList3.addAll(this.n.c(vj6Var.n, true, false, is5Var));
                    } else {
                        qn5 qn5VarI = this.n.i(gy5Var2, arrayList2);
                        if (qn5VarI == null) {
                            qn5VarI = qv2.e;
                        }
                        qn5 qn5Var = qn5VarI;
                        vj6Var.p = qn5Var;
                        fj5 fj5Var = new fj5(qn5Var);
                        try {
                            bf3 bf3Var = vj6Var.b;
                            try {
                                b98Var = (b98) bf3Var.a.invoke(fj5Var);
                            } catch (Exception e) {
                                bf3Var.b.set(e);
                                b98Var = new b98(false, null);
                            }
                            wc2VarA = null;
                        } catch (Throwable th) {
                            this.i.d("Caught Throwable.", th);
                            wc2VarA = wc2.a(th);
                            b98Var = new b98(false, null);
                        }
                        if (b98Var.a) {
                            long j = vj6Var.n;
                            Long lValueOf = Long.valueOf(j);
                            HashMap mapV = ms8.v(is5Var);
                            qn5 qn5Var2 = b98Var.b;
                            qn5 qn5VarL = ms8.L(qn5Var2, new ej8(qn5Var), mapV);
                            vj6Var.q = qn5Var2;
                            vj6Var.r = qn5VarL;
                            long j2 = this.l;
                            this.l = j2 + 1;
                            vj6Var.n = j2;
                            arrayList2.remove(lValueOf);
                            arrayList3.addAll(this.n.h(vj6Var.a, qn5Var2, qn5VarL, vj6Var.n, false, false));
                            wc2Var = null;
                            arrayList3.addAll(this.n.c(j, true, false, is5Var));
                        } else {
                            it2 = it2;
                            arrayList3.addAll(this.n.c(vj6Var.n, true, false, is5Var));
                            z = true;
                            wc2VarB = wc2VarA;
                        }
                    }
                    j(arrayList3);
                    if (z) {
                        vj6Var.d = 4;
                        eb2 eb2Var = new eb2(new zc2(this, gy5Var2), sb4.d(vj6Var.p));
                        n(new te2(3, this, vj6Var));
                        arrayList.add(new ue2(vj6Var, wc2VarB, eb2Var));
                    }
                    it2 = it2;
                } else {
                    wc2Var = null;
                }
                wc2VarB = wc2Var;
                z = false;
                j(arrayList3);
                if (z) {
                    vj6Var.d = 4;
                    eb2 eb2Var2 = new eb2(new zc2(this, gy5Var2), sb4.d(vj6Var.p));
                    n(new te2(3, this, vj6Var));
                    arrayList.add(new ue2(vj6Var, wc2VarB, eb2Var2));
                }
                it2 = it2;
            }
            it2 = it2;
            z = true;
            j(arrayList3);
            if (z) {
                vj6Var.d = 4;
                eb2 eb2Var3 = new eb2(new zc2(this, gy5Var2), sb4.d(vj6Var.p));
                n(new te2(3, this, vj6Var));
                arrayList.add(new ue2(vj6Var, wc2VarB, eb2Var3));
            }
            it2 = it2;
        }
        k(this.f);
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            i((Runnable) arrayList.get(i2));
        }
        gd gdVar = this.f;
        k(gdVar);
        o(gdVar);
        return gy5VarG;
    }

    public final void n(Runnable runnable) {
        ((lf2) this.h.e.b).execute(runnable);
    }

    public final void o(gd gdVar) {
        eb8 eb8Var = (eb8) gdVar.d;
        if (((List) eb8Var.b) == null) {
            if (eb8Var.a.isEmpty()) {
                return;
            }
            for (Object obj : ((eb8) gdVar.d).a.entrySet().toArray()) {
                Map.Entry entry = (Map.Entry) obj;
                o(new gd(7, (m61) entry.getKey(), gdVar, (eb8) entry.getValue()));
            }
            return;
        }
        ArrayList<vj6> arrayListF = f(gdVar);
        zm5.s(arrayListF.size() > 0);
        Boolean bool = Boolean.TRUE;
        Iterator it = arrayListF.iterator();
        while (it.hasNext()) {
            if (((vj6) it.next()).d != 2) {
                bool = Boolean.FALSE;
                break;
            }
        }
        if (bool.booleanValue()) {
            gy5 gy5VarG = gdVar.g();
            ArrayList arrayList = new ArrayList();
            Iterator it2 = arrayListF.iterator();
            while (it2.hasNext()) {
                arrayList.add(Long.valueOf(((vj6) it2.next()).n));
            }
            qn5 qn5VarI = this.n.i(gy5VarG, arrayList);
            if (qn5VarI == null) {
                qn5VarI = qv2.e;
            }
            String strR0 = qn5VarI.r0();
            for (vj6 vj6Var : arrayListF) {
                zm5.s(vj6Var.d == 2);
                vj6Var.d = 3;
                vj6Var.f++;
                qn5VarI = qn5VarI.h0(gy5.o(gy5VarG, vj6Var.a), vj6Var.q);
            }
            Object objG0 = qn5VarI.g0(true);
            wz5 wz5Var = this.c;
            ArrayList arrayListC = gy5VarG.c();
            x91 x91Var = new x91();
            x91Var.d = this;
            x91Var.a = gy5VarG;
            x91Var.b = arrayListF;
            x91Var.c = this;
            wz5Var.e(JWKParameterNames.RSA_FIRST_PRIME_FACTOR, arrayListC, objG0, strR0, x91Var);
        }
    }

    public final void p(m61 m61Var, Object obj) {
        if (m61Var.equals(vs1.b)) {
            this.b.a = ((Long) obj).longValue();
        }
        gy5 gy5Var = new gy5(vs1.a, m61Var);
        try {
            qn5 qn5VarA = xh8.a(obj, qv2.e);
            nh nhVar = this.d;
            nhVar.b = ((qn5) nhVar.b).h0(gy5Var, qn5VarA);
            j(this.m.g(gy5Var, qn5VarA));
        } catch (xc2 e) {
            this.i.d("Failed to parse info update", e);
        }
    }

    public final String toString() {
        return this.a.toString();
    }
}
