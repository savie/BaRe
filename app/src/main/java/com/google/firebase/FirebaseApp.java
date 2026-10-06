package com.google.firebase;

import android.app.Application;
import android.content.ComponentName;
import android.content.Context;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
import android.os.Bundle;
import android.os.Trace;
import android.os.UserManager;
import android.text.TextUtils;
import android.util.Log;
import com.google.firebase.components.ComponentDiscoveryService;
import com.google.firebase.components.ComponentRegistrar;
import com.google.firebase.concurrent.ExecutorsRegistrar;
import defpackage.cf;
import defpackage.ck0;
import defpackage.cy0;
import defpackage.ga6;
import defpackage.gf3;
import defpackage.hf3;
import defpackage.hx0;
import defpackage.ib;
import defpackage.ie0;
import defpackage.j97;
import defpackage.k50;
import defpackage.kd8;
import defpackage.la2;
import defpackage.lg3;
import defpackage.ly8;
import defpackage.ne2;
import defpackage.ps4;
import defpackage.rb6;
import defpackage.to1;
import defpackage.un1;
import defpackage.wg3;
import java.lang.reflect.InvocationTargetException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class FirebaseApp {
    public static final String DEFAULT_APP_NAME = "[DEFAULT]";
    private static final String LOG_TAG = "FirebaseApp";
    private final Context applicationContext;
    private final to1 componentRuntime;
    private final ps4 dataCollectionConfigStorage;
    private final ga6 defaultHeartBeatController;
    private final String name;
    private final FirebaseOptions options;
    private static final Object LOCK = new Object();
    static final Map<String, FirebaseApp> INSTANCES = new k50(0);
    private final AtomicBoolean automaticResourceManagementEnabled = new AtomicBoolean(false);
    private final AtomicBoolean deleted = new AtomicBoolean();
    private final List<gf3> backgroundStateChangeListeners = new CopyOnWriteArrayList();
    private final List<hf3> lifecycleListeners = new CopyOnWriteArrayList();

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v13, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v6, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r0v7, types: [java.util.List] */
    public FirebaseApp(final Context context, String str, FirebaseOptions firebaseOptions) {
        ?? arrayList;
        ly8.h(context);
        this.applicationContext = context;
        ly8.e(str);
        this.name = str;
        ly8.h(firebaseOptions);
        this.options = firebaseOptions;
        ie0 ie0Var = lg3.a;
        Trace.beginSection("Firebase");
        Trace.beginSection("ComponentDiscovery");
        ArrayList arrayList2 = new ArrayList();
        Bundle bundle = null;
        try {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager == null) {
                Log.w("ComponentDiscovery", "Context has no PackageManager.");
            } else {
                ServiceInfo serviceInfo = packageManager.getServiceInfo(new ComponentName(context, (Class<?>) ComponentDiscoveryService.class), 128);
                if (serviceInfo == null) {
                    Log.w("ComponentDiscovery", ComponentDiscoveryService.class + " has no service info.");
                } else {
                    bundle = serviceInfo.metaData;
                }
            }
        } catch (PackageManager.NameNotFoundException unused) {
            Log.w("ComponentDiscovery", "Application info not found.");
        }
        if (bundle == null) {
            Log.w("ComponentDiscovery", "Could not retrieve metadata, returning empty list of registrars.");
            arrayList = Collections.EMPTY_LIST;
        } else {
            arrayList = new ArrayList();
            for (String str2 : bundle.keySet()) {
                if ("com.google.firebase.components.ComponentRegistrar".equals(bundle.get(str2)) && str2.startsWith("com.google.firebase.components:")) {
                    arrayList.add(str2.substring(31));
                }
            }
        }
        for (final String str3 : arrayList) {
            arrayList2.add(new ga6() { // from class: lo1
                @Override // defpackage.ga6
                public final Object get() {
                    String str4 = str3;
                    try {
                        Class<?> cls = Class.forName(str4);
                        if (ComponentRegistrar.class.isAssignableFrom(cls)) {
                            return (ComponentRegistrar) cls.getDeclaredConstructor(null).newInstance(null);
                        }
                        throw new gg4("Class " + str4 + " is not an instance of com.google.firebase.components.ComponentRegistrar");
                    } catch (ClassNotFoundException unused2) {
                        Log.w("ComponentDiscovery", "Class " + str4 + " is not an found.");
                        return null;
                    } catch (IllegalAccessException e) {
                        throw new gg4(eq3.k("Could not instantiate ", str4, "."), e);
                    } catch (InstantiationException e2) {
                        throw new gg4(eq3.k("Could not instantiate ", str4, "."), e2);
                    } catch (NoSuchMethodException e3) {
                        throw new gg4(xs1.j("Could not instantiate ", str4), e3);
                    } catch (InvocationTargetException e4) {
                        throw new gg4(xs1.j("Could not instantiate ", str4), e4);
                    }
                }
            });
        }
        Trace.endSection();
        Trace.beginSection("Runtime");
        kd8 kd8Var = kd8.a;
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        arrayList3.addAll(arrayList2);
        final FirebaseCommonRegistrar firebaseCommonRegistrar = new FirebaseCommonRegistrar();
        arrayList3.add(new ga6() { // from class: so1
            @Override // defpackage.ga6
            public final Object get() {
                return firebaseCommonRegistrar;
            }
        });
        final ExecutorsRegistrar executorsRegistrar = new ExecutorsRegistrar();
        arrayList3.add(new ga6() { // from class: so1
            @Override // defpackage.ga6
            public final Object get() {
                return executorsRegistrar;
            }
        });
        arrayList4.add(un1.c(context, Context.class, new Class[0]));
        arrayList4.add(un1.c(this, FirebaseApp.class, new Class[0]));
        arrayList4.add(un1.c(firebaseOptions, FirebaseOptions.class, new Class[0]));
        hx0 hx0Var = new hx0(4);
        if (((UserManager) context.getSystemService(UserManager.class)).isUserUnlocked() && lg3.b.get()) {
            arrayList4.add(un1.c(ie0Var, ie0.class, new Class[0]));
        }
        to1 to1Var = new to1(arrayList3, arrayList4, hx0Var);
        this.componentRuntime = to1Var;
        Trace.endSection();
        this.dataCollectionConfigStorage = new ps4(new ga6() { // from class: ef3
            @Override // defpackage.ga6
            public final Object get() {
                return this.a.lambda$new$0(context);
            }
        });
        this.defaultHeartBeatController = to1Var.c(ne2.class);
        addBackgroundStateChangeListener(new gf3() { // from class: ff3
            @Override // defpackage.gf3
            public final void a(boolean z) {
                this.a.lambda$new$1(z);
            }
        });
        Trace.endSection();
    }

    private void checkNotDeleted() {
        ly8.k("FirebaseApp was deleted", !this.deleted.get());
    }

    public static void clearInstancesForTest() {
        synchronized (LOCK) {
            INSTANCES.clear();
        }
    }

    private static List<String> getAllAppNames() {
        ArrayList arrayList = new ArrayList();
        synchronized (LOCK) {
            try {
                Iterator<FirebaseApp> it = INSTANCES.values().iterator();
                while (it.hasNext()) {
                    arrayList.add(it.next().getName());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        Collections.sort(arrayList);
        return arrayList;
    }

    public static List<FirebaseApp> getApps(Context context) {
        ArrayList arrayList;
        synchronized (LOCK) {
            arrayList = new ArrayList(INSTANCES.values());
        }
        return arrayList;
    }

    public static FirebaseApp getInstance(String str) {
        FirebaseApp firebaseApp;
        String str2;
        synchronized (LOCK) {
            try {
                firebaseApp = INSTANCES.get(normalize(str));
                if (firebaseApp == null) {
                    List<String> allAppNames = getAllAppNames();
                    if (allAppNames.isEmpty()) {
                        str2 = "";
                    } else {
                        str2 = "Available app names: " + TextUtils.join(", ", allAppNames);
                    }
                    throw new IllegalStateException("FirebaseApp with name " + str + " doesn't exist. " + str2);
                }
                ((ne2) firebaseApp.defaultHeartBeatController.get()).a();
            } catch (Throwable th) {
                throw th;
            }
        }
        return firebaseApp;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initializeAllApis() {
        HashMap map;
        if (!((UserManager) this.applicationContext.getSystemService(UserManager.class)).isUserUnlocked()) {
            Log.i(LOG_TAG, "Device in Direct Boot Mode: postponing initialization of Firebase APIs for app " + getName());
            Context context = this.applicationContext;
            AtomicReference atomicReference = b.b;
            if (atomicReference.get() == null) {
                b bVar = new b(context);
                while (!atomicReference.compareAndSet(null, bVar)) {
                    if (atomicReference.get() != null) {
                        return;
                    }
                }
                context.registerReceiver(bVar, new IntentFilter("android.intent.action.USER_UNLOCKED"));
                return;
            }
            return;
        }
        Log.i(LOG_TAG, "Device unlocked: initializing all Firebase APIs for app " + getName());
        to1 to1Var = this.componentRuntime;
        boolean zIsDefaultApp = isDefaultApp();
        AtomicReference atomicReference2 = to1Var.f;
        Boolean boolValueOf = Boolean.valueOf(zIsDefaultApp);
        while (!atomicReference2.compareAndSet(null, boolValueOf)) {
            if (atomicReference2.get() != null) {
                ((ne2) this.defaultHeartBeatController.get()).a();
            }
        }
        synchronized (to1Var) {
            map = new HashMap(to1Var.a);
        }
        to1Var.i(map, zIsDefaultApp);
        ((ne2) this.defaultHeartBeatController.get()).a();
    }

    public static FirebaseApp initializeApp(Context context, FirebaseOptions firebaseOptions, String str) {
        FirebaseApp firebaseApp;
        AtomicReference atomicReference = a.a;
        if (context.getApplicationContext() instanceof Application) {
            Application application = (Application) context.getApplicationContext();
            AtomicReference atomicReference2 = a.a;
            if (atomicReference2.get() == null) {
                a aVar = new a();
                do {
                    if (atomicReference2.compareAndSet(null, aVar)) {
                        ck0.b(application);
                        ck0.e.a(aVar);
                        break;
                    }
                } while (atomicReference2.get() == null);
            }
        }
        String strNormalize = normalize(str);
        if (context.getApplicationContext() != null) {
            context = context.getApplicationContext();
        }
        synchronized (LOCK) {
            Map<String, FirebaseApp> map = INSTANCES;
            ly8.k("FirebaseApp name " + strNormalize + " already exists!", !map.containsKey(strNormalize));
            ly8.i(context, "Application context cannot be null.");
            firebaseApp = new FirebaseApp(context, strNormalize, firebaseOptions);
            map.put(strNormalize, firebaseApp);
        }
        firebaseApp.initializeAllApis();
        return firebaseApp;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ la2 lambda$new$0(Context context) {
        return new la2(context, getPersistenceKey(), (rb6) this.componentRuntime.b(rb6.class));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(boolean z) {
        if (z) {
            return;
        }
        ((ne2) this.defaultHeartBeatController.get()).a();
    }

    private static String normalize(String str) {
        return str.trim();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyBackgroundStateChangeListeners(boolean z) {
        Log.d(LOG_TAG, "Notifying background state change listeners.");
        Iterator<gf3> it = this.backgroundStateChangeListeners.iterator();
        while (it.hasNext()) {
            it.next().a(z);
        }
    }

    private void notifyOnAppDeleted() {
        Iterator<hf3> it = this.lifecycleListeners.iterator();
        while (it.hasNext()) {
            j97 j97Var = ((wg3) it.next()).a;
            Log.w("FirebaseSessions", "FirebaseApp instance deleted. Sessions library will stop collecting data.");
            j97Var.b = false;
        }
    }

    public void addBackgroundStateChangeListener(gf3 gf3Var) {
        checkNotDeleted();
        if (this.automaticResourceManagementEnabled.get() && ck0.e.a.get()) {
            gf3Var.a(true);
        }
        this.backgroundStateChangeListeners.add(gf3Var);
    }

    public void addLifecycleEventListener(hf3 hf3Var) {
        checkNotDeleted();
        ly8.h(hf3Var);
        this.lifecycleListeners.add(hf3Var);
    }

    public void delete() {
        if (this.deleted.compareAndSet(false, true)) {
            synchronized (LOCK) {
                INSTANCES.remove(this.name);
            }
            notifyOnAppDeleted();
        }
    }

    public boolean equals(Object obj) {
        if (obj instanceof FirebaseApp) {
            return this.name.equals(((FirebaseApp) obj).getName());
        }
        return false;
    }

    public <T> T get(Class<T> cls) {
        checkNotDeleted();
        return (T) this.componentRuntime.b(cls);
    }

    public Context getApplicationContext() {
        checkNotDeleted();
        return this.applicationContext;
    }

    public String getName() {
        checkNotDeleted();
        return this.name;
    }

    public FirebaseOptions getOptions() {
        checkNotDeleted();
        return this.options;
    }

    public String getPersistenceKey() {
        return cy0.t(getName().getBytes(Charset.defaultCharset())) + "+" + cy0.t(getOptions().getApplicationId().getBytes(Charset.defaultCharset()));
    }

    public int hashCode() {
        return this.name.hashCode();
    }

    public void initializeAllComponents() {
        Iterator it = this.componentRuntime.a.values().iterator();
        while (it.hasNext()) {
            ((ga6) it.next()).get();
        }
    }

    public boolean isDataCollectionDefaultEnabled() {
        boolean z;
        checkNotDeleted();
        la2 la2Var = (la2) this.dataCollectionConfigStorage.get();
        synchronized (la2Var) {
            z = la2Var.d;
        }
        return z;
    }

    public boolean isDefaultApp() {
        return DEFAULT_APP_NAME.equals(getName());
    }

    public void removeBackgroundStateChangeListener(gf3 gf3Var) {
        checkNotDeleted();
        this.backgroundStateChangeListeners.remove(gf3Var);
    }

    public void removeLifecycleEventListener(hf3 hf3Var) {
        checkNotDeleted();
        ly8.h(hf3Var);
        this.lifecycleListeners.remove(hf3Var);
    }

    public void setAutomaticResourceManagementEnabled(boolean z) {
        checkNotDeleted();
        if (this.automaticResourceManagementEnabled.compareAndSet(!z, z)) {
            boolean z2 = ck0.e.a.get();
            if (z && z2) {
                notifyBackgroundStateChangeListeners(true);
            } else {
                if (z || !z2) {
                    return;
                }
                notifyBackgroundStateChangeListeners(false);
            }
        }
    }

    public void setDataCollectionDefaultEnabled(Boolean bool) {
        checkNotDeleted();
        la2 la2Var = (la2) this.dataCollectionConfigStorage.get();
        synchronized (la2Var) {
            try {
                if (bool == null) {
                    la2Var.b.edit().remove("firebase_data_collection_default_enabled").apply();
                    la2Var.b(la2Var.a());
                } else {
                    boolean zEquals = Boolean.TRUE.equals(bool);
                    la2Var.b.edit().putBoolean("firebase_data_collection_default_enabled", zEquals).apply();
                    la2Var.b(zEquals);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public String toString() {
        ib ibVar = new ib(this);
        ibVar.b(this.name, "name");
        ibVar.b(this.options, "options");
        return ibVar.toString();
    }

    public static String getPersistenceKey(String str, FirebaseOptions firebaseOptions) {
        return cy0.t(str.getBytes(Charset.defaultCharset())) + "+" + cy0.t(firebaseOptions.getApplicationId().getBytes(Charset.defaultCharset()));
    }

    @Deprecated
    public void setDataCollectionDefaultEnabled(boolean z) {
        setDataCollectionDefaultEnabled(Boolean.valueOf(z));
    }

    public static FirebaseApp getInstance() {
        FirebaseApp firebaseApp;
        synchronized (LOCK) {
            try {
                firebaseApp = INSTANCES.get(DEFAULT_APP_NAME);
                if (firebaseApp == null) {
                    throw new IllegalStateException("Default FirebaseApp is not initialized in this process " + cf.e() + ". Make sure to call FirebaseApp.initializeApp(Context) first.");
                }
                ((ne2) firebaseApp.defaultHeartBeatController.get()).a();
            } catch (Throwable th) {
                throw th;
            }
        }
        return firebaseApp;
    }

    public static FirebaseApp initializeApp(Context context, FirebaseOptions firebaseOptions) {
        return initializeApp(context, firebaseOptions, DEFAULT_APP_NAME);
    }

    public static FirebaseApp initializeApp(Context context) {
        synchronized (LOCK) {
            try {
                if (INSTANCES.containsKey(DEFAULT_APP_NAME)) {
                    return getInstance();
                }
                FirebaseOptions firebaseOptionsFromResource = FirebaseOptions.fromResource(context);
                if (firebaseOptionsFromResource == null) {
                    Log.w(LOG_TAG, "Default FirebaseApp failed to initialize because no default options were found. This usually means that com.google.gms:google-services was not applied to your gradle project.");
                    return null;
                }
                return initializeApp(context, firebaseOptionsFromResource);
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
