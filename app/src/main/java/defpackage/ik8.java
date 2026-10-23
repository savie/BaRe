package defpackage;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ik8 {
    public final qc6 a;
    public final km8 b;
    public ib c;
    public final ArrayList d;
    public final h80 e;

    public ik8(qc6 qc6Var, ib ibVar) {
        this.a = qc6Var;
        oc6 oc6Var = qc6Var.b;
        int i = 11;
        zq8 zq8Var = new zq8(oc6Var.e, i);
        vn5 zq8Var2 = oc6Var.d() ? new zq8(oc6Var.e, i) : new ai5(oc6Var);
        this.b = new km8(zq8Var2);
        gz0 gz0Var = (gz0) ibVar.c;
        gz0 gz0Var2 = (gz0) ibVar.b;
        sb4 sb4Var = new sb4(qv2.e, qc6Var.b.e);
        sb4 sb4Var2 = gz0Var.a;
        zq8Var.l(sb4Var, sb4Var2, null);
        sb4 sb4VarL = zq8Var2.l(sb4Var, gz0Var2.a, null);
        this.c = new ib(14, new gz0(sb4VarL, gz0Var2.b, zq8Var2.g()), new gz0(sb4Var2, gz0Var.b, false));
        this.d = new ArrayList();
        this.e = new h80(qc6Var);
    }

    public final ArrayList a(ArrayList arrayList, sb4 sb4Var, ez2 ez2Var) {
        List listAsList = ez2Var == null ? this.d : Arrays.asList(ez2Var);
        h80 h80Var = this.e;
        h80Var.getClass();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            k31 k31Var = (k31) it.next();
            if (dj7.a(k31Var.a, 4)) {
                nb4 nb4Var = (nb4) h80Var.c;
                qn5 qn5Var = k31Var.c.a;
                qn5 qn5Var2 = k31Var.b.a;
                m61 m61Var = m61.b;
                if (nb4Var.compare(new hk5(m61Var, qn5Var), new hk5(m61Var, qn5Var2)) != 0) {
                    arrayList3.add(new k31(3, k31Var.b, k31Var.d, null, null));
                }
            }
        }
        h80Var.d(arrayList2, 1, arrayList, listAsList, sb4Var);
        h80Var.d(arrayList2, 2, arrayList, listAsList, sb4Var);
        h80Var.d(arrayList2, 3, arrayList3, listAsList, sb4Var);
        h80Var.d(arrayList2, 4, arrayList, listAsList, sb4Var);
        h80Var.d(arrayList2, 5, arrayList, listAsList, sb4Var);
        return arrayList2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r2v1, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.util.ArrayList] */
    public final List b(ez2 ez2Var, wc2 wc2Var) {
        ?? arrayList;
        int i = 0;
        ArrayList arrayList2 = this.d;
        if (wc2Var != null) {
            arrayList = new ArrayList();
            zm5.r("A cancel should cancel all event registrations", ez2Var == null);
            gy5 gy5Var = this.a.a;
            Iterator it = arrayList2.iterator();
            while (it.hasNext()) {
                arrayList.add(new g21((ez2) it.next(), wc2Var, gy5Var));
            }
        } else {
            arrayList = Collections.EMPTY_LIST;
        }
        if (ez2Var == null) {
            Iterator it2 = arrayList2.iterator();
            while (it2.hasNext()) {
                ((ez2) it2.next()).h();
            }
            arrayList2.clear();
            return arrayList;
        }
        int i2 = -1;
        while (true) {
            if (i >= arrayList2.size()) {
                i = i2;
                break;
            }
            ez2 ez2Var2 = (ez2) arrayList2.get(i);
            if (ez2Var2.f(ez2Var)) {
                if (ez2Var2.a.get()) {
                    break;
                }
                i2 = i;
            }
            i++;
        }
        if (i != -1) {
            ez2 ez2Var3 = (ez2) arrayList2.get(i);
            arrayList2.remove(i);
            ez2Var3.h();
        }
        return arrayList;
    }
}
