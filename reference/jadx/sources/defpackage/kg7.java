package defpackage;

import java.io.Serializable;
import java.util.HashMap;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class kg7 extends mc8 implements Serializable {
    public final s65 c;
    public final ConcurrentHashMap d;
    public final HashMap e;

    public kg7(v77 v77Var, gc8 gc8Var, ConcurrentHashMap concurrentHashMap, HashMap map) {
        super(gc8Var, v77Var.b.a);
        this.c = v77Var;
        this.d = concurrentHashMap;
        this.e = map;
        v77Var.i(u65.ACCEPT_CASE_INSENSITIVE_VALUES);
    }

    @Override // defpackage.mc8
    public final String b(Object obj) {
        return d(obj.getClass());
    }

    @Override // defpackage.mc8
    public final String c(Class cls, Object obj) {
        return obj == null ? d(cls) : d(obj.getClass());
    }

    public final String d(Class cls) {
        if (cls == null) {
            return null;
        }
        Class clsA = mc8.a(cls);
        String name = clsA.getName();
        ConcurrentHashMap concurrentHashMap = this.d;
        String strN = (String) concurrentHashMap.get(name);
        if (strN == null) {
            Class cls2 = this.a.b(null, clsA, lc8.d).f;
            s65 s65Var = this.c;
            s65Var.getClass();
            if (s65Var.i(u65.USE_ANNOTATIONS)) {
                gc8 gc8VarC = s65Var.c(cls2);
                ((xo0) s65Var.b.b).getClass();
                wo0 wo0VarP0 = xo0.p0(s65Var, gc8VarC);
                if (wo0VarP0 == null) {
                    wo0VarP0 = wo0.d(s65Var, gc8VarC, xo0.q0(s65Var, gc8VarC, s65Var));
                }
                strN = s65Var.d().N(wo0VarP0.e);
            }
            if (strN == null) {
                String name2 = cls2.getName();
                int iMax = Math.max(name2.lastIndexOf(46), name2.lastIndexOf(36));
                if (iMax >= 0) {
                    name2 = name2.substring(iMax + 1);
                }
                strN = name2;
            }
            concurrentHashMap.put(name, strN);
        }
        return strN;
    }

    public final String toString() {
        return String.format("[%s; id-to-type=%s]", kg7.class.getName(), this.e);
    }
}
