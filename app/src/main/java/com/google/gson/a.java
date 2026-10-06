package com.google.gson;

import com.google.gson.internal.Excluder;
import com.google.gson.internal.bind.JsonAdapterAnnotationTypeAdapterFactory;
import com.google.gson.internal.bind.JsonElementTypeAdapter;
import com.google.gson.reflect.TypeToken;
import defpackage.el4;
import defpackage.g84;
import defpackage.ik4;
import defpackage.k55;
import defpackage.km4;
import defpackage.m55;
import defpackage.nn4;
import defpackage.qj4;
import defpackage.qp7;
import defpackage.ri4;
import defpackage.t14;
import defpackage.tl4;
import defpackage.vt1;
import defpackage.xb8;
import defpackage.xq3;
import java.io.EOFException;
import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java.io.Writer;
import java.lang.reflect.Type;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class a {
    public final ThreadLocal a;
    public final ConcurrentHashMap b;
    public final vt1 c;
    public final JsonAdapterAnnotationTypeAdapterFactory d;
    public final List e;
    public final Excluder f;
    public final int g;
    public final HashMap h;
    public final boolean i;
    public final boolean j;
    public final xq3 k;
    public final boolean l;
    public final int m;
    public final int n;
    public final int o;
    public final List p;
    public final List q;
    public final int r;
    public final int s;
    public final List t;

    public a(t14 t14Var) {
        this.a = new ThreadLocal();
        this.b = new ConcurrentHashMap();
        this.f = t14Var.a;
        this.g = t14Var.m;
        HashMap map = new HashMap(t14Var.b);
        this.h = map;
        this.i = t14Var.e;
        this.j = t14Var.h;
        this.k = t14Var.i;
        boolean z = t14Var.j;
        this.l = z;
        this.o = t14Var.l;
        this.m = t14Var.f;
        this.n = t14Var.g;
        this.p = t14.b(t14Var.c);
        this.q = t14.b(t14Var.d);
        this.r = t14Var.n;
        this.s = t14Var.o;
        List listB = t14.b(t14Var.k);
        this.t = listB;
        if (t14Var == t14.s) {
            this.c = t14.q;
            this.d = t14.r;
            this.e = t14.t;
        } else {
            vt1 vt1Var = new vt1(map, z, listB);
            this.c = vt1Var;
            JsonAdapterAnnotationTypeAdapterFactory jsonAdapterAnnotationTypeAdapterFactory = new JsonAdapterAnnotationTypeAdapterFactory(vt1Var);
            this.d = jsonAdapterAnnotationTypeAdapterFactory;
            this.e = t14Var.a(vt1Var, jsonAdapterAnnotationTypeAdapterFactory);
        }
    }

    public final Object a(tl4 tl4Var, TypeToken typeToken) {
        int strictness = tl4Var.getStrictness();
        boolean z = true;
        if (tl4Var.getStrictness() == 2) {
            tl4Var.setStrictness(1);
        }
        try {
            try {
                try {
                    tl4Var.peek();
                    z = false;
                    b bVarD = d(typeToken);
                    Object obj = bVarD.read(tl4Var);
                    Class clsJ = k55.J(typeToken.getRawType());
                    if (obj != null && !clsJ.isInstance(obj)) {
                        throw new ClassCastException("Type adapter '" + bVarD + "' returned wrong type; requested " + typeToken.getRawType() + " but got instance of " + obj.getClass() + "\nVerify that the adapter was registered for the correct type.");
                    }
                    tl4Var.setStrictness(strictness);
                    return obj;
                } catch (IOException e) {
                    throw new km4(e);
                } catch (IllegalStateException e2) {
                    throw new km4(e2);
                }
            } catch (EOFException e3) {
                if (!z) {
                    throw new km4(e3);
                }
                tl4Var.setStrictness(strictness);
                return null;
            } catch (AssertionError e4) {
                throw new AssertionError("AssertionError (GSON 2.14.0): " + e4.getMessage(), e4);
            }
        } catch (Throwable th) {
            tl4Var.setStrictness(strictness);
            throw th;
        }
    }

    public final Object b(Reader reader, TypeToken typeToken) {
        tl4 tl4Var = new tl4(reader);
        tl4Var.setStrictness(2);
        Object objA = a(tl4Var, typeToken);
        if (objA != null) {
            try {
                if (tl4Var.peek() != 10) {
                    throw new km4("JSON document was not fully consumed.");
                }
            } catch (m55 e) {
                throw new km4(e);
            } catch (IOException e2) {
                throw new ik4(e2);
            }
        }
        return objA;
    }

    public final Object c(String str, Class cls) {
        TypeToken typeToken = TypeToken.get(cls);
        if (str == null) {
            return null;
        }
        return b(new StringReader(str), typeToken);
    }

    public final b d(TypeToken typeToken) {
        boolean z;
        Objects.requireNonNull(typeToken, "type must not be null");
        ConcurrentHashMap concurrentHashMap = this.b;
        b bVar = (b) concurrentHashMap.get(typeToken);
        if (bVar != null) {
            return bVar;
        }
        ThreadLocal threadLocal = this.a;
        Map map = (Map) threadLocal.get();
        if (map == null) {
            map = new HashMap();
            threadLocal.set(map);
            z = true;
        } else {
            b bVar2 = (b) map.get(typeToken);
            if (bVar2 != null) {
                return bVar2;
            }
            z = false;
        }
        try {
            Gson$FutureTypeAdapter gson$FutureTypeAdapter = new Gson$FutureTypeAdapter();
            map.put(typeToken, gson$FutureTypeAdapter);
            Iterator it = this.e.iterator();
            b bVarCreate = null;
            while (it.hasNext()) {
                bVarCreate = ((xb8) it.next()).create(this, typeToken);
                if (bVarCreate != null) {
                    if (gson$FutureTypeAdapter.a != null) {
                        throw new AssertionError("Delegate is already set");
                    }
                    gson$FutureTypeAdapter.a = bVarCreate;
                    map.put(typeToken, bVarCreate);
                    break;
                }
            }
            if (z) {
                threadLocal.remove();
            }
            if (bVarCreate == null) {
                g84.k(typeToken, "GSON (2.14.0) cannot handle ");
                return null;
            }
            if (z) {
                concurrentHashMap.putAll(map);
            }
            return bVarCreate;
        } catch (Throwable th) {
            if (z) {
                threadLocal.remove();
            }
            throw th;
        }
    }

    public final b e(Class cls) {
        return d(TypeToken.get(cls));
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0059  */
    public final b f(xb8 xb8Var, TypeToken typeToken) {
        Objects.requireNonNull(xb8Var, "skipPast must not be null");
        Objects.requireNonNull(typeToken, "type must not be null");
        JsonAdapterAnnotationTypeAdapterFactory jsonAdapterAnnotationTypeAdapterFactory = this.d;
        jsonAdapterAnnotationTypeAdapterFactory.getClass();
        ConcurrentHashMap concurrentHashMap = jsonAdapterAnnotationTypeAdapterFactory.b;
        if (xb8Var == JsonAdapterAnnotationTypeAdapterFactory.c) {
            xb8Var = jsonAdapterAnnotationTypeAdapterFactory;
        } else {
            Class rawType = typeToken.getRawType();
            xb8 xb8Var2 = (xb8) concurrentHashMap.get(rawType);
            if (xb8Var2 == null) {
                ri4 ri4Var = (ri4) rawType.getAnnotation(ri4.class);
                if (ri4Var != null) {
                    Class clsValue = ri4Var.value();
                    if (xb8.class.isAssignableFrom(clsValue)) {
                        xb8 xb8Var3 = (xb8) jsonAdapterAnnotationTypeAdapterFactory.a.b(TypeToken.get(clsValue), true).construct();
                        xb8 xb8Var4 = (xb8) concurrentHashMap.putIfAbsent(rawType, xb8Var3);
                        if (xb8Var4 != null) {
                            xb8Var3 = xb8Var4;
                        }
                        if (xb8Var3 == xb8Var) {
                            xb8Var = jsonAdapterAnnotationTypeAdapterFactory;
                        }
                    }
                }
            } else if (xb8Var2 == xb8Var) {
                xb8Var = jsonAdapterAnnotationTypeAdapterFactory;
            }
        }
        boolean z = false;
        for (xb8 xb8Var5 : this.e) {
            if (z) {
                b bVarCreate = xb8Var5.create(this, typeToken);
                if (bVarCreate != null) {
                    return bVarCreate;
                }
            } else if (xb8Var5 == xb8Var) {
                z = true;
            }
        }
        if (!z) {
            return d(typeToken);
        }
        g84.k(typeToken, "GSON cannot serialize or deserialize ");
        return null;
    }

    public final nn4 g(Writer writer) {
        nn4 nn4Var = new nn4(writer);
        nn4Var.v(this.k);
        nn4Var.p = this.j;
        nn4Var.z(2);
        nn4Var.r = this.i;
        return nn4Var;
    }

    public final String h(qj4 qj4Var) {
        StringBuilder sb = new StringBuilder();
        try {
            k(qj4Var, g(new qp7(sb)));
            return sb.toString();
        } catch (IOException e) {
            throw new ik4(e);
        }
    }

    public final String i(Object obj) {
        return obj == null ? h(el4.a) : j(obj, obj.getClass());
    }

    public final String j(Object obj, Type type) {
        StringBuilder sb = new StringBuilder();
        try {
            l(obj, type, g(new qp7(sb)));
            return sb.toString();
        } catch (IOException e) {
            throw new ik4(e);
        }
    }

    public final void k(qj4 qj4Var, nn4 nn4Var) {
        int i = nn4Var.n;
        boolean z = nn4Var.p;
        boolean z2 = nn4Var.r;
        nn4Var.p = this.j;
        nn4Var.r = this.i;
        if (i == 2) {
            nn4Var.n = 1;
        }
        try {
            try {
                JsonElementTypeAdapter.a.getClass();
                JsonElementTypeAdapter.c(qj4Var, nn4Var);
                nn4Var.z(i);
                nn4Var.p = z;
                nn4Var.r = z2;
            } catch (IOException e) {
                throw new ik4(e);
            } catch (AssertionError e2) {
                throw new AssertionError("AssertionError (GSON 2.14.0): " + e2.getMessage(), e2);
            }
        } catch (Throwable th) {
            nn4Var.z(i);
            nn4Var.p = z;
            nn4Var.r = z2;
            throw th;
        }
    }

    public final void l(Object obj, Type type, nn4 nn4Var) {
        b bVarD = d(TypeToken.get(type));
        int i = nn4Var.n;
        if (i == 2) {
            nn4Var.n = 1;
        }
        boolean z = nn4Var.p;
        boolean z2 = nn4Var.r;
        nn4Var.p = this.j;
        nn4Var.r = this.i;
        try {
            try {
                bVarD.write(nn4Var, obj);
                nn4Var.z(i);
                nn4Var.p = z;
                nn4Var.r = z2;
            } catch (IOException e) {
                throw new ik4(e);
            } catch (AssertionError e2) {
                throw new AssertionError("AssertionError (GSON 2.14.0): " + e2.getMessage(), e2);
            }
        } catch (Throwable th) {
            nn4Var.z(i);
            nn4Var.p = z;
            nn4Var.r = z2;
            throw th;
        }
    }

    public final String toString() {
        return "{serializeNulls:" + this.i + ",factories:" + this.e + ",instanceCreators:" + this.c + "}";
    }

    public a() {
        this(t14.s);
    }
}
