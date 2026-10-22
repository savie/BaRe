package defpackage;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class bv7 {
    public final vq b;
    public final HashMap c;
    public final HashMap d;
    public final HashSet e;
    public final av7 f;
    public final eo5 g;
    public final u00 h;
    public long i = 1;
    public ua4 a = ua4.d;

    public bv7(uc2 uc2Var, eo5 eo5Var, av7 av7Var) {
        vq vqVar = new vq(1);
        vqVar.b = np1.b;
        vqVar.c = new ArrayList();
        vqVar.d = -1L;
        this.b = vqVar;
        this.c = new HashMap();
        this.d = new HashMap();
        this.e = new HashSet();
        this.f = av7Var;
        this.g = eo5Var;
        this.h = uc2Var.a("SyncTree");
    }

    public static ArrayList a(bv7 bv7Var, gu2 gu2Var) {
        ua4 ua4Var = bv7Var.a;
        vq vqVar = bv7Var.b;
        gy5 gy5Var = gy5.d;
        vqVar.getClass();
        return bv7Var.f(gu2Var, ua4Var, null, new yf1(13, gy5Var, vqVar));
    }

    public static ArrayList b(bv7 bv7Var, qc6 qc6Var, gu2 gu2Var) {
        bv7Var.getClass();
        gy5 gy5Var = qc6Var.a;
        lu7 lu7Var = (lu7) bv7Var.a.e(gy5Var);
        zm5.r("Missing sync point for query tag that we're tracking", lu7Var != null);
        vq vqVar = bv7Var.b;
        vqVar.getClass();
        return lu7Var.a(gu2Var, new yf1(13, gy5Var, vqVar), null);
    }

    public static void j(ua4 ua4Var, ArrayList arrayList) {
        lu7 lu7Var = (lu7) ua4Var.a;
        if (lu7Var != null && lu7Var.g()) {
            arrayList.add(lu7Var.d());
            return;
        }
        if (lu7Var != null) {
            arrayList.addAll(lu7Var.e());
        }
        Iterator it = ua4Var.b.iterator();
        while (it.hasNext()) {
            j((ua4) ((Map.Entry) it.next()).getValue(), arrayList);
        }
    }

    public static qc6 k(qc6 qc6Var) {
        return (!qc6Var.b.d() || qc6Var.b()) ? qc6Var : qc6.a(qc6Var.a);
    }

    public final List c(long j, boolean z, boolean z2, aa1 aa1Var) {
        return (List) this.g.a(new uu7(this, z2, j, z, aa1Var));
    }

    public final List d(ez2 ez2Var, boolean z) {
        return (List) this.g.a(new pu7(this, ez2Var, z));
    }

    public final ArrayList e(gu2 gu2Var, ua4 ua4Var, qn5 qn5Var, yf1 yf1Var) {
        lu7 lu7Var = (lu7) ua4Var.a;
        if (qn5Var == null && lu7Var != null) {
            qn5Var = lu7Var.c(gy5.d);
        }
        qn5 qn5Var2 = qn5Var;
        ArrayList arrayList = new ArrayList();
        ua4Var.b.k(new ru7(this, qn5Var2, yf1Var, gu2Var, arrayList));
        if (lu7Var != null) {
            arrayList.addAll(lu7Var.a(gu2Var, yf1Var, qn5Var2));
        }
        return arrayList;
    }

    public final ArrayList f(gu2 gu2Var, ua4 ua4Var, qn5 qn5Var, yf1 yf1Var) {
        gy5 gy5Var = (gy5) gu2Var.c;
        if (gy5Var.isEmpty()) {
            return e(gu2Var, ua4Var, qn5Var, yf1Var);
        }
        lu7 lu7Var = (lu7) ua4Var.a;
        if (qn5Var == null && lu7Var != null) {
            qn5Var = lu7Var.c(gy5.d);
        }
        ArrayList arrayList = new ArrayList();
        m61 m61VarK = gy5Var.k();
        gu2 gu2VarX = gu2Var.x(m61VarK);
        ua4 ua4Var2 = (ua4) ua4Var.b.d(m61VarK);
        if (ua4Var2 != null && gu2VarX != null) {
            arrayList.addAll(f(gu2VarX, ua4Var2, qn5Var != null ? qn5Var.m(m61VarK) : null, new yf1(13, ((gy5) yf1Var.b).d(m61VarK), (vq) yf1Var.c)));
        }
        if (lu7Var != null) {
            arrayList.addAll(lu7Var.a(gu2Var, yf1Var, qn5Var));
        }
        return arrayList;
    }

    public final List g(gy5 gy5Var, qn5 qn5Var) {
        return (List) this.g.a(new vu7(this, gy5Var, qn5Var));
    }

    public final List h(gy5 gy5Var, qn5 qn5Var, qn5 qn5Var2, long j, boolean z, boolean z2) {
        zm5.r("We shouldn't be persisting non-visible writes.", z || !z2);
        return (List) this.g.a(new su7(this, z2, gy5Var, qn5Var, j, qn5Var2, z));
    }

    public final qn5 i(gy5 gy5Var, ArrayList arrayList) {
        ua4 ua4VarF = this.a;
        gy5 gy5VarD = gy5.d;
        qn5 qn5VarC = null;
        gy5 gy5VarP = gy5Var;
        do {
            m61 m61VarK = gy5VarP.k();
            gy5VarP = gy5VarP.p();
            gy5VarD = gy5VarD.d(m61VarK);
            gy5 gy5VarO = gy5.o(gy5VarD, gy5Var);
            ua4VarF = m61VarK != null ? ua4VarF.f(m61VarK) : ua4.d;
            lu7 lu7Var = (lu7) ua4VarF.a;
            if (lu7Var != null) {
                qn5VarC = lu7Var.c(gy5VarO);
            }
            if (gy5VarP.isEmpty()) {
                break;
            }
        } while (qn5VarC == null);
        return this.b.j(gy5Var, qn5VarC, arrayList, true);
    }

    public final List l(qc6 qc6Var, ez2 ez2Var, wc2 wc2Var, boolean z) {
        return (List) this.g.a(new qu7(this, qc6Var, ez2Var, wc2Var, z));
    }

    public final hx7 m(qc6 qc6Var) {
        return (hx7) this.d.get(qc6Var);
    }
}
