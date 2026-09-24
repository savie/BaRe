package defpackage;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.net.URL;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.ServiceConfigurationError;
import java.util.ServiceLoader;
import java.util.concurrent.LinkedBlockingQueue;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class o15 {
    public static volatile int a;
    public static final ds7 b = new ds7();
    public static final sj5 c = new sj5();
    public static final boolean d;
    public static volatile or6 e;
    public static final String[] f;

    static {
        String property;
        try {
            property = System.getProperty("slf4j.detectLoggerNameMismatch");
        } catch (SecurityException unused) {
            property = null;
        }
        d = property == null ? false : property.equalsIgnoreCase("true");
        f = new String[]{"2.0"};
    }

    public static ArrayList a() {
        ArrayList arrayList = new ArrayList();
        final ClassLoader classLoader = o15.class.getClassLoader();
        String property = System.getProperty("slf4j.provider");
        or6 or6Var = null;
        if (property != null && !property.isEmpty()) {
            try {
                zh8.F("Attempting to load provider \"" + property + "\" specified via \"slf4j.provider\" system property");
                or6Var = (or6) classLoader.loadClass(property).getConstructor(null).newInstance(null);
            } catch (ClassCastException e2) {
                zh8.G("Specified SLF4JServiceProvider (" + property + ") does not implement SLF4JServiceProvider interface", e2);
            } catch (ClassNotFoundException e3) {
                e = e3;
                zh8.G("Failed to instantiate the specified SLF4JServiceProvider (" + property + ")", e);
            } catch (IllegalAccessException e4) {
                e = e4;
                zh8.G("Failed to instantiate the specified SLF4JServiceProvider (" + property + ")", e);
            } catch (InstantiationException e5) {
                e = e5;
                zh8.G("Failed to instantiate the specified SLF4JServiceProvider (" + property + ")", e);
            } catch (NoSuchMethodException e6) {
                e = e6;
                zh8.G("Failed to instantiate the specified SLF4JServiceProvider (" + property + ")", e);
            } catch (InvocationTargetException e7) {
                e = e7;
                zh8.G("Failed to instantiate the specified SLF4JServiceProvider (" + property + ")", e);
            }
        }
        if (or6Var != null) {
            arrayList.add(or6Var);
            return arrayList;
        }
        Iterator it = (System.getSecurityManager() == null ? ServiceLoader.load(or6.class, classLoader) : (ServiceLoader) AccessController.doPrivileged(new PrivilegedAction() { // from class: n15
            @Override // java.security.PrivilegedAction
            public final Object run() {
                return ServiceLoader.load(or6.class, classLoader);
            }
        })).iterator();
        while (it.hasNext()) {
            try {
                arrayList.add((or6) it.next());
            } catch (ServiceConfigurationError e8) {
                zh8.F("A SLF4J service provider failed to instantiate:\n" + e8.getMessage());
            }
        }
        return arrayList;
    }

    public static l15 b(Class cls) {
        int i;
        l15 l15VarC = c(cls.getName());
        if (d) {
            sh8 sh8Var = zh8.b;
            Class cls2 = null;
            if (sh8Var == null) {
                if (zh8.c) {
                    sh8Var = null;
                } else {
                    try {
                        sh8Var = new sh8();
                    } catch (SecurityException unused) {
                        sh8Var = null;
                    }
                    zh8.b = sh8Var;
                    zh8.c = true;
                }
            }
            if (sh8Var != null) {
                Class[] classContext = sh8Var.getClassContext();
                String name = zh8.class.getName();
                int i2 = 0;
                while (i2 < classContext.length && !name.equals(classContext[i2].getName())) {
                    i2++;
                }
                if (i2 >= classContext.length || (i = i2 + 2) >= classContext.length) {
                    l0.e("Failed to find org.slf4j.helpers.Util or its caller in the stack; this should not happen");
                    return null;
                }
                cls2 = classContext[i];
            }
            if (cls2 != null && !cls2.isAssignableFrom(cls)) {
                zh8.F("Detected logger name mismatch. Given name: \"" + l15VarC.getName() + "\"; computed name: \"" + cls2.getName() + "\".");
                zh8.F("See https://www.slf4j.org/codes.html#loggerNameMismatch for an explanation");
            }
        }
        return l15VarC;
    }

    public static l15 c(String str) {
        or6 or6Var;
        if (a == 0) {
            synchronized (o15.class) {
                try {
                    if (a == 0) {
                        a = 1;
                        d();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        int i = a;
        if (i == 1) {
            or6Var = b;
        } else {
            if (i == 2) {
                l0.e("org.slf4j.LoggerFactory in failed state. Original exception was thrown EARLIER. See also https://www.slf4j.org/codes.html#unsuccessfulInit");
                return null;
            }
            if (i == 3) {
                or6Var = e;
            } else {
                if (i != 4) {
                    l0.e("Unreachable code");
                    return null;
                }
                or6Var = c;
            }
        }
        return or6Var.a().c(str);
    }

    public static final void d() {
        try {
            ArrayList arrayListA = a();
            g(arrayListA);
            if (arrayListA.isEmpty()) {
                a = 4;
                zh8.F("No SLF4J providers were found.");
                zh8.F("Defaulting to no-operation (NOP) logger implementation");
                zh8.F("See https://www.slf4j.org/codes.html#noProviders for further details.");
                LinkedHashSet linkedHashSet = new LinkedHashSet();
                try {
                    ClassLoader classLoader = o15.class.getClassLoader();
                    Enumeration<URL> systemResources = classLoader == null ? ClassLoader.getSystemResources("org/slf4j/impl/StaticLoggerBinder.class") : classLoader.getResources("org/slf4j/impl/StaticLoggerBinder.class");
                    while (systemResources.hasMoreElements()) {
                        linkedHashSet.add(systemResources.nextElement());
                    }
                } catch (IOException e2) {
                    zh8.G("Error getting resources from path", e2);
                }
                f(linkedHashSet);
            } else {
                e = (or6) arrayListA.get(0);
                e.getClass();
                a = 3;
                if (!arrayListA.isEmpty() && arrayListA.size() > 1) {
                    zh8.F("Actual provider is of type [" + arrayListA.get(0) + "]");
                }
            }
            e();
            if (a == 3) {
                try {
                    String strB = e.b();
                    boolean z = false;
                    for (String str : f) {
                        if (strB.startsWith(str)) {
                            z = true;
                        }
                    }
                    if (z) {
                        return;
                    }
                    zh8.F("The requested version " + strB + " by your slf4j provider is not compatible with " + Arrays.asList(f).toString());
                    zh8.F("See https://www.slf4j.org/codes.html#version_mismatch for further details.");
                } catch (NoSuchFieldError unused) {
                } catch (Throwable th) {
                    zh8.G("Unexpected problem occurred during version sanity check", th);
                }
            }
        } catch (Exception e3) {
            a = 2;
            zh8.G("Failed to instantiate SLF4J LoggerFactory", e3);
            e6.j("Unexpected initialization failure", e3);
        }
    }

    public static void e() {
        ds7 ds7Var = b;
        synchronized (ds7Var) {
            try {
                ds7Var.a.a = true;
                bs7 bs7Var = ds7Var.a;
                bs7Var.getClass();
                for (as7 as7Var : new ArrayList(bs7Var.b.values())) {
                    as7Var.b = c(as7Var.a);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        LinkedBlockingQueue linkedBlockingQueue = b.a.c;
        int size = linkedBlockingQueue.size();
        ArrayList<cs7> arrayList = new ArrayList(128);
        int i = 0;
        while (linkedBlockingQueue.drainTo(arrayList, 128) != 0) {
            for (cs7 cs7Var : arrayList) {
                if (cs7Var != null) {
                    as7 as7Var2 = cs7Var.b;
                    String str = as7Var2.a;
                    if (as7Var2.b == null) {
                        l0.e("Delegate logger cannot be null at this state.");
                        return;
                    } else if (!(as7Var2.b instanceof rj5)) {
                        if (!as7Var2.F()) {
                            zh8.F(str);
                        } else if (as7Var2.A(cs7Var.a) && as7Var2.F()) {
                            try {
                                as7Var2.d.invoke(as7Var2.b, cs7Var);
                            } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException unused) {
                            }
                        }
                    }
                }
                int i2 = i + 1;
                if (i == 0) {
                    if (cs7Var.b.F()) {
                        zh8.F("A number (" + size + ") of logging calls during the initialization phase have been intercepted and are");
                        zh8.F("now being replayed. These are subject to the filtering rules of the underlying logging system.");
                        zh8.F("See also https://www.slf4j.org/codes.html#replay");
                    } else if (!(cs7Var.b.b instanceof rj5)) {
                        zh8.F("The following set of substitute loggers may have been accessed");
                        zh8.F("during the initialization phase. Logging calls during this");
                        zh8.F("phase were not honored. However, subsequent logging calls to these");
                        zh8.F("loggers will work as normally expected.");
                        zh8.F("See also https://www.slf4j.org/codes.html#substituteLogger");
                    }
                }
                i = i2;
            }
            arrayList.clear();
        }
        bs7 bs7Var2 = b.a;
        bs7Var2.b.clear();
        bs7Var2.c.clear();
    }

    public static void f(LinkedHashSet linkedHashSet) {
        if (linkedHashSet.isEmpty()) {
            return;
        }
        zh8.F("Class path contains SLF4J bindings targeting slf4j-api versions 1.7.x or earlier.");
        Iterator it = linkedHashSet.iterator();
        while (it.hasNext()) {
            zh8.F("Ignoring binding found at [" + ((URL) it.next()) + "]");
        }
        zh8.F("See https://www.slf4j.org/codes.html#ignoredBindings for an explanation.");
    }

    public static void g(ArrayList arrayList) {
        if (arrayList.size() > 1) {
            zh8.F("Class path contains multiple SLF4J providers.");
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                zh8.F("Found provider [" + ((or6) it.next()) + "]");
            }
            zh8.F("See https://www.slf4j.org/codes.html#multiple_bindings for an explanation.");
        }
    }
}
