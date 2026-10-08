package defpackage;

import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class bx6 implements Iterable {
    public xw6 a;
    public xw6 b;
    public final WeakHashMap c = new WeakHashMap();
    public int d = 0;

    public xw6 c(Object obj) {
        xw6 xw6Var = this.a;
        while (xw6Var != null && !xw6Var.a.equals(obj)) {
            xw6Var = xw6Var.c;
        }
        return xw6Var;
    }

    public Object d(Object obj) {
        xw6 xw6VarC = c(obj);
        if (xw6VarC == null) {
            return null;
        }
        this.d--;
        WeakHashMap weakHashMap = this.c;
        if (!weakHashMap.isEmpty()) {
            Iterator it = weakHashMap.keySet().iterator();
            while (it.hasNext()) {
                ((ax6) it.next()).a(xw6VarC);
            }
        }
        xw6 xw6Var = xw6VarC.d;
        xw6 xw6Var2 = xw6VarC.c;
        if (xw6Var != null) {
            xw6Var.c = xw6Var2;
        } else {
            this.a = xw6Var2;
        }
        xw6 xw6Var3 = xw6VarC.c;
        if (xw6Var3 != null) {
            xw6Var3.d = xw6Var;
        } else {
            this.b = xw6Var;
        }
        xw6VarC.c = null;
        xw6VarC.d = null;
        return xw6VarC.b;
    }

    public final boolean equals(Object obj) {
        zw6 zw6Var;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof bx6)) {
            return false;
        }
        bx6 bx6Var = (bx6) obj;
        if (this.d != bx6Var.d) {
            return false;
        }
        Iterator it = iterator();
        Iterator it2 = bx6Var.iterator();
        while (true) {
            zw6Var = (zw6) it;
            if (!zw6Var.hasNext()) {
                break;
            }
            zw6 zw6Var2 = (zw6) it2;
            if (!zw6Var2.hasNext()) {
                break;
            }
            Map.Entry entry = (Map.Entry) zw6Var.next();
            Object next = zw6Var2.next();
            if ((entry == null && next != null) || (entry != null && !entry.equals(next))) {
                return false;
            }
        }
        return (zw6Var.hasNext() || ((zw6) it2).hasNext()) ? false : true;
    }

    public final int hashCode() {
        Iterator it = iterator();
        int iHashCode = 0;
        while (true) {
            zw6 zw6Var = (zw6) it;
            if (!zw6Var.hasNext()) {
                return iHashCode;
            }
            iHashCode += ((Map.Entry) zw6Var.next()).hashCode();
        }
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        vw6 vw6Var = new vw6(this.a, this.b);
        this.c.put(vw6Var, Boolean.FALSE);
        return vw6Var;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("[");
        Iterator it = iterator();
        while (true) {
            zw6 zw6Var = (zw6) it;
            if (!zw6Var.hasNext()) {
                sb.append("]");
                return sb.toString();
            }
            sb.append(((Map.Entry) zw6Var.next()).toString());
            if (zw6Var.hasNext()) {
                sb.append(", ");
            }
        }
    }
}
