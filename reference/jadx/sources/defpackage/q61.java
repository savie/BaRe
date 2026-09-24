package defpackage;

import com.microsoft.identity.common.java.authscheme.TokenAuthenticationScheme;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class q61 implements qn5 {
    public static final xg d = new xg(4);
    public final oa4 a;
    public final qn5 b;
    public String c;

    public q61(oa4 oa4Var, qn5 qn5Var) {
        this.c = null;
        if (oa4Var.isEmpty() && !qn5Var.isEmpty()) {
            c6.f("Can't create empty ChildrenNode with priority!");
            throw null;
        }
        this.b = qn5Var;
        this.a = oa4Var;
    }

    @Override // defpackage.qn5
    public m61 D(m61 m61Var) {
        return (m61) this.a.i(m61Var);
    }

    @Override // defpackage.qn5
    public qn5 O(m61 m61Var, qn5 qn5Var) {
        if (m61Var.equals(m61.d)) {
            return q(qn5Var);
        }
        oa4 oa4VarL = this.a;
        if (oa4VarL.c(m61Var)) {
            oa4VarL = oa4VarL.o(m61Var);
        }
        if (!qn5Var.isEmpty()) {
            oa4VarL = oa4VarL.l(qn5Var, m61Var);
        }
        return oa4VarL.isEmpty() ? qv2.e : new q61(oa4VarL, this.b);
    }

    @Override // defpackage.qn5
    public qn5 U(gy5 gy5Var) {
        m61 m61VarK = gy5Var.k();
        return m61VarK == null ? this : m(m61VarK).U(gy5Var.p());
    }

    @Override // defpackage.qn5
    public boolean Z() {
        return false;
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public int compareTo(qn5 qn5Var) {
        if (isEmpty()) {
            return qn5Var.isEmpty() ? 0 : -1;
        }
        if (qn5Var.Z() || qn5Var.isEmpty()) {
            return 1;
        }
        return qn5Var == qn5.s ? -1 : 0;
    }

    @Override // defpackage.qn5
    public boolean c0(m61 m61Var) {
        return !m(m61Var).isEmpty();
    }

    public final void d(p61 p61Var, boolean z) {
        oa4 oa4Var = this.a;
        if (!z || n().isEmpty()) {
            oa4Var.k(p61Var);
        } else {
            oa4Var.k(new o61(this, p61Var));
        }
    }

    public final void e(int i, StringBuilder sb) {
        int i2;
        oa4 oa4Var = this.a;
        boolean zIsEmpty = oa4Var.isEmpty();
        qn5 qn5Var = this.b;
        if (zIsEmpty && qn5Var.isEmpty()) {
            sb.append("{ }");
            return;
        }
        sb.append("{\n");
        Iterator it = oa4Var.iterator();
        while (true) {
            i2 = 0;
            if (!it.hasNext()) {
                break;
            }
            Map.Entry entry = (Map.Entry) it.next();
            int i3 = i + 2;
            while (i2 < i3) {
                sb.append(TokenAuthenticationScheme.SCHEME_DELIMITER);
                i2++;
            }
            sb.append(((m61) entry.getKey()).a);
            sb.append("=");
            if (entry.getValue() instanceof q61) {
                ((q61) entry.getValue()).e(i3, sb);
            } else {
                sb.append(((qn5) entry.getValue()).toString());
            }
            sb.append("\n");
        }
        if (!qn5Var.isEmpty()) {
            int i4 = i + 2;
            for (int i5 = 0; i5 < i4; i5++) {
                sb.append(TokenAuthenticationScheme.SCHEME_DELIMITER);
            }
            sb.append(".priority=");
            sb.append(qn5Var.toString());
            sb.append("\n");
        }
        while (i2 < i) {
            sb.append(TokenAuthenticationScheme.SCHEME_DELIMITER);
            i2++;
        }
        sb.append("}");
    }

    public boolean equals(Object obj) {
        if (obj != null) {
            if (obj == this) {
                return true;
            }
            if (obj instanceof q61) {
                q61 q61Var = (q61) obj;
                oa4 oa4Var = q61Var.a;
                if (n().equals(q61Var.n())) {
                    oa4 oa4Var2 = this.a;
                    if (oa4Var2.size() == oa4Var.size()) {
                        Iterator it = oa4Var2.iterator();
                        Iterator it2 = oa4Var.iterator();
                        while (it.hasNext() && it2.hasNext()) {
                            Map.Entry entry = (Map.Entry) it.next();
                            Map.Entry entry2 = (Map.Entry) it2.next();
                            if (!((m61) entry.getKey()).equals(entry2.getKey()) || !((qn5) entry.getValue()).equals(entry2.getValue())) {
                            }
                        }
                        if (!it.hasNext() && !it2.hasNext()) {
                            return true;
                        }
                        l0.e("Something went wrong internally.");
                        return false;
                    }
                }
            }
        }
        return false;
    }

    @Override // defpackage.qn5
    public Object g0(boolean z) {
        Integer numH;
        if (isEmpty()) {
            return null;
        }
        HashMap map = new HashMap();
        boolean z2 = true;
        int i = 0;
        int iIntValue = 0;
        for (Map.Entry entry : this.a) {
            String str = ((m61) entry.getKey()).a;
            map.put(str, ((qn5) entry.getValue()).g0(z));
            i++;
            if (z2) {
                if ((str.length() > 1 && str.charAt(0) == '0') || (numH = zm5.H(str)) == null || numH.intValue() < 0) {
                    z2 = false;
                } else if (numH.intValue() > iIntValue) {
                    iIntValue = numH.intValue();
                }
            }
        }
        if (z || !z2 || iIntValue >= i * 2) {
            if (z) {
                qn5 qn5Var = this.b;
                if (!qn5Var.isEmpty()) {
                    map.put(".priority", qn5Var.getValue());
                }
            }
            return map;
        }
        ArrayList arrayList = new ArrayList(iIntValue + 1);
        for (int i2 = 0; i2 <= iIntValue; i2++) {
            arrayList.add(map.get("" + i2));
        }
        return arrayList;
    }

    @Override // defpackage.qn5
    public Object getValue() {
        return g0(false);
    }

    @Override // defpackage.qn5
    public qn5 h0(gy5 gy5Var, qn5 qn5Var) {
        m61 m61VarK = gy5Var.k();
        if (m61VarK == null) {
            return qn5Var;
        }
        if (!m61VarK.equals(m61.d)) {
            return O(m61VarK, m(m61VarK).h0(gy5Var.p(), qn5Var));
        }
        zm5.s(xh8.v(qn5Var));
        return q(qn5Var);
    }

    public int hashCode() {
        Iterator it = iterator();
        int iG = 0;
        while (it.hasNext()) {
            hk5 hk5Var = (hk5) it.next();
            iG = fz5.g(iG * 31, 17, hk5Var.a.a) + hk5Var.b.hashCode();
        }
        return iG;
    }

    @Override // defpackage.qn5
    public boolean isEmpty() {
        return this.a.isEmpty();
    }

    @Override // java.lang.Iterable
    public Iterator iterator() {
        return new n0(this.a.iterator(), 1);
    }

    @Override // defpackage.qn5
    public Iterator k0() {
        return new n0(this.a.k0(), 1);
    }

    @Override // defpackage.qn5
    public qn5 m(m61 m61Var) {
        if (m61Var.equals(m61.d)) {
            qn5 qn5Var = this.b;
            if (!qn5Var.isEmpty()) {
                return qn5Var;
            }
        }
        oa4 oa4Var = this.a;
        return oa4Var.c(m61Var) ? (qn5) oa4Var.d(m61Var) : qv2.e;
    }

    @Override // defpackage.qn5
    public qn5 n() {
        return this.b;
    }

    @Override // defpackage.qn5
    public qn5 q(qn5 qn5Var) {
        oa4 oa4Var = this.a;
        return oa4Var.isEmpty() ? qv2.e : new q61(oa4Var, qn5Var);
    }

    @Override // defpackage.qn5
    public String r0() {
        if (this.c == null) {
            String strV = v(1);
            this.c = strV.isEmpty() ? "" : zm5.z(strV);
        }
        return this.c;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        e(0, sb);
        return sb.toString();
    }

    @Override // defpackage.qn5
    public String v(int i) {
        boolean z;
        if (i != 1) {
            c6.f("Hashes on children nodes only supported for V1");
            return null;
        }
        StringBuilder sb = new StringBuilder();
        qn5 qn5Var = this.b;
        if (!qn5Var.isEmpty()) {
            sb.append("priority:");
            sb.append(qn5Var.v(1));
            sb.append(":");
        }
        ArrayList<hk5> arrayList = new ArrayList();
        Iterator it = iterator();
        loop0: while (true) {
            while (true) {
                if (!it.hasNext()) {
                    break loop0;
                }
                hk5 hk5Var = (hk5) it.next();
                arrayList.add(hk5Var);
                z = z || !hk5Var.b.n().isEmpty();
            }
        }
        if (z) {
            Collections.sort(arrayList, g66.a);
        }
        for (hk5 hk5Var2 : arrayList) {
            String strR0 = hk5Var2.b.r0();
            if (!strR0.equals("")) {
                sb.append(":");
                sb.append(hk5Var2.a.a);
                sb.append(":");
                sb.append(strR0);
            }
        }
        return sb.toString();
    }

    @Override // defpackage.qn5
    public int z() {
        return this.a.size();
    }

    public q61() {
        this.c = null;
        this.a = new r50(d);
        this.b = qv2.e;
    }
}
