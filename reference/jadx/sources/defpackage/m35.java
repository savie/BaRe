package defpackage;

import android.util.Log;
import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.NavigableMap;
import java.util.TreeMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class m35 {
    public final cd a = new cd(8);
    public final l35 b = new l35(7);
    public final HashMap c = new HashMap();
    public final HashMap d = new HashMap();
    public final int e;
    public int f;

    public m35(int i) {
        this.e = i;
    }

    public final void a(int i, Class cls) {
        NavigableMap navigableMapF = f(cls);
        Integer num = (Integer) navigableMapF.get(Integer.valueOf(i));
        if (num != null) {
            if (num.intValue() == 1) {
                navigableMapF.remove(Integer.valueOf(i));
                return;
            } else {
                navigableMapF.put(Integer.valueOf(i), Integer.valueOf(num.intValue() - 1));
                return;
            }
        }
        throw new NullPointerException("Tried to decrement empty size, size: " + i + ", this: " + this);
    }

    public final void b(int i) {
        while (this.f > i) {
            Object objL = this.a.l();
            ms8.i(objL);
            o40 o40VarD = d(objL.getClass());
            this.f -= o40VarD.a() * o40VarD.b(objL);
            a(o40VarD.b(objL), objL.getClass());
            if (Log.isLoggable(o40VarD.getTag(), 2)) {
                Log.v(o40VarD.getTag(), "evicted: " + o40VarD.b(objL));
            }
        }
    }

    public final synchronized Object c(int i, Class cls) {
        k35 k35Var;
        int i2;
        try {
            Integer num = (Integer) f(cls).ceilingKey(Integer.valueOf(i));
            boolean z = num != null && ((i2 = this.f) == 0 || this.e / i2 >= 2 || num.intValue() <= i * 8);
            l35 l35Var = this.b;
            if (z) {
                int iIntValue = num.intValue();
                s26 s26VarH = (s26) ((ArrayDeque) l35Var.b).poll();
                if (s26VarH == null) {
                    s26VarH = l35Var.H();
                }
                k35Var = (k35) s26VarH;
                k35Var.b = iIntValue;
                k35Var.c = cls;
            } else {
                s26 s26VarH2 = (s26) ((ArrayDeque) l35Var.b).poll();
                if (s26VarH2 == null) {
                    s26VarH2 = l35Var.H();
                }
                k35Var = (k35) s26VarH2;
                k35Var.b = i;
                k35Var.c = cls;
            }
        } catch (Throwable th) {
            throw th;
        }
        return e(k35Var, cls);
    }

    public final o40 d(Class cls) {
        o40 jx0Var;
        HashMap map = this.d;
        o40 o40Var = (o40) map.get(cls);
        if (o40Var != null) {
            return o40Var;
        }
        if (cls.equals(int[].class)) {
            jx0Var = new pd4();
        } else {
            if (!cls.equals(byte[].class)) {
                c6.f("No array pool found for: ".concat(cls.getSimpleName()));
                return null;
            }
            jx0Var = new jx0();
        }
        map.put(cls, jx0Var);
        return jx0Var;
    }

    public final Object e(k35 k35Var, Class cls) {
        o40 o40VarD = d(cls);
        Object objD = this.a.d(k35Var);
        if (objD != null) {
            this.f -= o40VarD.a() * o40VarD.b(objD);
            a(o40VarD.b(objD), cls);
        }
        if (objD != null) {
            return objD;
        }
        if (Log.isLoggable(o40VarD.getTag(), 2)) {
            Log.v(o40VarD.getTag(), "Allocated " + k35Var.b + " bytes");
        }
        return o40VarD.newArray(k35Var.b);
    }

    public final NavigableMap f(Class cls) {
        HashMap map = this.c;
        NavigableMap navigableMap = (NavigableMap) map.get(cls);
        if (navigableMap != null) {
            return navigableMap;
        }
        TreeMap treeMap = new TreeMap();
        map.put(cls, treeMap);
        return treeMap;
    }

    public final synchronized void g(Object obj) {
        Class<?> cls = obj.getClass();
        o40 o40VarD = d(cls);
        int iB = o40VarD.b(obj);
        int iA = o40VarD.a() * iB;
        if (iA <= this.e / 2) {
            l35 l35Var = this.b;
            s26 s26VarH = (s26) ((ArrayDeque) l35Var.b).poll();
            if (s26VarH == null) {
                s26VarH = l35Var.H();
            }
            k35 k35Var = (k35) s26VarH;
            k35Var.b = iB;
            k35Var.c = cls;
            this.a.i(k35Var, obj);
            NavigableMap navigableMapF = f(cls);
            Integer num = (Integer) navigableMapF.get(Integer.valueOf(k35Var.b));
            Integer numValueOf = Integer.valueOf(k35Var.b);
            int iIntValue = 1;
            if (num != null) {
                iIntValue = 1 + num.intValue();
            }
            navigableMapF.put(numValueOf, Integer.valueOf(iIntValue));
            this.f += iA;
            b(this.e);
        }
    }
}
