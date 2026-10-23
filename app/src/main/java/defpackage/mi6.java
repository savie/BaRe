package defpackage;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class mi6 {
    public final cd a;
    public final cw2 b;
    public final ix0 c;
    public final y94 d;
    public final bb2 e;
    public final s40 f;
    public final y94 g;
    public final c00 h = new c00(7);
    public final bz4 i = new bz4();
    public final l22 j;

    public mi6() {
        int i = 8;
        l22 l22Var = new l22(new f36(20), new q34(i), new ma2(i), 2, false);
        this.j = l22Var;
        this.a = new cd(l22Var);
        this.b = new cw2();
        this.c = new ix0(8);
        this.d = new y94(1);
        this.e = new bb2(0);
        this.f = new s40(3);
        this.g = new y94(0);
        List listAsList = Arrays.asList("Animation", "Bitmap", "BitmapDrawable");
        ArrayList arrayList = new ArrayList(listAsList.size());
        arrayList.add("legacy_prepend_all");
        Iterator it = listAsList.iterator();
        while (it.hasNext()) {
            arrayList.add((String) it.next());
        }
        arrayList.add("legacy_append");
        ix0 ix0Var = this.c;
        synchronized (ix0Var) {
            try {
                ArrayList<String> arrayList2 = new ArrayList((ArrayList) ix0Var.b);
                ((ArrayList) ix0Var.b).clear();
                Iterator it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    ((ArrayList) ix0Var.b).add((String) it2.next());
                }
                for (String str : arrayList2) {
                    if (!arrayList.contains(str)) {
                        ((ArrayList) ix0Var.b).add(str);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void a(Class cls, zv2 zv2Var) {
        cw2 cw2Var = this.b;
        synchronized (cw2Var) {
            cw2Var.a.add(new bw2(cls, zv2Var));
        }
    }

    public final void b(Class cls, tl6 tl6Var) {
        y94 y94Var = this.d;
        synchronized (y94Var) {
            y94Var.a.add(new ul6(cls, tl6Var));
        }
    }

    public final void c(Class cls, Class cls2, dh5 dh5Var) {
        cd cdVar = this.a;
        synchronized (cdVar) {
            ai5 ai5Var = (ai5) cdVar.b;
            synchronized (ai5Var) {
                try {
                    zh5 zh5Var = new zh5(cls, cls2, dh5Var);
                    ArrayList arrayList = (ArrayList) ai5Var.b;
                    arrayList.add(arrayList.size(), zh5Var);
                } catch (Throwable th) {
                    throw th;
                }
            }
            ((bb2) cdVar.c).a.clear();
        }
    }

    public final void d(String str, Class cls, Class cls2, ql6 ql6Var) {
        ix0 ix0Var = this.c;
        synchronized (ix0Var) {
            ix0Var.e(str).add(new rl6(cls, cls2, ql6Var));
        }
    }

    public final ArrayList e() {
        ArrayList arrayList;
        y94 y94Var = this.g;
        synchronized (y94Var) {
            arrayList = y94Var.a;
        }
        if (arrayList.isEmpty()) {
            throw new ii6("Failed to find image header parser.");
        }
        return arrayList;
    }

    public final List f(Object obj) {
        List listUnmodifiableList;
        cd cdVar = this.a;
        cdVar.getClass();
        Class<?> cls = obj.getClass();
        synchronized (cdVar) {
            eh5 eh5Var = (eh5) ((bb2) cdVar.c).a.get(cls);
            listUnmodifiableList = eh5Var == null ? null : eh5Var.a;
            if (listUnmodifiableList == null) {
                listUnmodifiableList = Collections.unmodifiableList(((ai5) cdVar.b).b(cls));
                if (((eh5) ((bb2) cdVar.c).a.put(cls, new eh5(listUnmodifiableList))) != null) {
                    throw new IllegalStateException("Already cached loaders for model: " + cls);
                }
            }
        }
        if (listUnmodifiableList.isEmpty()) {
            throw new ji6("Failed to find any ModelLoaders registered for model class: " + obj.getClass());
        }
        int size = listUnmodifiableList.size();
        List arrayList = Collections.EMPTY_LIST;
        boolean z = true;
        for (int i = 0; i < size; i++) {
            ch5 ch5Var = (ch5) listUnmodifiableList.get(i);
            if (ch5Var.a(obj)) {
                if (z) {
                    arrayList = new ArrayList(size - i);
                    z = false;
                }
                arrayList.add(ch5Var);
            }
        }
        if (!arrayList.isEmpty()) {
            return arrayList;
        }
        throw new ji6("Found ModelLoaders for model class: " + listUnmodifiableList + ", but none that handle this specific model instance: " + obj);
    }

    public final za2 g(Object obj) {
        za2 za2VarB;
        bb2 bb2Var = this.e;
        synchronized (bb2Var) {
            try {
                ms8.i(obj);
                ya2 ya2Var = (ya2) bb2Var.a.get(obj.getClass());
                if (ya2Var == null) {
                    for (ya2 ya2Var2 : bb2Var.a.values()) {
                        if (ya2Var2.a().isAssignableFrom(obj.getClass())) {
                            ya2Var = ya2Var2;
                            break;
                        }
                    }
                }
                if (ya2Var == null) {
                    ya2Var = bb2.b;
                }
                za2VarB = ya2Var.b(obj);
            } catch (Throwable th) {
                throw th;
            }
        }
        return za2VarB;
    }

    public final void h(ya2 ya2Var) {
        bb2 bb2Var = this.e;
        synchronized (bb2Var) {
            bb2Var.a.put(ya2Var.a(), ya2Var);
        }
    }

    public final void i(Class cls, Class cls2, am6 am6Var) {
        s40 s40Var = this.f;
        synchronized (s40Var) {
            s40Var.a.add(new h98(cls, cls2, am6Var));
        }
    }
}
