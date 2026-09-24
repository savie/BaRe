package defpackage;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class lu7 {
    public final HashMap a = new HashMap();
    public final eo5 b;

    public lu7(eo5 eo5Var) {
        this.b = eo5Var;
    }

    public final ArrayList a(gu2 gu2Var, yf1 yf1Var, qn5 qn5Var) {
        oc6 oc6Var = ((eu5) gu2Var.b).b;
        HashMap map = this.a;
        if (oc6Var != null) {
            ik8 ik8Var = (ik8) map.get(oc6Var);
            zm5.s(ik8Var != null);
            return b(ik8Var, gu2Var, yf1Var, qn5Var);
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = map.entrySet().iterator();
        while (it.hasNext()) {
            arrayList.addAll(b((ik8) ((Map.Entry) it.next()).getValue(), gu2Var, yf1Var, qn5Var));
        }
        return arrayList;
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0222  */
    public final ArrayList b(ik8 ik8Var, gu2 gu2Var, yf1 yf1Var, qn5 qn5Var) {
        ib ibVar;
        ib ibVarF;
        ib ibVar2;
        boolean z;
        qn5 qn5VarM;
        sb4 sb4VarL;
        qn5 qn5VarJ;
        ib ibVar3;
        String str;
        yf1 yf1Var2 = yf1Var;
        gy5 gy5Var = (gy5) yf1Var2.b;
        vq vqVar = (vq) yf1Var2.c;
        ik8Var.getClass();
        qc6 qc6Var = ik8Var.a;
        int i = gu2Var.a;
        if (i == 2 && ((eu5) gu2Var.b).b != null) {
            zm5.r("We should always have a full cache before handling merges", ik8Var.c.g() != null);
            zm5.r("Missing event cache, even though we have a server cache", ik8Var.c.f() != null);
        }
        ib ibVarE = ik8Var.c;
        km8 km8Var = ik8Var.b;
        km8Var.getClass();
        vn5 vn5Var = (vn5) km8Var.a;
        vk9 vk9Var = new vk9(3);
        int iA = dj7.A(i);
        if (iA == 0) {
            ibVar = ibVarE;
            jv5 jv5Var = (jv5) gu2Var;
            eu5 eu5Var = (eu5) jv5Var.b;
            int i2 = eu5Var.a;
            if (i2 == 1) {
                ibVarF = km8Var.g(ibVar, (gy5) jv5Var.c, jv5Var.d, yf1Var, qn5Var, vk9Var);
            } else {
                zm5.s(i2 == 2);
                ibVarF = km8Var.f(ibVar, (gy5) jv5Var.c, jv5Var.d, yf1Var, qn5Var, eu5Var.c || (((gz0) ibVar.c).c && !((gy5) jv5Var.c).isEmpty()), vk9Var);
            }
        } else if (iA == 1) {
            ibVar2 = ibVarE;
            vk9 vk9Var2 = vk9Var;
            bd5 bd5Var = (bd5) gu2Var;
            eu5 eu5Var2 = (eu5) bd5Var.b;
            int i3 = eu5Var2.a;
            if (i3 == 1) {
                gy5 gy5Var2 = (gy5) bd5Var.c;
                ua4<Map.Entry> ua4Var = bd5Var.d.a;
                zm5.r("Can't have a merge that is an overwrite", ((qn5) ua4Var.a) == null);
                ib ibVarG = ibVar2;
                for (Map.Entry entry : ua4Var) {
                    gy5 gy5VarE = gy5Var2.e((gy5) entry.getKey());
                    if (((gz0) ibVar2.b).a(gy5VarE.k())) {
                        ibVarG = km8Var.g(ibVarG, gy5VarE, (qn5) entry.getValue(), yf1Var2, qn5Var, vk9Var2);
                    }
                    yf1Var2 = yf1Var;
                    vk9Var2 = vk9Var2;
                }
                vk9Var = vk9Var2;
                for (Map.Entry entry2 : ua4Var) {
                    gy5 gy5VarE2 = gy5Var2.e((gy5) entry2.getKey());
                    if (!((gz0) ibVar2.b).a(gy5VarE2.k())) {
                        ibVarG = km8Var.g(ibVarG, gy5VarE2, (qn5) entry2.getValue(), yf1Var, qn5Var, vk9Var);
                    }
                }
                ibVarF = ibVarG;
                ibVar = ibVar2;
                vk9Var = vk9Var;
            } else {
                zm5.s(i3 == 2);
                boolean z2 = eu5Var2.c || ((gz0) ibVar2.c).c;
                gy5 gy5Var3 = (gy5) bd5Var.c;
                np1 np1Var = bd5Var.d;
                ibVar = ibVar2;
                vk9Var = vk9Var2;
                ibVarF = km8Var.e(ibVar, gy5Var3, np1Var, yf1Var, qn5Var, z2, vk9Var);
            }
        } else if (iA == 2) {
            s7 s7Var = (s7) gu2Var;
            boolean z3 = s7Var.d;
            gy5 gy5Var4 = (gy5) s7Var.c;
            if (z3) {
                vk9 vk9Var3 = vk9Var;
                if (yf1Var2.r(gy5Var4) != null) {
                    ibVarF = ibVarE;
                    vk9Var3 = vk9Var3;
                } else {
                    bp0 bp0Var = new bp0(yf1Var2, ibVarE, qn5Var);
                    gz0 gz0Var = (gz0) ibVarE.b;
                    gz0 gz0Var2 = (gz0) ibVarE.c;
                    boolean z4 = gz0Var2.b;
                    sb4 sb4Var = gz0Var.a;
                    if (gy5Var4.isEmpty() || gy5Var4.k().equals(m61.d)) {
                        z4 = z4;
                        vk9Var3 = vk9Var3;
                        if (z4) {
                            z = false;
                            qn5VarM = vqVar.j(gy5Var, ibVarE.g(), Collections.EMPTY_LIST, false);
                        } else {
                            z = false;
                            qn5VarM = yf1Var2.m(gz0Var2.a.a);
                        }
                        sb4VarL = vn5Var.l(sb4Var, new sb4(qn5VarM, vn5Var.getIndex()), vk9Var3);
                    } else {
                        m61 m61VarK = gy5Var4.k();
                        qn5 qn5VarL = yf1Var2.l(m61VarK, gz0Var2);
                        if (qn5VarL == null && gz0Var2.a(m61VarK)) {
                            qn5VarL = sb4Var.a.m(m61VarK);
                        }
                        qn5 qn5Var2 = qn5VarL;
                        if (qn5Var2 != null) {
                            sb4VarL = vn5Var.i(sb4Var, m61VarK, qn5Var2, gy5Var4.p(), bp0Var, vk9Var3);
                        } else {
                            if (qn5Var2 == null && ((gz0) ibVarE.b).a.a.c0(m61VarK)) {
                                sb4VarL = vn5Var.i(sb4Var, m61VarK, qv2.e, gy5Var4.p(), bp0Var, vk9Var3);
                            } else {
                                sb4VarL = sb4Var;
                            }
                            if (sb4VarL.a.isEmpty() && z4) {
                                qn5VarJ = vqVar.j(gy5Var, ibVarE.g(), Collections.EMPTY_LIST, false);
                                if (qn5VarJ.Z()) {
                                    sb4VarL = vn5Var.l(sb4VarL, new sb4(qn5VarJ, vn5Var.getIndex()), vk9Var3);
                                }
                            }
                            z = false;
                        }
                        if (sb4VarL.a.isEmpty()) {
                            qn5VarJ = vqVar.j(gy5Var, ibVarE.g(), Collections.EMPTY_LIST, false);
                            if (qn5VarJ.Z()) {
                                sb4VarL = vn5Var.l(sb4VarL, new sb4(qn5VarJ, vn5Var.getIndex()), vk9Var3);
                            }
                        }
                        z = false;
                    }
                    ibVarF = ibVarE.o(sb4VarL, (z4 || yf1Var2.r(gy5.d) != null) ? true : z, vn5Var.g());
                }
                ibVar = ibVarE;
                vk9Var = vk9Var3;
            } else {
                ua4 ua4Var2 = s7Var.e;
                if (yf1Var2.r(gy5Var4) != null) {
                    ibVar2 = ibVarE;
                } else {
                    gz0 gz0Var3 = (gz0) ibVarE.c;
                    boolean z5 = gz0Var3.c;
                    sb4 sb4Var2 = gz0Var3.a;
                    if (ua4Var2.a == null) {
                        np1 np1VarC = np1.b;
                        Iterator it = ua4Var2.iterator();
                        while (it.hasNext()) {
                            gy5 gy5Var5 = (gy5) ((Map.Entry) it.next()).getKey();
                            gy5 gy5VarE3 = gy5Var4.e(gy5Var5);
                            if (gz0Var3.b(gy5VarE3)) {
                                np1VarC = np1VarC.c(gy5Var5, sb4Var2.a.U(gy5VarE3));
                            }
                        }
                        ibVar3 = ibVarE;
                        ibVarE = km8Var.e(ibVar3, gy5Var4, np1VarC, yf1Var, qn5Var, z5, vk9Var);
                    } else if ((gy5Var4.isEmpty() && gz0Var3.b) || gz0Var3.b(gy5Var4)) {
                        ibVar3 = ibVarE;
                        ibVarE = km8Var.f(ibVar3, gy5Var4, sb4Var2.a.U(gy5Var4), yf1Var2, qn5Var, z5, vk9Var);
                    } else {
                        ibVar3 = ibVarE;
                        if (gy5Var4.isEmpty()) {
                            np1 np1VarC2 = np1.b;
                            for (hk5 hk5Var : sb4Var2.a) {
                                m61 m61Var = hk5Var.a;
                                qn5 qn5Var3 = hk5Var.b;
                                np1VarC2.getClass();
                                np1VarC2 = np1VarC2.c(new gy5(m61Var), qn5Var3);
                            }
                            ibVarE = km8Var.e(ibVar3, gy5Var4, np1VarC2, yf1Var, qn5Var, z5, vk9Var);
                        } else {
                            ibVarE = ibVar3;
                            ibVar2 = ibVarE;
                        }
                    }
                    ibVar2 = ibVar3;
                }
                ibVarF = ibVarE;
                ibVar = ibVar2;
                vk9Var = vk9Var;
            }
        } else {
            if (iA != 3) {
                if (i == 1) {
                    str = "Overwrite";
                } else if (i == 2) {
                    str = "Merge";
                } else if (i != 3) {
                    str = i != 4 ? "null" : "ListenComplete";
                } else {
                    str = "AckUserWrite";
                }
                e6.e("Unknown operation: ".concat(str));
                return null;
            }
            gy5 gy5Var6 = (gy5) gu2Var.c;
            gz0 gz0Var4 = (gz0) ibVarE.c;
            sb4 sb4Var3 = gz0Var4.a;
            boolean z6 = gz0Var4.b || gy5Var6.isEmpty();
            ibVarF = km8Var.l(new ib(14, (gz0) ibVarE.b, new gz0(sb4Var3, z6, gz0Var4.c)), gy5Var6, yf1Var, km8.b, vk9Var);
            ibVar = ibVarE;
        }
        ArrayList<k31> arrayList = new ArrayList(new ArrayList(((HashMap) vk9Var.b).values()));
        gz0 gz0Var5 = (gz0) ibVarF.b;
        boolean z7 = gz0Var5.b;
        sb4 sb4Var4 = gz0Var5.a;
        if (z7) {
            qn5 qn5Var4 = sb4Var4.a;
            boolean z8 = qn5Var4.Z() || qn5Var4.isEmpty();
            if (!arrayList.isEmpty() || !((gz0) ibVar.b).b || ((z8 && !qn5Var4.equals(ibVar.f())) || !qn5Var4.n().equals(ibVar.f().n()))) {
                arrayList.add(new k31(5, sb4Var4, null, null, null));
            }
        }
        zm5.r("Once a server snap is complete, it should never go back", ((gz0) ibVarF.c).b || !((gz0) ibVar.c).b);
        ik8Var.c = ibVarF;
        ArrayList arrayListA = ik8Var.a(arrayList, ((gz0) ibVarF.b).a, null);
        if (!qc6Var.b.d()) {
            HashSet hashSet = new HashSet();
            HashSet hashSet2 = new HashSet();
            for (k31 k31Var : arrayList) {
                int i4 = k31Var.a;
                m61 m61Var2 = k31Var.d;
                if (i4 == 2) {
                    hashSet2.add(m61Var2);
                } else if (i4 == 1) {
                    hashSet.add(m61Var2);
                }
            }
            if (!hashSet2.isEmpty() || !hashSet.isEmpty()) {
                this.b.c();
            }
        }
        return arrayListA;
    }

    public final qn5 c(gy5 gy5Var) {
        qn5 qn5VarU;
        Iterator it = this.a.values().iterator();
        do {
            qn5VarU = null;
            if (!it.hasNext()) {
                break;
            }
            ik8 ik8Var = (ik8) it.next();
            qn5 qn5VarG = ik8Var.c.g();
            if (qn5VarG != null && (ik8Var.a.b.d() || (!gy5Var.isEmpty() && !qn5VarG.m(gy5Var.k()).isEmpty()))) {
                qn5VarU = qn5VarG.U(gy5Var);
            }
        } while (qn5VarU == null);
        return qn5VarU;
    }

    public final ik8 d() {
        Iterator it = this.a.entrySet().iterator();
        while (it.hasNext()) {
            ik8 ik8Var = (ik8) ((Map.Entry) it.next()).getValue();
            if (ik8Var.a.b.d()) {
                return ik8Var;
            }
        }
        return null;
    }

    public final ArrayList e() {
        ArrayList arrayList = new ArrayList();
        Iterator it = this.a.entrySet().iterator();
        while (it.hasNext()) {
            ik8 ik8Var = (ik8) ((Map.Entry) it.next()).getValue();
            if (!ik8Var.a.b.d()) {
                arrayList.add(ik8Var);
            }
        }
        return arrayList;
    }

    public final ik8 f(qc6 qc6Var, yf1 yf1Var, gz0 gz0Var) {
        boolean z;
        ik8 ik8Var = (ik8) this.a.get(qc6Var.b);
        if (ik8Var != null) {
            return ik8Var;
        }
        boolean z2 = gz0Var.b;
        sb4 sb4Var = gz0Var.a;
        qn5 qn5VarJ = ((vq) yf1Var.c).j((gy5) yf1Var.b, z2 ? sb4Var.a : null, Collections.EMPTY_LIST, false);
        if (qn5VarJ != null) {
            z = true;
        } else {
            qn5 qn5Var = sb4Var.a;
            if (qn5Var == null) {
                qn5Var = qv2.e;
            }
            qn5VarJ = yf1Var.m(qn5Var);
            z = false;
        }
        return new ik8(qc6Var, new ib(14, new gz0(new sb4(qn5VarJ, qc6Var.b.e), z, false), gz0Var));
    }

    public final boolean g() {
        return d() != null;
    }

    public final ik8 h(qc6 qc6Var) {
        return qc6Var.b.d() ? d() : (ik8) this.a.get(qc6Var.b);
    }
}
