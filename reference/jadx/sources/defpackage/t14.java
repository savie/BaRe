package defpackage;

import com.google.gson.a;
import com.google.gson.internal.Excluder;
import com.google.gson.internal.bind.ArrayTypeAdapter;
import com.google.gson.internal.bind.CollectionTypeAdapterFactory;
import com.google.gson.internal.bind.DefaultDateTypeAdapter;
import com.google.gson.internal.bind.JavaTimeTypeAdapters;
import com.google.gson.internal.bind.JsonAdapterAnnotationTypeAdapterFactory;
import com.google.gson.internal.bind.MapTypeAdapterFactory;
import com.google.gson.internal.bind.NumberTypeAdapter;
import com.google.gson.internal.bind.ObjectTypeAdapter;
import com.google.gson.internal.bind.ReflectiveTypeAdapterFactory;
import com.google.gson.internal.bind.TreeTypeAdapter;
import com.google.gson.internal.bind.b;
import com.google.gson.reflect.TypeToken;
import java.lang.reflect.Type;
import java.util.AbstractCollection;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicLongArray;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class t14 {
    public static final vt1 q;
    public static final JsonAdapterAnnotationTypeAdapterFactory r;
    public static final t14 s;
    public static final List t;
    public Excluder a;
    public final HashMap b;
    public final ArrayList c;
    public final ArrayList d;
    public boolean e;
    public final int f;
    public final int g;
    public boolean h;
    public xq3 i;
    public final boolean j;
    public final ArrayDeque k;
    public final int l;
    public final int m;
    public final int n;
    public final int o;
    public static final xq3 p = xq3.d;
    public static final int u = 1;
    public static final int v = 1;
    public static final int w = 2;

    static {
        vt1 vt1Var = new vt1(Collections.EMPTY_MAP, true, Collections.EMPTY_LIST);
        q = vt1Var;
        JsonAdapterAnnotationTypeAdapterFactory jsonAdapterAnnotationTypeAdapterFactory = new JsonAdapterAnnotationTypeAdapterFactory(vt1Var);
        r = jsonAdapterAnnotationTypeAdapterFactory;
        t14 t14Var = new t14();
        s = t14Var;
        t = t14Var.a(vt1Var, jsonAdapterAnnotationTypeAdapterFactory);
    }

    public t14(a aVar) {
        this.a = Excluder.d;
        this.l = 1;
        this.m = u;
        HashMap map = new HashMap();
        this.b = map;
        ArrayList arrayList = new ArrayList();
        this.c = arrayList;
        ArrayList arrayList2 = new ArrayList();
        this.d = arrayList2;
        this.e = false;
        this.f = 2;
        this.g = 2;
        this.h = true;
        this.i = p;
        this.j = true;
        this.n = v;
        this.o = w;
        ArrayDeque arrayDeque = new ArrayDeque();
        this.k = arrayDeque;
        this.a = aVar.f;
        this.m = aVar.g;
        map.putAll(aVar.h);
        this.e = aVar.i;
        this.h = aVar.j;
        this.i = aVar.k;
        this.l = aVar.o;
        this.f = aVar.m;
        this.g = aVar.n;
        arrayList.addAll(aVar.p);
        arrayList2.addAll(aVar.q);
        this.j = aVar.l;
        this.n = aVar.r;
        this.o = aVar.s;
        arrayDeque.addAll(aVar.t);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static List b(AbstractCollection abstractCollection) {
        if (abstractCollection.isEmpty()) {
            return Collections.EMPTY_LIST;
        }
        if (abstractCollection.size() == 1) {
            return Collections.singletonList(abstractCollection instanceof List ? ((List) abstractCollection).get(0) : abstractCollection.iterator().next());
        }
        return Collections.unmodifiableList(Arrays.asList(abstractCollection.toArray()));
    }

    public final List a(vt1 vt1Var, JsonAdapterAnnotationTypeAdapterFactory jsonAdapterAnnotationTypeAdapterFactory) {
        xb8 xb8VarA;
        xb8 xb8VarA2;
        ArrayList arrayList = new ArrayList();
        arrayList.add(b.B);
        arrayList.add(ObjectTypeAdapter.a(this.n));
        arrayList.add(this.a);
        ArrayList arrayList2 = this.c;
        if (!arrayList2.isEmpty()) {
            ArrayList arrayList3 = new ArrayList(arrayList2);
            Collections.reverse(arrayList3);
            arrayList.addAll(arrayList3);
        }
        ArrayList arrayList4 = this.d;
        if (!arrayList4.isEmpty()) {
            ArrayList arrayList5 = new ArrayList(arrayList4);
            Collections.reverse(arrayList5);
            arrayList.addAll(arrayList5);
        }
        boolean z = com.google.gson.internal.sql.a.a;
        xb8 xb8Var = null;
        int i = this.f;
        int i2 = this.g;
        if (i != 2 || i2 != 2) {
            xb8 xb8VarA3 = com.google.gson.internal.bind.a.b.a(i, i2);
            if (z) {
                xb8VarA2 = com.google.gson.internal.sql.a.c.a(i, i2);
                xb8VarA = com.google.gson.internal.sql.a.b.a(i, i2);
            } else {
                xb8VarA = null;
                xb8VarA2 = null;
            }
            arrayList.add(xb8VarA3);
            if (z) {
                arrayList.add(xb8VarA2);
                arrayList.add(xb8VarA);
            }
        }
        arrayList.add(b.r);
        arrayList.add(b.g);
        arrayList.add(b.d);
        arrayList.add(b.e);
        arrayList.add(b.f);
        com.google.gson.b bVar = b.k;
        arrayList.add(b.g(Long.TYPE, Long.class, bVar));
        arrayList.add(b.g(Double.TYPE, Double.class, b.m));
        arrayList.add(b.g(Float.TYPE, Float.class, b.l));
        int i3 = this.o;
        arrayList.add(i3 == 2 ? NumberTypeAdapter.b : NumberTypeAdapter.a(i3));
        arrayList.add(b.h);
        arrayList.add(b.i);
        arrayList.add(b.f(AtomicLong.class, b.c(bVar)));
        arrayList.add(b.f(AtomicLongArray.class, b.d(bVar)));
        arrayList.add(b.j);
        arrayList.add(b.n);
        arrayList.add(b.s);
        arrayList.add(b.t);
        arrayList.add(b.o);
        arrayList.add(b.p);
        arrayList.add(b.q);
        arrayList.add(b.u);
        arrayList.add(b.v);
        arrayList.add(b.x);
        arrayList.add(b.y);
        arrayList.add(b.A);
        arrayList.add(b.w);
        arrayList.add(b.b);
        arrayList.add(DefaultDateTypeAdapter.c);
        arrayList.add(b.z);
        try {
            com.google.gson.b bVar2 = JavaTimeTypeAdapters.a;
            ((JavaTimeTypeAdapters) ((ac8) JavaTimeTypeAdapters.class.getDeclaredConstructor(null).newInstance(null))).getClass();
            xb8Var = JavaTimeTypeAdapters.j;
        } catch (LinkageError | ReflectiveOperationException unused) {
        }
        if (xb8Var != null) {
            arrayList.add(xb8Var);
        }
        arrayList.addAll(com.google.gson.internal.sql.a.d);
        arrayList.add(ArrayTypeAdapter.c);
        arrayList.add(b.a);
        arrayList.add(new CollectionTypeAdapterFactory(vt1Var));
        arrayList.add(new MapTypeAdapterFactory(vt1Var));
        arrayList.add(jsonAdapterAnnotationTypeAdapterFactory);
        arrayList.add(b.C);
        arrayList.add(new ReflectiveTypeAdapterFactory(vt1Var, this.m, this.a, jsonAdapterAnnotationTypeAdapterFactory, b(this.k)));
        arrayList.trimToSize();
        return Collections.unmodifiableList(arrayList);
    }

    public final void c(Object obj, Type type) {
        Objects.requireNonNull(type);
        Objects.requireNonNull(obj);
        boolean z = obj instanceof dm4;
        if (!z && !(obj instanceof pj4) && !(obj instanceof hd4) && !(obj instanceof com.google.gson.b)) {
            z5.d(obj.getClass().getName(), " does not implement any supported type adapter class or interface", "Class ");
            return;
        }
        if (type == Object.class) {
            g84.k(type, "Cannot override built-in adapter for ");
            return;
        }
        if (obj instanceof hd4) {
            this.b.put(type, (hd4) obj);
        }
        ArrayList arrayList = this.c;
        if (z || (obj instanceof pj4)) {
            arrayList.add(TreeTypeAdapter.b(TypeToken.get(type), obj));
        }
        if (obj instanceof com.google.gson.b) {
            arrayList.add(b.e((com.google.gson.b) obj, TypeToken.get(type)));
        }
    }

    public t14() {
        this.a = Excluder.d;
        this.l = 1;
        this.m = u;
        this.b = new HashMap();
        this.c = new ArrayList();
        this.d = new ArrayList();
        this.e = false;
        this.f = 2;
        this.g = 2;
        this.h = true;
        this.i = p;
        this.j = true;
        this.n = v;
        this.o = w;
        this.k = new ArrayDeque();
    }
}
