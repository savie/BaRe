package defpackage;

import android.os.Looper;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.ExecutorService;
import java.util.logging.Level;
import org.greenrobot.eventbus.android.AndroidComponentsImpl;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ny2 {
    public static volatile ny2 q;
    public static final py2 r;
    public static final HashMap s;
    public final HashMap a;
    public final HashMap b;
    public final ConcurrentHashMap c;
    public final ky2 d = new ky2();
    public final q34 e;
    public final t24 f;
    public final dk0 g;
    public final vb h;
    public final vr7 i;
    public final ExecutorService j;
    public final boolean k;
    public final boolean l;
    public final boolean m;
    public final boolean n;
    public final boolean o;
    public final k15 p;

    static {
        py2 py2Var = new py2();
        py2Var.a = py2.b;
        r = py2Var;
        s = new HashMap();
    }

    public ny2() {
        py2 py2Var = r;
        py2Var.getClass();
        AndroidComponentsImpl androidComponentsImpl = AndroidComponentsImpl.c;
        this.p = androidComponentsImpl != null ? androidComponentsImpl.a : new lk();
        this.a = new HashMap();
        this.b = new HashMap();
        this.c = new ConcurrentHashMap();
        q34 q34Var = androidComponentsImpl != null ? androidComponentsImpl.b : null;
        this.e = q34Var;
        this.f = q34Var != null ? new t24(this, Looper.getMainLooper()) : null;
        this.g = new dk0(this);
        this.h = new vb(this);
        this.i = new vr7();
        this.k = true;
        this.l = true;
        this.m = true;
        this.n = true;
        this.o = true;
        this.j = py2Var.a;
    }

    public static void a(ArrayList arrayList, Class[] clsArr) {
        for (Class cls : clsArr) {
            if (!arrayList.contains(cls)) {
                arrayList.add(cls);
                a(arrayList, cls.getInterfaces());
            }
        }
    }

    public static ny2 b() {
        ny2 ny2Var;
        ny2 ny2Var2 = q;
        if (ny2Var2 != null) {
            return ny2Var2;
        }
        synchronized (ny2.class) {
            try {
                ny2Var = q;
                if (ny2Var == null) {
                    ny2Var = new ny2();
                    q = ny2Var;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return ny2Var;
    }

    public final void c(wy5 wy5Var) {
        Object obj = wy5Var.a;
        wr7 wr7Var = wy5Var.b;
        wy5Var.a = null;
        wy5Var.b = null;
        wy5Var.c = null;
        ArrayList arrayList = wy5.d;
        synchronized (arrayList) {
            try {
                if (arrayList.size() < 10000) {
                    arrayList.add(wy5Var);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (wr7Var.c) {
            d(wr7Var, obj);
        }
    }

    public final void d(wr7 wr7Var, Object obj) {
        try {
            wr7Var.b.a.invoke(wr7Var.a, obj);
        } catch (IllegalAccessException e) {
            e6.j("Unexpected exception", e);
        } catch (InvocationTargetException e2) {
            Throwable cause = e2.getCause();
            boolean z = obj instanceof sr7;
            k15 k15Var = this.p;
            boolean z2 = this.k;
            if (!z) {
                if (z2) {
                    k15Var.u(Level.SEVERE, "Could not dispatch event: " + obj.getClass() + " to subscribing class " + wr7Var.a.getClass(), cause);
                }
                if (this.m) {
                    e(new sr7(cause, obj, wr7Var.a));
                    return;
                }
                return;
            }
            if (z2) {
                Level level = Level.SEVERE;
                k15Var.u(level, "SubscriberExceptionEvent subscriber " + wr7Var.a.getClass() + " threw an exception", cause);
                sr7 sr7Var = (sr7) obj;
                k15Var.u(level, "Initial event " + sr7Var.b + " caused exception in " + sr7Var.c, sr7Var.a);
            }
        }
    }

    public final void e(Object obj) {
        my2 my2Var = (my2) this.d.get();
        ArrayList arrayList = my2Var.a;
        arrayList.add(obj);
        if (my2Var.b) {
            return;
        }
        my2Var.c = this.e == null || Looper.getMainLooper() == Looper.myLooper();
        my2Var.b = true;
        while (!arrayList.isEmpty()) {
            try {
                f(arrayList.remove(0), my2Var);
            } catch (Throwable th) {
                my2Var.b = false;
                my2Var.c = false;
                throw th;
            }
        }
        my2Var.b = false;
        my2Var.c = false;
    }

    public final void f(Object obj, my2 my2Var) {
        boolean zG;
        List list;
        Class<?> cls = obj.getClass();
        int i = 0;
        if (this.o) {
            HashMap map = s;
            synchronized (map) {
                try {
                    List list2 = (List) map.get(cls);
                    list = list2;
                    if (list2 == null) {
                        ArrayList arrayList = new ArrayList();
                        for (Class<?> superclass = cls; superclass != null; superclass = superclass.getSuperclass()) {
                            arrayList.add(superclass);
                            a(arrayList, superclass.getInterfaces());
                        }
                        s.put(cls, arrayList);
                        list = arrayList;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            int size = list.size();
            zG = false;
            for (int i2 = 0; i2 < size; i2++) {
                zG |= g(obj, my2Var, (Class) list.get(i2));
            }
        } else {
            zG = g(obj, my2Var, cls);
        }
        if (zG) {
            return;
        }
        if (this.l) {
            this.p.g("No subscribers registered for event " + cls, Level.FINE);
        }
        if (!this.n || cls == ln5.class || cls == sr7.class) {
            return;
        }
        e(new ln5(obj, i));
    }

    public final boolean g(Object obj, my2 my2Var, Class cls) {
        CopyOnWriteArrayList<wr7> copyOnWriteArrayList;
        synchronized (this) {
            copyOnWriteArrayList = (CopyOnWriteArrayList) this.a.get(cls);
        }
        if (copyOnWriteArrayList == null || copyOnWriteArrayList.isEmpty()) {
            return false;
        }
        for (wr7 wr7Var : copyOnWriteArrayList) {
            my2Var.d = obj;
            h(wr7Var, obj, my2Var.c);
        }
        return true;
    }

    public final void h(wr7 wr7Var, Object obj, boolean z) {
        t24 t24Var = this.f;
        int i = ly2.a[wr7Var.b.b.ordinal()];
        if (i == 1) {
            d(wr7Var, obj);
            return;
        }
        if (i == 2) {
            if (z) {
                d(wr7Var, obj);
                return;
            } else {
                t24Var.a(wr7Var, obj);
                return;
            }
        }
        if (i == 3) {
            if (t24Var != null) {
                t24Var.a(wr7Var, obj);
                return;
            } else {
                d(wr7Var, obj);
                return;
            }
        }
        if (i != 4) {
            if (i != 5) {
                m0.g(wr7Var.b.b, "Unknown thread mode: ");
                return;
            }
            vb vbVar = this.h;
            vbVar.getClass();
            ((ix0) vbVar.b).b(wy5.a(wr7Var, obj));
            ((ny2) vbVar.c).j.execute(vbVar);
            return;
        }
        if (!z) {
            d(wr7Var, obj);
            return;
        }
        dk0 dk0Var = this.g;
        dk0Var.getClass();
        wy5 wy5VarA = wy5.a(wr7Var, obj);
        synchronized (dk0Var) {
            try {
                dk0Var.a.b(wy5VarA);
                if (!dk0Var.c) {
                    dk0Var.c = true;
                    dk0Var.b.j.execute(dk0Var);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void i(Object obj) {
        int i;
        ur7 ur7Var;
        Method[] methods;
        qr7 qr7Var;
        boolean zA;
        if (ms8.z()) {
            try {
                AndroidComponentsImpl androidComponentsImpl = AndroidComponentsImpl.c;
            } catch (ClassNotFoundException unused) {
                g84.h("It looks like you are using EventBus on Android, make sure to add the \"eventbus\" Android library to your dependencies.");
                return;
            }
        }
        Class<?> cls = obj.getClass();
        this.i.getClass();
        ConcurrentHashMap concurrentHashMap = vr7.a;
        List list = (List) concurrentHashMap.get(cls);
        List list2 = list;
        if (list == null) {
            synchronized (vr7.b) {
                int i2 = 0;
                while (true) {
                    if (i2 >= 4) {
                        ur7Var = new ur7();
                        break;
                    }
                    try {
                        ur7[] ur7VarArr = vr7.b;
                        ur7Var = ur7VarArr[i2];
                        if (ur7Var != null) {
                            ur7VarArr[i2] = null;
                            break;
                        }
                        i2++;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            ur7Var.e = cls;
            ur7Var.f = false;
            while (true) {
                Class cls2 = ur7Var.e;
                if (cls2 == null) {
                    ArrayList arrayList = new ArrayList(ur7Var.a);
                    ur7Var.a.clear();
                    ur7Var.b.clear();
                    ur7Var.c.clear();
                    ur7Var.d.setLength(0);
                    ur7Var.e = null;
                    ur7Var.f = false;
                    synchronized (vr7.b) {
                        for (i = 0; i < 4; i++) {
                            try {
                                ur7[] ur7VarArr2 = vr7.b;
                                if (ur7VarArr2[i] == null) {
                                    ur7VarArr2[i] = ur7Var;
                                    break;
                                }
                            } catch (Throwable th2) {
                                throw th2;
                            }
                        }
                    }
                    if (!arrayList.isEmpty()) {
                        concurrentHashMap.put(cls, arrayList);
                        list2 = arrayList;
                        break;
                    }
                    throw new qy2(fz5.l(cls, "Subscriber ", " and its super classes have no public methods with the @Subscribe annotation"));
                }
                int i3 = 1;
                try {
                    try {
                        methods = cls2.getDeclaredMethods();
                    } catch (Throwable unused2) {
                        methods = ur7Var.e.getMethods();
                        ur7Var.f = true;
                    }
                    int length = methods.length;
                    int i4 = 0;
                    while (i4 < length) {
                        Method method = methods[i4];
                        int modifiers = method.getModifiers();
                        if ((modifiers & 1) != 0 && (modifiers & 5192) == 0) {
                            Class<?>[] parameterTypes = method.getParameterTypes();
                            if (parameterTypes.length == i3 && (qr7Var = (qr7) method.getAnnotation(qr7.class)) != null) {
                                Class<?> cls3 = parameterTypes[0];
                                HashMap map = ur7Var.b;
                                Object objPut = map.put(cls3, method);
                                if (objPut == null) {
                                    zA = true;
                                } else {
                                    if (objPut instanceof Method) {
                                        if (!ur7Var.a((Method) objPut, cls3)) {
                                            g84.c();
                                            return;
                                        }
                                        map.put(cls3, ur7Var);
                                    }
                                    zA = ur7Var.a(method, cls3);
                                }
                                if (zA) {
                                    ur7Var.a.add(new tr7(method, cls3, qr7Var.threadMode(), qr7Var.priority(), qr7Var.sticky()));
                                }
                            }
                        }
                        i4++;
                        i3 = 1;
                    }
                    if (ur7Var.f) {
                        ur7Var.e = null;
                    } else {
                        Class superclass = ur7Var.e.getSuperclass();
                        ur7Var.e = superclass;
                        String name = superclass.getName();
                        if (name.startsWith("java.") || name.startsWith("javax.") || name.startsWith("android.") || name.startsWith("androidx.")) {
                            ur7Var.e = null;
                        }
                    }
                } catch (LinkageError e) {
                    throw new qy2("Could not inspect methods of ".concat(ur7Var.e.getName()).concat(". Please make this class visible to EventBus annotation processor to avoid reflection."), e);
                }
            }
        }
        synchronized (this) {
            try {
                Iterator it = list2.iterator();
                while (it.hasNext()) {
                    j(obj, (tr7) it.next());
                }
            } catch (Throwable th3) {
                throw th3;
            }
        }
    }

    public final void j(Object obj, tr7 tr7Var) {
        Object value;
        Class cls = tr7Var.c;
        wr7 wr7Var = new wr7(obj, tr7Var);
        HashMap map = this.a;
        CopyOnWriteArrayList copyOnWriteArrayList = (CopyOnWriteArrayList) map.get(cls);
        if (copyOnWriteArrayList == null) {
            copyOnWriteArrayList = new CopyOnWriteArrayList();
            map.put(cls, copyOnWriteArrayList);
        } else if (copyOnWriteArrayList.contains(wr7Var)) {
            throw new qy2("Subscriber " + obj.getClass() + " already registered to event " + cls);
        }
        int size = copyOnWriteArrayList.size();
        for (int i = 0; i <= size; i++) {
            if (i == size || tr7Var.d > ((wr7) copyOnWriteArrayList.get(i)).b.d) {
                copyOnWriteArrayList.add(i, wr7Var);
                break;
            }
        }
        HashMap map2 = this.b;
        List arrayList = (List) map2.get(obj);
        if (arrayList == null) {
            arrayList = new ArrayList();
            map2.put(obj, arrayList);
        }
        arrayList.add(cls);
        if (tr7Var.e) {
            q34 q34Var = this.e;
            boolean z = this.o;
            ConcurrentHashMap concurrentHashMap = this.c;
            if (!z) {
                Object obj2 = concurrentHashMap.get(cls);
                if (obj2 != null) {
                    h(wr7Var, obj2, q34Var == null || Looper.getMainLooper() == Looper.myLooper());
                    return;
                }
                return;
            }
            for (Map.Entry entry : concurrentHashMap.entrySet()) {
                if (cls.isAssignableFrom((Class) entry.getKey()) && (value = entry.getValue()) != null) {
                    h(wr7Var, value, q34Var == null || Looper.getMainLooper() == Looper.myLooper());
                }
            }
        }
    }

    public final synchronized void k(Object obj) {
        try {
            List list = (List) this.b.get(obj);
            if (list != null) {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    List list2 = (List) this.a.get((Class) it.next());
                    if (list2 != null) {
                        int size = list2.size();
                        int i = 0;
                        while (i < size) {
                            wr7 wr7Var = (wr7) list2.get(i);
                            if (wr7Var.a == obj) {
                                wr7Var.c = false;
                                list2.remove(i);
                                i--;
                                size--;
                            }
                            i++;
                        }
                    }
                }
                this.b.remove(obj);
            } else {
                this.p.g("Subscriber to unregister was not registered before: " + obj.getClass(), Level.WARNING);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final String toString() {
        return dj7.p(new StringBuilder("EventBus[indexCount=0, eventInheritance="), this.o, "]");
    }
}
