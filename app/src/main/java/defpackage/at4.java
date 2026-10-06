package defpackage;

import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class at4 implements qn5 {
    public final qn5 a;
    public String b;

    public at4(qn5 qn5Var) {
        this.a = qn5Var;
    }

    @Override // defpackage.qn5
    public final m61 D(m61 m61Var) {
        return null;
    }

    @Override // defpackage.qn5
    public final qn5 O(m61 m61Var, qn5 qn5Var) {
        if (m61Var.equals(m61.d)) {
            return q(qn5Var);
        }
        return qn5Var.isEmpty() ? this : qv2.e.O(m61Var, qn5Var).q(this.a);
    }

    @Override // defpackage.qn5
    public final qn5 U(gy5 gy5Var) {
        if (gy5Var.isEmpty()) {
            return this;
        }
        return gy5Var.k().equals(m61.d) ? this.a : qv2.e;
    }

    @Override // defpackage.qn5
    public final boolean Z() {
        return true;
    }

    public abstract int c(at4 at4Var);

    @Override // defpackage.qn5
    public final boolean c0(m61 m61Var) {
        return false;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        qn5 qn5Var = (qn5) obj;
        if (qn5Var.isEmpty()) {
            return 1;
        }
        if (qn5Var instanceof q61) {
            return -1;
        }
        zm5.r("Node is not leaf node!", qn5Var.Z());
        if ((this instanceof r15) && (qn5Var instanceof co2)) {
            return Double.valueOf(((r15) this).c).compareTo(((co2) qn5Var).c);
        }
        if ((this instanceof co2) && (qn5Var instanceof r15)) {
            return Double.valueOf(((r15) qn5Var).c).compareTo(((co2) this).c) * (-1);
        }
        at4 at4Var = (at4) qn5Var;
        int iD = d();
        int iD2 = at4Var.d();
        if (dj7.a(iD, iD2)) {
            return c(at4Var);
        }
        if (iD == 0 || iD2 == 0) {
            throw null;
        }
        return iD - iD2;
    }

    public abstract int d();

    public final String e(int i) {
        int iA = dj7.A(i);
        if (iA != 0 && iA != 1) {
            c6.f("Unknown hash version: ".concat(eq3.v(i)));
            return null;
        }
        qn5 qn5Var = this.a;
        if (qn5Var.isEmpty()) {
            return "";
        }
        return "priority:" + qn5Var.v(i) + ":";
    }

    @Override // defpackage.qn5
    public final Object g0(boolean z) {
        if (z) {
            qn5 qn5Var = this.a;
            if (!qn5Var.isEmpty()) {
                HashMap map = new HashMap();
                map.put(".value", getValue());
                map.put(".priority", qn5Var.getValue());
                return map;
            }
        }
        return getValue();
    }

    @Override // defpackage.qn5
    public final qn5 h0(gy5 gy5Var, qn5 qn5Var) {
        m61 m61VarK = gy5Var.k();
        if (m61VarK == null) {
            return qn5Var;
        }
        boolean zIsEmpty = qn5Var.isEmpty();
        m61 m61Var = m61.d;
        if (zIsEmpty && !m61VarK.equals(m61Var)) {
            return this;
        }
        boolean zEquals = gy5Var.k().equals(m61Var);
        boolean z = true;
        if (zEquals && gy5Var.size() != 1) {
            z = false;
        }
        zm5.s(z);
        return O(m61VarK, qv2.e.h0(gy5Var.p(), qn5Var));
    }

    @Override // defpackage.qn5
    public final boolean isEmpty() {
        return false;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return Collections.EMPTY_LIST.iterator();
    }

    @Override // defpackage.qn5
    public final Iterator k0() {
        return Collections.EMPTY_LIST.iterator();
    }

    @Override // defpackage.qn5
    public final qn5 m(m61 m61Var) {
        return m61Var.equals(m61.d) ? this.a : qv2.e;
    }

    @Override // defpackage.qn5
    public final qn5 n() {
        return this.a;
    }

    @Override // defpackage.qn5
    public final String r0() {
        if (this.b == null) {
            this.b = zm5.z(v(1));
        }
        return this.b;
    }

    public final String toString() {
        String string = g0(true).toString();
        return string.length() <= 100 ? string : string.substring(0, 100).concat("...");
    }

    @Override // defpackage.qn5
    public final int z() {
        return 0;
    }
}
