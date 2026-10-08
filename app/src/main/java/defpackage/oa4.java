package defpackage;

import java.util.Comparator;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class oa4 implements Iterable {
    public abstract boolean c(Object obj);

    public abstract Object d(m61 m61Var);

    public abstract Comparator e();

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof oa4)) {
            return false;
        }
        oa4 oa4Var = (oa4) obj;
        if (!e().equals(oa4Var.e()) || size() != oa4Var.size()) {
            return false;
        }
        Iterator it = iterator();
        Iterator it2 = oa4Var.iterator();
        while (it.hasNext()) {
            if (!((Map.Entry) it.next()).equals(it2.next())) {
                return false;
            }
        }
        return true;
    }

    public abstract Object f();

    public abstract Object g();

    public final int hashCode() {
        int iHashCode = e().hashCode();
        Iterator it = iterator();
        while (it.hasNext()) {
            iHashCode = (iHashCode * 31) + ((Map.Entry) it.next()).hashCode();
        }
        return iHashCode;
    }

    public abstract Object i(Object obj);

    public abstract boolean isEmpty();

    public abstract void k(iz1 iz1Var);

    public abstract Iterator k0();

    public abstract oa4 l(Iterable iterable, Object obj);

    public abstract oa4 o(Object obj);

    public abstract int size();

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append("{");
        Iterator it = iterator();
        boolean z = true;
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            if (z) {
                z = false;
            } else {
                sb.append(", ");
            }
            sb.append("(");
            sb.append(entry.getKey());
            sb.append("=>");
            sb.append(entry.getValue());
            sb.append(")");
        }
        sb.append("};");
        return sb.toString();
    }
}
