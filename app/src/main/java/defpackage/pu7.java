package defpackage;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.Callable;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class pu7 implements Callable {
    public final /* synthetic */ ez2 a;
    public final /* synthetic */ boolean b;
    public final /* synthetic */ bv7 c;

    public pu7(bv7 bv7Var, ez2 ez2Var, boolean z) {
        this.c = bv7Var;
        this.a = ez2Var;
        this.b = z;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        boolean z;
        boolean z2;
        gz0 gz0Var;
        qn5 qn5VarC;
        sb4 sb4Var;
        ez2 ez2Var = this.a;
        qc6 qc6VarE = ez2Var.e();
        gy5 gy5Var = qc6VarE.a;
        oc6 oc6Var = qc6VarE.b;
        bv7 bv7Var = this.c;
        ua4 ua4VarF = bv7Var.a;
        HashMap map = bv7Var.d;
        eo5 eo5Var = bv7Var.g;
        gy5 gy5VarP = gy5Var;
        boolean z3 = false;
        qn5 qn5VarC2 = null;
        while (true) {
            z = true;
            if (ua4VarF.isEmpty()) {
                break;
            }
            lu7 lu7Var = (lu7) ua4VarF.a;
            if (lu7Var != null) {
                if (qn5VarC2 == null) {
                    qn5VarC2 = lu7Var.c(gy5VarP);
                }
                z3 = z3 || lu7Var.g();
            }
            ua4VarF = ua4VarF.f(gy5VarP.isEmpty() ? m61.b("") : gy5VarP.k());
            gy5VarP = gy5VarP.p();
        }
        lu7 lu7Var2 = (lu7) bv7Var.a.e(gy5Var);
        if (lu7Var2 == null) {
            lu7Var2 = new lu7(eo5Var);
            bv7Var.a = bv7Var.a.i(gy5Var, lu7Var2);
        } else {
            z3 = z3 || lu7Var2.g();
            if (qn5VarC2 == null) {
                qn5VarC2 = lu7Var2.c(gy5.d);
            }
        }
        eo5Var.c();
        if (qn5VarC2 != null) {
            gz0Var = new gz0(new sb4(qn5VarC2, oc6Var.e), true, false);
            z2 = true;
        } else {
            gz0 gz0VarB = eo5Var.b(qc6VarE);
            qv2 qv2VarO = qv2.e;
            for (Map.Entry entry : bv7Var.a.l(gy5Var).b) {
                boolean z4 = z;
                lu7 lu7Var3 = (lu7) ((ua4) entry.getValue()).a;
                if (lu7Var3 != null && (qn5VarC = lu7Var3.c(gy5.d)) != null) {
                    qv2VarO = qv2VarO.O((m61) entry.getKey(), qn5VarC);
                }
                z = z4;
            }
            z2 = z;
            for (hk5 hk5Var : gz0VarB.a.a) {
                if (!qv2VarO.c0(hk5Var.a)) {
                    qv2VarO = qv2VarO.O(hk5Var.a, hk5Var.b);
                }
            }
            gz0Var = new gz0(new sb4(qv2VarO, oc6Var.e), false, false);
        }
        boolean z5 = lu7Var2.h(qc6VarE) != null ? z2 : false;
        if (!z5 && !oc6Var.d()) {
            zm5.r("View does not exist but we have a tag", !map.containsKey(qc6VarE));
            long j = bv7Var.i;
            bv7Var.i = 1 + j;
            hx7 hx7Var = new hx7(j);
            map.put(qc6VarE, hx7Var);
            bv7Var.c.put(hx7Var, qc6VarE);
        }
        vq vqVar = bv7Var.b;
        vqVar.getClass();
        yf1 yf1Var = new yf1(13, gy5Var, vqVar);
        HashMap map2 = lu7Var2.a;
        qc6 qc6VarE2 = ez2Var.e();
        ik8 ik8VarF = lu7Var2.f(qc6VarE2, yf1Var, gz0Var);
        oc6 oc6Var2 = qc6VarE2.b;
        if (!oc6Var2.d()) {
            HashSet hashSet = new HashSet();
            Iterator it = ((gz0) ik8VarF.c.b).a.a.iterator();
            while (it.hasNext()) {
                hashSet.add(((hk5) it.next()).a);
            }
            lu7Var2.b.c();
        }
        if (!map2.containsKey(oc6Var2)) {
            map2.put(oc6Var2, ik8VarF);
        }
        map2.put(oc6Var2, ik8VarF);
        ik8VarF.d.add(ez2Var);
        gz0 gz0Var2 = (gz0) ik8VarF.c.b;
        ArrayList arrayList = new ArrayList();
        sb4 sb4Var2 = gz0Var2.a;
        for (hk5 hk5Var2 : sb4Var2.a) {
            arrayList.add(new k31(2, sb4.d(hk5Var2.b), hk5Var2.a, null, null));
        }
        if (gz0Var2.b) {
            sb4Var = sb4Var2;
            arrayList.add(new k31(5, sb4Var2, null, null, null));
        } else {
            sb4Var = sb4Var2;
        }
        ArrayList arrayListA = ik8VarF.a(arrayList, sb4Var, ez2Var);
        if (!z5 && !z3 && !this.b) {
            ik8 ik8VarH = lu7Var2.h(qc6VarE);
            gy5 gy5Var2 = qc6VarE.a;
            hx7 hx7VarM = bv7Var.m(qc6VarE);
            gd gdVar = new gd(bv7Var, ik8VarH);
            bv7Var.f.f(bv7.k(qc6VarE), hx7VarM, gdVar, gdVar);
            ua4 ua4VarL = bv7Var.a.l(gy5Var2);
            if (hx7VarM != null) {
                zm5.r("If we're adding a query, it shouldn't be shadowed", !((lu7) ua4VarL.a).g());
                return arrayListA;
            }
            rb rbVar = new rb(bv7Var, 23);
            ua4VarL.getClass();
            ua4VarL.d(gy5.d, rbVar, null);
        }
        return arrayListA;
    }
}
