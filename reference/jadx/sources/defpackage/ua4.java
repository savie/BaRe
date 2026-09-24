package defpackage;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ua4 implements Iterable {
    public static final r50 c;
    public static final ua4 d;
    public final Object a;
    public final oa4 b;

    static {
        r50 r50Var = new r50(cl7.b);
        c = r50Var;
        d = new ua4(null, r50Var);
    }

    public ua4(Object obj, oa4 oa4Var) {
        this.a = obj;
        this.b = oa4Var;
    }

    public final gy5 c(gy5 gy5Var, q36 q36Var) {
        gy5 gy5VarC;
        Object obj = this.a;
        if (obj != null && q36Var.a(obj)) {
            return gy5.d;
        }
        if (gy5Var.isEmpty()) {
            return null;
        }
        m61 m61VarK = gy5Var.k();
        ua4 ua4Var = (ua4) this.b.d(m61VarK);
        if (ua4Var == null || (gy5VarC = ua4Var.c(gy5Var.p(), q36Var)) == null) {
            return null;
        }
        return new gy5(m61VarK).e(gy5VarC);
    }

    public final Object d(gy5 gy5Var, ta4 ta4Var, Object obj) {
        for (Map.Entry entry : this.b) {
            obj = ((ua4) entry.getValue()).d(gy5Var.d((m61) entry.getKey()), ta4Var, obj);
        }
        Object obj2 = this.a;
        return obj2 != null ? ta4Var.g(gy5Var, obj2, obj) : obj;
    }

    public final Object e(gy5 gy5Var) {
        if (gy5Var.isEmpty()) {
            return this.a;
        }
        ua4 ua4Var = (ua4) this.b.d(gy5Var.k());
        if (ua4Var != null) {
            return ua4Var.e(gy5Var.p());
        }
        return null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || ua4.class != obj.getClass()) {
            return false;
        }
        ua4 ua4Var = (ua4) obj;
        oa4 oa4Var = ua4Var.b;
        oa4 oa4Var2 = this.b;
        if (oa4Var2 == null ? oa4Var != null : !oa4Var2.equals(oa4Var)) {
            return false;
        }
        Object obj2 = ua4Var.a;
        Object obj3 = this.a;
        return obj3 == null ? obj2 == null : obj3.equals(obj2);
    }

    public final ua4 f(m61 m61Var) {
        ua4 ua4Var = (ua4) this.b.d(m61Var);
        return ua4Var != null ? ua4Var : d;
    }

    public final ua4 g(gy5 gy5Var) {
        boolean zIsEmpty = gy5Var.isEmpty();
        oa4 oa4Var = this.b;
        if (!zIsEmpty) {
            m61 m61VarK = gy5Var.k();
            ua4 ua4Var = (ua4) oa4Var.d(m61VarK);
            if (ua4Var == null) {
                return this;
            }
            ua4 ua4VarG = ua4Var.g(gy5Var.p());
            oa4 oa4VarO = ua4VarG.isEmpty() ? oa4Var.o(m61VarK) : oa4Var.l(ua4VarG, m61VarK);
            Object obj = this.a;
            if (obj != null || !oa4VarO.isEmpty()) {
                return new ua4(obj, oa4VarO);
            }
        } else if (!oa4Var.isEmpty()) {
            return new ua4(null, oa4Var);
        }
        return d;
    }

    public final int hashCode() {
        Object obj = this.a;
        int iHashCode = (obj != null ? obj.hashCode() : 0) * 31;
        oa4 oa4Var = this.b;
        return iHashCode + (oa4Var != null ? oa4Var.hashCode() : 0);
    }

    public final ua4 i(gy5 gy5Var, Object obj) {
        boolean zIsEmpty = gy5Var.isEmpty();
        oa4 oa4Var = this.b;
        if (zIsEmpty) {
            return new ua4(obj, oa4Var);
        }
        m61 m61VarK = gy5Var.k();
        ua4 ua4Var = (ua4) oa4Var.d(m61VarK);
        if (ua4Var == null) {
            ua4Var = d;
        }
        return new ua4(this.a, oa4Var.l(ua4Var.i(gy5Var.p(), obj), m61VarK));
    }

    public final boolean isEmpty() {
        return this.a == null && this.b.isEmpty();
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        ArrayList arrayList = new ArrayList();
        d(gy5.d, new cw2(arrayList), null);
        return arrayList.iterator();
    }

    public final ua4 k(gy5 gy5Var, ua4 ua4Var) {
        if (gy5Var.isEmpty()) {
            return ua4Var;
        }
        m61 m61VarK = gy5Var.k();
        oa4 oa4Var = this.b;
        ua4 ua4Var2 = (ua4) oa4Var.d(m61VarK);
        if (ua4Var2 == null) {
            ua4Var2 = d;
        }
        ua4 ua4VarK = ua4Var2.k(gy5Var.p(), ua4Var);
        return new ua4(this.a, ua4VarK.isEmpty() ? oa4Var.o(m61VarK) : oa4Var.l(ua4VarK, m61VarK));
    }

    public final ua4 l(gy5 gy5Var) {
        if (gy5Var.isEmpty()) {
            return this;
        }
        ua4 ua4Var = (ua4) this.b.d(gy5Var.k());
        return ua4Var != null ? ua4Var.l(gy5Var.p()) : d;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ImmutableTree { value=");
        sb.append(this.a);
        sb.append(", children={");
        for (Map.Entry entry : this.b) {
            sb.append(((m61) entry.getKey()).a);
            sb.append("=");
            sb.append(entry.getValue());
        }
        sb.append("} }");
        return sb.toString();
    }

    public ua4(Comparable comparable) {
        this(comparable, c);
    }
}
