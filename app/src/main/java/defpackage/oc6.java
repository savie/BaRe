package defpackage;

import java.util.HashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class oc6 {
    public static final oc6 f = new oc6();
    public final qn5 a = null;
    public final m61 b = null;
    public final qn5 c = null;
    public final m61 d = null;
    public final nb4 e = g66.a;

    public final HashMap a() {
        HashMap map = new HashMap();
        if (b()) {
            map.put("sp", this.a.getValue());
            m61 m61Var = this.b;
            if (m61Var != null) {
                map.put("sn", m61Var.a);
            }
        }
        qn5 qn5Var = this.c;
        if (qn5Var != null) {
            map.put("ep", qn5Var.getValue());
            m61 m61Var2 = this.d;
            if (m61Var2 != null) {
                map.put("en", m61Var2.a);
            }
        }
        g66 g66Var = g66.a;
        nb4 nb4Var = this.e;
        if (!nb4Var.equals(g66Var)) {
            map.put("i", nb4Var.a());
        }
        return map;
    }

    public final boolean b() {
        return this.a != null;
    }

    public final boolean c() {
        return b();
    }

    public final boolean d() {
        return !b() && this.c == null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || oc6.class != obj.getClass()) {
            return false;
        }
        oc6 oc6Var = (oc6) obj;
        if (!this.e.equals(oc6Var.e)) {
            return false;
        }
        m61 m61Var = oc6Var.d;
        m61 m61Var2 = this.d;
        if (m61Var2 != null) {
            if (!m61Var2.equals(m61Var)) {
                return false;
            }
        } else if (m61Var != null) {
            return false;
        }
        qn5 qn5Var = oc6Var.c;
        qn5 qn5Var2 = this.c;
        if (qn5Var2 != null) {
            if (!qn5Var2.equals(qn5Var)) {
                return false;
            }
        } else if (qn5Var != null) {
            return false;
        }
        m61 m61Var3 = oc6Var.b;
        m61 m61Var4 = this.b;
        if (m61Var4 != null) {
            if (!m61Var4.equals(m61Var3)) {
                return false;
            }
        } else if (m61Var3 != null) {
            return false;
        }
        qn5 qn5Var3 = oc6Var.a;
        qn5 qn5Var4 = this.a;
        if (qn5Var4 != null) {
            if (!qn5Var4.equals(qn5Var3)) {
                return false;
            }
        } else if (qn5Var3 != null) {
            return false;
        }
        return c() == oc6Var.c();
    }

    public final int hashCode() {
        int i = ((0 * 31) + (c() ? 1231 : 1237)) * 31;
        qn5 qn5Var = this.a;
        int iHashCode = (i + (qn5Var != null ? qn5Var.hashCode() : 0)) * 31;
        m61 m61Var = this.b;
        int iHashCode2 = (iHashCode + (m61Var != null ? m61Var.a.hashCode() : 0)) * 31;
        qn5 qn5Var2 = this.c;
        int iHashCode3 = (iHashCode2 + (qn5Var2 != null ? qn5Var2.hashCode() : 0)) * 31;
        m61 m61Var2 = this.d;
        return this.e.hashCode() + ((iHashCode3 + (m61Var2 != null ? m61Var2.a.hashCode() : 0)) * 31);
    }

    public final String toString() {
        return a().toString();
    }
}
