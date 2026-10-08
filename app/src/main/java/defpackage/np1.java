package defpackage;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class np1 implements Iterable {
    public static final np1 b = new np1(new ua4(null));
    public final ua4 a;

    public np1(ua4 ua4Var) {
        this.a = ua4Var;
    }

    public static qn5 f(gy5 gy5Var, ua4 ua4Var, qn5 qn5Var) {
        m61 m61Var;
        Object obj = ua4Var.a;
        if (obj != null) {
            return qn5Var.h0(gy5Var, (qn5) obj);
        }
        Iterator it = ua4Var.b.iterator();
        qn5 qn5Var2 = null;
        while (true) {
            boolean zHasNext = it.hasNext();
            m61Var = m61.d;
            if (!zHasNext) {
                break;
            }
            Map.Entry entry = (Map.Entry) it.next();
            ua4 ua4Var2 = (ua4) entry.getValue();
            m61 m61Var2 = (m61) entry.getKey();
            if (m61Var2.equals(m61Var)) {
                zm5.r("Priority writes must always be leaf nodes", ua4Var2.a != null);
                qn5Var2 = (qn5) ua4Var2.a;
            } else {
                qn5Var = f(gy5Var.d(m61Var2), ua4Var2, qn5Var);
            }
        }
        return (qn5Var.U(gy5Var).isEmpty() || qn5Var2 == null) ? qn5Var : qn5Var.h0(gy5Var.d(m61Var), qn5Var2);
    }

    public static np1 i(HashMap map) {
        ua4 ua4VarK = ua4.d;
        for (Map.Entry entry : map.entrySet()) {
            ua4VarK = ua4VarK.k((gy5) entry.getKey(), new ua4((qn5) entry.getValue()));
        }
        return new np1(ua4VarK);
    }

    public final np1 c(gy5 gy5Var, qn5 qn5Var) {
        if (gy5Var.isEmpty()) {
            return new np1(new ua4(qn5Var));
        }
        hx0 hx0Var = q36.u;
        ua4 ua4Var = this.a;
        gy5 gy5VarC = ua4Var.c(gy5Var, hx0Var);
        if (gy5VarC == null) {
            return new np1(ua4Var.k(gy5Var, new ua4(qn5Var)));
        }
        gy5 gy5VarO = gy5.o(gy5VarC, gy5Var);
        qn5 qn5Var2 = (qn5) ua4Var.e(gy5VarC);
        m61 m61VarI = gy5VarO.i();
        return (m61VarI != null && m61VarI.equals(m61.d) && qn5Var2.U(gy5VarO.l()).isEmpty()) ? this : new np1(ua4Var.i(gy5VarC, qn5Var2.h0(gy5VarO, qn5Var)));
    }

    public final np1 d(gy5 gy5Var, np1 np1Var) {
        ua4 ua4Var = np1Var.a;
        rb rbVar = new rb(gy5Var, 8);
        ua4Var.getClass();
        return (np1) ua4Var.d(gy5.d, rbVar, this);
    }

    public final qn5 e(qn5 qn5Var) {
        return f(gy5.d, this.a, qn5Var);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || obj.getClass() != np1.class) {
            return false;
        }
        return ((np1) obj).l().equals(l());
    }

    public final np1 g(gy5 gy5Var) {
        if (gy5Var.isEmpty()) {
            return this;
        }
        qn5 qn5VarK = k(gy5Var);
        return qn5VarK != null ? new np1(new ua4(qn5VarK)) : new np1(this.a.l(gy5Var));
    }

    public final int hashCode() {
        return l().hashCode();
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return this.a.iterator();
    }

    public final qn5 k(gy5 gy5Var) {
        hx0 hx0Var = q36.u;
        ua4 ua4Var = this.a;
        gy5 gy5VarC = ua4Var.c(gy5Var, hx0Var);
        if (gy5VarC != null) {
            return ((qn5) ua4Var.e(gy5VarC)).U(gy5.o(gy5VarC, gy5Var));
        }
        return null;
    }

    public final HashMap l() {
        HashMap map = new HashMap();
        mp1 mp1Var = new mp1(map);
        ua4 ua4Var = this.a;
        ua4Var.getClass();
        ua4Var.d(gy5.d, mp1Var, null);
        return map;
    }

    public final String toString() {
        return "CompoundWrite{" + l().toString() + "}";
    }
}
