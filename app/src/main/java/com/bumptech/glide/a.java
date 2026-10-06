package com.bumptech.glide;

import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.text.TextUtils;
import android.util.Log;
import defpackage.ac5;
import defpackage.bb2;
import defpackage.bb9;
import defpackage.bc5;
import defpackage.c6;
import defpackage.dy3;
import defpackage.e6;
import defpackage.eq3;
import defpackage.fu;
import defpackage.ge;
import defpackage.hy3;
import defpackage.iy3;
import defpackage.jy3;
import defpackage.k50;
import defpackage.ky3;
import defpackage.m35;
import defpackage.ms8;
import defpackage.n35;
import defpackage.ni6;
import defpackage.nr0;
import defpackage.ns0;
import defpackage.q35;
import defpackage.us2;
import defpackage.x13;
import defpackage.xh8;
import defpackage.yk6;
import defpackage.yx3;
import defpackage.zk6;
import defpackage.zw2;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class a implements ComponentCallbacks2 {
    public static volatile a n;
    public static volatile boolean p;
    public final nr0 a;
    public final q35 b;
    public final dy3 c;
    public final m35 d;
    public final zk6 e;
    public final us2 f;
    public final ArrayList k = new ArrayList();

    public a(Context context, zw2 zw2Var, q35 q35Var, nr0 nr0Var, m35 m35Var, zk6 zk6Var, us2 us2Var, int i, us2 us2Var2, k50 k50Var, List list, List list2, x13 x13Var, ky3 ky3Var) {
        this.a = nr0Var;
        this.d = m35Var;
        this.b = q35Var;
        this.e = zk6Var;
        this.f = us2Var;
        this.c = new dy3(context, m35Var, new ni6(this, list2, x13Var), new ns0(10), us2Var2, k50Var, list, zw2Var, ky3Var, i);
    }

    public static a a(Context context) {
        if (n == null) {
            GeneratedAppGlideModule generatedAppGlideModule = null;
            try {
                generatedAppGlideModule = (GeneratedAppGlideModule) GeneratedAppGlideModuleImpl.class.getDeclaredConstructor(Context.class).newInstance(context.getApplicationContext().getApplicationContext());
            } catch (ClassNotFoundException unused) {
                if (Log.isLoggable("Glide", 5)) {
                    Log.w("Glide", "Failed to find GeneratedAppGlideModule. You should include an annotationProcessor compile dependency on com.github.bumptech.glide:compiler in your application and a @GlideModule annotated AppGlideModule implementation or LibraryGlideModules will be silently ignored");
                }
            } catch (IllegalAccessException e) {
                e6.j("GeneratedAppGlideModuleImpl is implemented incorrectly. If you've manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation.", e);
                return null;
            } catch (InstantiationException e2) {
                e6.j("GeneratedAppGlideModuleImpl is implemented incorrectly. If you've manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation.", e2);
                return null;
            } catch (NoSuchMethodException e3) {
                e6.j("GeneratedAppGlideModuleImpl is implemented incorrectly. If you've manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation.", e3);
                return null;
            } catch (InvocationTargetException e4) {
                e6.j("GeneratedAppGlideModuleImpl is implemented incorrectly. If you've manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation.", e4);
                return null;
            }
            synchronized (a.class) {
                if (n == null) {
                    if (p) {
                        throw new IllegalStateException("Glide has been called recursively, this is probably an internal library error!");
                    }
                    p = true;
                    try {
                        b(context, generatedAppGlideModule);
                        p = false;
                    } catch (Throwable th) {
                        p = false;
                        throw th;
                    }
                }
            }
        }
        return n;
    }

    public static void b(Context context, GeneratedAppGlideModule generatedAppGlideModule) {
        List list;
        yx3 yx3Var = new yx3();
        Context applicationContext = context.getApplicationContext();
        List list2 = Collections.EMPTY_LIST;
        if (generatedAppGlideModule == null || !(generatedAppGlideModule instanceof GeneratedAppGlideModuleImpl)) {
            if (Log.isLoggable("ManifestParser", 3)) {
                Log.d("ManifestParser", "Loading Glide modules");
            }
            ArrayList arrayList = new ArrayList();
            try {
                ApplicationInfo applicationInfo = applicationContext.getPackageManager().getApplicationInfo(applicationContext.getPackageName(), 128);
                if (applicationInfo != null && applicationInfo.metaData != null) {
                    if (Log.isLoggable("ManifestParser", 2)) {
                        Log.v("ManifestParser", "Got app info metadata: " + applicationInfo.metaData);
                    }
                    for (String str : applicationInfo.metaData.keySet()) {
                        if ("GlideModule".equals(applicationInfo.metaData.get(str))) {
                            bb9.F(str);
                            throw null;
                        }
                    }
                    if (Log.isLoggable("ManifestParser", 3)) {
                        Log.d("ManifestParser", "Finished loading Glide modules");
                    }
                } else if (Log.isLoggable("ManifestParser", 3)) {
                    Log.d("ManifestParser", "Got null app info metadata");
                }
            } catch (PackageManager.NameNotFoundException e) {
                if (Log.isLoggable("ManifestParser", 6)) {
                    Log.e("ManifestParser", "Failed to parse glide modules", e);
                }
            }
            list = arrayList;
        } else {
            list = list2;
        }
        if (generatedAppGlideModule != null && !new HashSet().isEmpty()) {
            new HashSet();
            Iterator it = list.iterator();
            if (it.hasNext()) {
                throw eq3.h(it);
            }
        }
        if (Log.isLoggable("Glide", 3)) {
            Iterator it2 = list.iterator();
            if (it2.hasNext()) {
                throw eq3.h(it2);
            }
        }
        Iterator it3 = list.iterator();
        if (it3.hasNext()) {
            throw eq3.h(it3);
        }
        if (generatedAppGlideModule != null) {
            generatedAppGlideModule.b(applicationContext, yx3Var);
        }
        if (yx3Var.g == null) {
            hy3 hy3Var = new hy3();
            if (jy3.b == 0) {
                jy3.b = Math.min(4, Runtime.getRuntime().availableProcessors());
            }
            int i = jy3.b;
            if (TextUtils.isEmpty("source")) {
                c6.f("Name must be non-null and non-empty, but given: source");
                return;
            }
            yx3Var.g = new jy3(new ThreadPoolExecutor(i, i, 0L, TimeUnit.MILLISECONDS, new PriorityBlockingQueue(), new iy3(hy3Var, "source", false)));
        }
        if (yx3Var.h == null) {
            hy3 hy3Var2 = new hy3();
            if (TextUtils.isEmpty("disk-cache")) {
                c6.f("Name must be non-null and non-empty, but given: disk-cache");
                return;
            }
            yx3Var.h = new jy3(new ThreadPoolExecutor(1, 1, 0L, TimeUnit.MILLISECONDS, new PriorityBlockingQueue(), new iy3(hy3Var2, "disk-cache", true)));
        }
        if (yx3Var.n == null) {
            if (jy3.b == 0) {
                jy3.b = Math.min(4, Runtime.getRuntime().availableProcessors());
            }
            int i2 = jy3.b >= 4 ? 2 : 1;
            hy3 hy3Var3 = new hy3();
            if (TextUtils.isEmpty("animation")) {
                c6.f("Name must be non-null and non-empty, but given: animation");
                return;
            }
            yx3Var.n = new jy3(new ThreadPoolExecutor(i2, i2, 0L, TimeUnit.MILLISECONDS, new PriorityBlockingQueue(), new iy3(hy3Var3, "animation", true)));
        }
        if (yx3Var.j == null) {
            yx3Var.j = new bc5(new ac5(applicationContext));
        }
        if (yx3Var.k == null) {
            yx3Var.k = new us2(10);
        }
        if (yx3Var.d == null) {
            int i3 = yx3Var.j.a;
            if (i3 > 0) {
                yx3Var.d = new n35(i3);
            } else {
                yx3Var.d = new ge();
            }
        }
        if (yx3Var.e == null) {
            yx3Var.e = new m35(yx3Var.j.c);
        }
        if (yx3Var.f == null) {
            yx3Var.f = new q35(yx3Var.j.b);
        }
        if (yx3Var.i == null) {
            yx3Var.i = new fu(applicationContext);
        }
        if (yx3Var.c == null) {
            yx3Var.c = new zw2(yx3Var.f, yx3Var.i, yx3Var.h, yx3Var.g, new jy3(new ThreadPoolExecutor(0, Integer.MAX_VALUE, 10000L, TimeUnit.MILLISECONDS, new SynchronousQueue(), new iy3(new hy3(), "source-unlimited", false))), yx3Var.n);
        }
        List list3 = yx3Var.o;
        if (list3 == null) {
            yx3Var.o = Collections.EMPTY_LIST;
        } else {
            yx3Var.o = Collections.unmodifiableList(list3);
        }
        bb2 bb2Var = yx3Var.b;
        bb2Var.getClass();
        a aVar = new a(applicationContext, yx3Var.c, yx3Var.f, yx3Var.d, yx3Var.e, new zk6(), yx3Var.k, yx3Var.l, yx3Var.m, yx3Var.a, yx3Var.o, list, generatedAppGlideModule, new ky3(bb2Var));
        applicationContext.registerComponentCallbacks(aVar);
        n = aVar;
    }

    public static yk6 c(Context context) {
        ms8.j(context, "You cannot start a load on a not yet attached View or a Fragment where getActivity() returns null (which usually occurs when getActivity() is called before the Fragment is attached or after the Fragment is destroyed).");
        return a(context).e.c(context);
    }

    @Override // android.content.ComponentCallbacks
    public final void onLowMemory() {
        xh8.c();
        this.b.e(0L);
        this.a.o();
        m35 m35Var = this.d;
        synchronized (m35Var) {
            m35Var.b(0);
        }
    }

    @Override // android.content.ComponentCallbacks2
    public final void onTrimMemory(int i) {
        long j;
        xh8.c();
        synchronized (this.k) {
            try {
                Iterator it = this.k.iterator();
                while (it.hasNext()) {
                    ((yk6) it.next()).getClass();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        q35 q35Var = this.b;
        q35Var.getClass();
        if (i >= 40) {
            q35Var.e(0L);
        } else if (i >= 20 || i == 15) {
            synchronized (q35Var) {
                j = q35Var.a;
            }
            q35Var.e(j / 2);
        }
        this.a.l(i);
        m35 m35Var = this.d;
        synchronized (m35Var) {
            try {
                if (i >= 40) {
                    synchronized (m35Var) {
                        m35Var.b(0);
                    }
                } else if (i >= 20 || i == 15) {
                    m35Var.b(m35Var.e / 2);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
    }
}
