package defpackage;

import android.util.Log;
import com.google.firebase.components.ComponentRegistrar;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class to1 implements jo1 {
    public static final oo1 n = new oo1(0);
    public final HashMap a;
    public final HashMap b;
    public final HashMap c;
    public final HashSet d;
    public final oy2 e;
    public final AtomicReference f;
    public final hx0 k;

    public to1(ArrayList arrayList, ArrayList arrayList2, hx0 hx0Var) {
        kd8 kd8Var = kd8.a;
        this.a = new HashMap();
        this.b = new HashMap();
        this.c = new HashMap();
        this.d = new HashSet();
        this.f = new AtomicReference();
        oy2 oy2Var = new oy2();
        this.e = oy2Var;
        this.k = hx0Var;
        ArrayList<un1> arrayList3 = new ArrayList();
        arrayList3.add(un1.c(oy2Var, oy2.class, rr7.class, rb6.class));
        arrayList3.add(un1.c(this, to1.class, new Class[0]));
        Iterator it = arrayList2.iterator();
        while (it.hasNext()) {
            un1 un1Var = (un1) it.next();
            if (un1Var != null) {
                arrayList3.add(un1Var);
            }
        }
        ArrayList arrayList4 = new ArrayList();
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            arrayList4.add(it2.next());
        }
        ArrayList arrayList5 = new ArrayList();
        synchronized (this) {
            Iterator it3 = arrayList4.iterator();
            while (it3.hasNext()) {
                try {
                    ComponentRegistrar componentRegistrar = (ComponentRegistrar) ((ga6) it3.next()).get();
                    if (componentRegistrar != null) {
                        arrayList3.addAll(this.k.b(componentRegistrar));
                        it3.remove();
                    }
                } catch (gg4 e) {
                    it3.remove();
                    Log.w("ComponentDiscovery", "Invalid component registrar.", e);
                }
            }
            Iterator it4 = arrayList3.iterator();
            while (it4.hasNext()) {
                for (Object obj : ((un1) it4.next()).b.toArray()) {
                    if (obj.toString().contains("kotlinx.coroutines.CoroutineDispatcher")) {
                        if (this.d.contains(obj.toString())) {
                            it4.remove();
                            break;
                        }
                        this.d.add(obj.toString());
                    }
                }
            }
            if (this.a.isEmpty()) {
                ho6.k(arrayList3);
            } else {
                ArrayList arrayList6 = new ArrayList(this.a.keySet());
                arrayList6.addAll(arrayList3);
                ho6.k(arrayList6);
            }
            for (final un1 un1Var2 : arrayList3) {
                this.a.put(un1Var2, new ps4(new ga6() { // from class: po1
                    @Override // defpackage.ga6
                    public final Object get() {
                        un1 un1Var3 = un1Var2;
                        return un1Var3.f.m(new pp0(un1Var3, this.a));
                    }
                }));
            }
            arrayList5.addAll(k(arrayList3));
            arrayList5.addAll(l());
            j();
        }
        Iterator it5 = arrayList5.iterator();
        while (it5.hasNext()) {
            ((Runnable) it5.next()).run();
        }
        Boolean bool = (Boolean) this.f.get();
        if (bool != null) {
            i(this.a, bool.booleanValue());
        }
    }

    @Override // defpackage.jo1
    public final synchronized ga6 d(nc6 nc6Var) {
        ws4 ws4Var = (ws4) this.c.get(nc6Var);
        if (ws4Var != null) {
            return ws4Var;
        }
        return n;
    }

    @Override // defpackage.jo1
    public final lu5 e(nc6 nc6Var) {
        ga6 ga6VarF = f(nc6Var);
        if (ga6VarF == null) {
            return new lu5(lu5.c, lu5.d);
        }
        return ga6VarF instanceof lu5 ? (lu5) ga6VarF : new lu5(null, ga6VarF);
    }

    @Override // defpackage.jo1
    public final synchronized ga6 f(nc6 nc6Var) {
        bb9.m(nc6Var, "Null interface requested.");
        return (ga6) this.b.get(nc6Var);
    }

    public final void i(HashMap map, boolean z) {
        ArrayDeque arrayDeque;
        for (Map.Entry entry : map.entrySet()) {
            un1 un1Var = (un1) entry.getKey();
            ga6 ga6Var = (ga6) entry.getValue();
            int i = un1Var.d;
            if (i == 1 || (i == 2 && z)) {
                ga6Var.get();
            }
        }
        oy2 oy2Var = this.e;
        synchronized (oy2Var) {
            try {
                arrayDeque = oy2Var.b;
                if (arrayDeque != null) {
                    oy2Var.b = null;
                } else {
                    arrayDeque = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (arrayDeque != null) {
            Iterator it = arrayDeque.iterator();
            while (it.hasNext()) {
                oy2Var.a((gy2) it.next());
            }
        }
    }

    public final void j() {
        HashMap map = this.b;
        HashMap map2 = this.c;
        for (un1 un1Var : this.a.keySet()) {
            for (ji2 ji2Var : un1Var.c) {
                boolean z = ji2Var.b == 2;
                nc6 nc6Var = ji2Var.a;
                if (z && !map2.containsKey(nc6Var)) {
                    Set set = Collections.EMPTY_SET;
                    ws4 ws4Var = new ws4();
                    ws4Var.b = null;
                    ws4Var.a = Collections.newSetFromMap(new ConcurrentHashMap());
                    ws4Var.a.addAll(set);
                    map2.put(nc6Var, ws4Var);
                } else if (map.containsKey(nc6Var)) {
                    continue;
                } else {
                    int i = ji2Var.b;
                    if (i == 1) {
                        throw new tg5("Unsatisfied dependency for component " + un1Var + ": " + nc6Var);
                    }
                    if (i != 2) {
                        map.put(nc6Var, new lu5(lu5.c, lu5.d));
                    }
                }
            }
        }
    }

    public final ArrayList k(ArrayList arrayList) {
        ArrayList arrayList2 = new ArrayList();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            un1 un1Var = (un1) it.next();
            if (un1Var.e == 0) {
                ga6 ga6Var = (ga6) this.a.get(un1Var);
                for (nc6 nc6Var : un1Var.b) {
                    HashMap map = this.b;
                    if (map.containsKey(nc6Var)) {
                        arrayList2.add(new qo1(0, (lu5) ((ga6) map.get(nc6Var)), ga6Var));
                    } else {
                        map.put(nc6Var, ga6Var);
                    }
                }
            }
        }
        return arrayList2;
    }

    public final ArrayList l() {
        HashMap map = this.c;
        ArrayList arrayList = new ArrayList();
        HashMap map2 = new HashMap();
        for (Map.Entry entry : this.a.entrySet()) {
            un1 un1Var = (un1) entry.getKey();
            if (un1Var.e != 0) {
                ga6 ga6Var = (ga6) entry.getValue();
                for (nc6 nc6Var : un1Var.b) {
                    if (!map2.containsKey(nc6Var)) {
                        map2.put(nc6Var, new HashSet());
                    }
                    ((Set) map2.get(nc6Var)).add(ga6Var);
                }
            }
        }
        for (Map.Entry entry2 : map2.entrySet()) {
            if (map.containsKey(entry2.getKey())) {
                ws4 ws4Var = (ws4) map.get(entry2.getKey());
                Iterator it = ((Set) entry2.getValue()).iterator();
                while (it.hasNext()) {
                    arrayList.add(new ro1(0, ws4Var, (ga6) it.next()));
                }
            } else {
                nc6 nc6Var2 = (nc6) entry2.getKey();
                Set set = (Set) ((Collection) entry2.getValue());
                ws4 ws4Var2 = new ws4();
                ws4Var2.b = null;
                ws4Var2.a = Collections.newSetFromMap(new ConcurrentHashMap());
                ws4Var2.a.addAll(set);
                map.put(nc6Var2, ws4Var2);
            }
        }
        return arrayList;
    }
}
