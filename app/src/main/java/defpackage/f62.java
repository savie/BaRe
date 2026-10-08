package defpackage;

import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public class f62 {
    public long a;
    public long b;
    public final Object c;

    public f62(long j) {
        this.c = new LinkedHashMap(100, 0.75f, true);
        this.a = j;
    }

    public synchronized Object a(Object obj) {
        o35 o35Var;
        o35Var = (o35) ((LinkedHashMap) this.c).get(obj);
        return o35Var != null ? o35Var.a : null;
    }

    public int b(Object obj) {
        return 1;
    }

    public synchronized Object d(Object obj, Object obj2) {
        int iB = b(obj2);
        long j = iB;
        if (j >= this.a) {
            c(obj, obj2);
            return null;
        }
        if (obj2 != null) {
            this.b += j;
        }
        o35 o35Var = (o35) ((LinkedHashMap) this.c).put(obj, obj2 == null ? null : new o35(obj2, iB));
        if (o35Var != null) {
            this.b -= (long) o35Var.b;
            if (!o35Var.a.equals(obj2)) {
                c(obj, o35Var.a);
            }
        }
        e(this.a);
        return o35Var != null ? o35Var.a : null;
    }

    public synchronized void e(long j) {
        while (this.b > j) {
            Iterator it = ((LinkedHashMap) this.c).entrySet().iterator();
            Map.Entry entry = (Map.Entry) it.next();
            o35 o35Var = (o35) entry.getValue();
            this.b -= (long) o35Var.b;
            Object key = entry.getKey();
            it.remove();
            c(key, o35Var.a);
        }
    }

    public f62(g62 g62Var) {
        this.c = g62Var;
        this.b = g62Var.a.a.A();
    }

    public void c(Object obj, Object obj2) {
    }
}
