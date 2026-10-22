package defpackage;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class qd2 {
    public final ArrayList a = new ArrayList();
    public final ArrayList b = new ArrayList();
    public dy3 c;
    public Object d;
    public int e;
    public int f;
    public Class g;
    public yw2 h;
    public ou5 i;
    public Map j;
    public Class k;
    public boolean l;
    public boolean m;
    public jo4 n;
    public e66 o;
    public km2 p;
    public boolean q;
    public boolean r;

    public final ArrayList a() {
        boolean z = this.m;
        ArrayList arrayList = this.b;
        if (!z) {
            this.m = true;
            arrayList.clear();
            ArrayList arrayListB = b();
            int size = arrayListB.size();
            for (int i = 0; i < size; i++) {
                bh5 bh5Var = (bh5) arrayListB.get(i);
                jo4 jo4Var = bh5Var.a;
                List list = bh5Var.b;
                if (!arrayList.contains(jo4Var)) {
                    arrayList.add(bh5Var.a);
                }
                for (int i2 = 0; i2 < list.size(); i2++) {
                    if (!arrayList.contains(list.get(i2))) {
                        arrayList.add(list.get(i2));
                    }
                }
            }
        }
        return arrayList;
    }

    public final ArrayList b() {
        boolean z = this.l;
        ArrayList arrayList = this.a;
        if (!z) {
            this.l = true;
            arrayList.clear();
            List listF = this.c.a().f(this.d);
            int size = listF.size();
            for (int i = 0; i < size; i++) {
                bh5 bh5VarB = ((ch5) listF.get(i)).b(this.d, this.e, this.f, this.i);
                if (bh5VarB != null) {
                    arrayList.add(bh5VarB);
                }
            }
        }
        return arrayList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final az4 c(Class cls) {
        az4 az4Var;
        Class cls2;
        Class cls3;
        Class cls4;
        az4 az4Var2;
        ArrayList arrayList;
        am6 am6Var;
        Class cls5 = cls;
        mi6 mi6VarA = this.c.a();
        Class cls6 = this.g;
        Class cls7 = this.k;
        bz4 bz4Var = mi6VarA.i;
        rh5 rh5Var = (rh5) bz4Var.b.getAndSet(null);
        if (rh5Var == null) {
            rh5Var = new rh5();
        }
        rh5Var.a = cls5;
        rh5Var.b = cls6;
        rh5Var.c = cls7;
        synchronized (bz4Var.a) {
            az4Var = (az4) bz4Var.a.get(rh5Var);
        }
        bz4Var.b.set(rh5Var);
        mi6VarA.i.getClass();
        if (bz4.c.equals(az4Var)) {
            return null;
        }
        if (az4Var != null) {
            return az4Var;
        }
        ArrayList arrayList2 = new ArrayList();
        for (Class<?> cls8 : mi6VarA.c.f(cls5, cls6)) {
            for (Class cls9 : mi6VarA.f.b(cls8, cls7)) {
                ix0 ix0Var = mi6VarA.c;
                synchronized (ix0Var) {
                    arrayList = new ArrayList();
                    Iterator it = ((ArrayList) ix0Var.b).iterator();
                    while (it.hasNext()) {
                        List<rl6> list = (List) ((HashMap) ix0Var.c).get((String) it.next());
                        if (list != null) {
                            for (rl6 rl6Var : list) {
                                if (rl6Var.a.isAssignableFrom(cls5) && cls8.isAssignableFrom(rl6Var.b)) {
                                    arrayList.add(rl6Var.c);
                                }
                            }
                        }
                    }
                }
                s40 s40Var = mi6VarA.f;
                synchronized (s40Var) {
                    if (cls9.isAssignableFrom(cls8)) {
                        am6Var = us2.f;
                    } else {
                        Iterator it2 = s40Var.a.iterator();
                        while (true) {
                            if (!it2.hasNext()) {
                                throw new IllegalArgumentException("No transcoder registered to transcode from " + cls8 + " to " + cls9);
                            }
                            h98 h98Var = (h98) it2.next();
                            if (h98Var.a.isAssignableFrom(cls8) && cls9.isAssignableFrom(h98Var.b)) {
                                am6Var = h98Var.c;
                                break;
                            }
                            cls5 = cls;
                        }
                    }
                }
                arrayList2.add(new ud2(cls5, cls8, cls9, arrayList, am6Var, mi6VarA.j));
                cls5 = cls;
            }
            cls5 = cls;
        }
        if (arrayList2.isEmpty()) {
            cls2 = cls;
            cls3 = cls6;
            cls4 = cls7;
            az4Var2 = null;
        } else {
            cls2 = cls;
            cls3 = cls6;
            cls4 = cls7;
            az4Var2 = new az4(cls2, cls3, cls4, arrayList2, mi6VarA.j);
        }
        bz4 bz4Var2 = mi6VarA.i;
        synchronized (bz4Var2.a) {
            bz4Var2.a.put(new rh5(cls2, cls3, cls4), az4Var2 != null ? az4Var2 : bz4.c);
        }
        return az4Var2;
    }

    public final zv2 d(Object obj) {
        zv2 zv2Var;
        cw2 cw2Var = this.c.a().b;
        Class<?> cls = obj.getClass();
        synchronized (cw2Var) {
            for (bw2 bw2Var : cw2Var.a) {
                if (bw2Var.a.isAssignableFrom(cls)) {
                    zv2Var = bw2Var.b;
                }
            }
            zv2Var = null;
        }
        if (zv2Var != null) {
            return zv2Var;
        }
        throw new li6(fz5.k(obj.getClass(), "Failed to find source encoder for data class: "));
    }

    public final l98 e(Class cls) {
        l98 l98Var = (l98) this.j.get(cls);
        if (l98Var == null) {
            for (Map.Entry entry : this.j.entrySet()) {
                if (((Class) entry.getKey()).isAssignableFrom(cls)) {
                    l98Var = (l98) entry.getValue();
                    break;
                }
            }
        }
        if (l98Var != null) {
            return l98Var;
        }
        if (!this.j.isEmpty() || !this.q) {
            return ge8.b;
        }
        c6.f(fz5.l(cls, "Missing transformation for ", ". If you wish to ignore unknown resource types, use the optional transformation methods."));
        return null;
    }
}
