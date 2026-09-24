package defpackage;

import java.lang.annotation.Annotation;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class u81 {
    public static final Annotation[] a = new Annotation[0];
    public static final s81[] b = new s81[0];
    public static final Iterator c = Collections.emptyIterator();
    public static final Method d;

    static {
        Method method = null;
        try {
            method = Class.class.getMethod("isRecord", null);
        } catch (NoSuchMethodException unused) {
        }
        d = method;
    }

    public static void a(Class cls, Class cls2, ArrayList arrayList) {
        if (cls == cls2 || cls == null || cls == Object.class || arrayList.contains(cls)) {
            return;
        }
        arrayList.add(cls);
        for (Class<?> cls3 : cls.getInterfaces()) {
            a(cls3, cls2, arrayList);
        }
        a(cls.getSuperclass(), cls2, arrayList);
    }

    public static void b(Class cls, Throwable th) {
        String name = cls.getName();
        String name2 = th.getClass().getName();
        String message = th.getMessage();
        StringBuilder sbP = u48.p("Failed on call to `getDeclaredMethods()` on class `", name, "`, problem: (", name2, ") ");
        sbP.append(message);
        throw new IllegalArgumentException(sbP.toString(), th);
    }

    public static String c(String str) {
        if (str == null) {
            return "[null]";
        }
        StringBuilder sb = new StringBuilder(str.length() + 2);
        sb.append('\'');
        sb.append(str);
        sb.append('\'');
        return sb.toString();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void d(Member member, boolean z) {
        AccessibleObject accessibleObject = (AccessibleObject) member;
        try {
            Class<?> declaringClass = member.getDeclaringClass();
            if (Modifier.isPublic(member.getModifiers()) && Modifier.isPublic(declaringClass.getModifiers()) && (!z || p(declaringClass))) {
                return;
            }
            accessibleObject.setAccessible(true);
        } catch (SecurityException e) {
            if (accessibleObject.isAccessible()) {
                return;
            }
            Class<?> declaringClass2 = member.getDeclaringClass();
            StringBuilder sb = new StringBuilder("Cannot access ");
            sb.append(member);
            String name = declaringClass2.getName();
            String message = e.getMessage();
            sb.append(" (from class ");
            sb.append(name);
            sb.append("; failed to set access: ");
            sb.append(message);
            throw new IllegalArgumentException(sb.toString());
        } catch (RuntimeException e2) {
            if (!"InaccessibleObjectException".equals(e2.getClass().getSimpleName())) {
                throw e2;
            }
            String simpleName = member.getClass().getSimpleName();
            String name2 = member.getName();
            String strT = t(member.getDeclaringClass());
            String name3 = e2.getClass().getName();
            String message2 = e2.getMessage();
            StringBuilder sbP = u48.p("Failed to call `setAccess()` on ", simpleName, " '", name2, "' (of class ");
            xs1.t(sbP, strT, ") due to `", name3, "`, problem: ");
            sbP.append(message2);
            throw new IllegalArgumentException(sbP.toString(), e2);
        }
    }

    public static String e(Object obj) {
        if (obj == null) {
            return "[null]";
        }
        return t(obj instanceof Class ? (Class) obj : obj.getClass());
    }

    public static Object f(Class cls, boolean z) {
        Constructor declaredConstructor;
        try {
            declaredConstructor = cls.getDeclaredConstructor(null);
            if (z) {
                d(declaredConstructor, z);
            } else if (!Modifier.isPublic(declaredConstructor.getModifiers())) {
                throw new IllegalArgumentException("Default constructor for " + cls.getName() + " is not accessible (non-public?): not allowed to try modify access via Reflection: cannot instantiate type");
            }
        } catch (NoSuchMethodException unused) {
            declaredConstructor = null;
        } catch (Exception e) {
            e = e;
            String str = "Failed to find default constructor of class " + cls.getName() + ", problem: " + e.getMessage();
            while (e.getCause() != null) {
                e = e.getCause();
            }
            v(e);
            if (e instanceof Error) {
                throw ((Error) e);
            }
            throw new IllegalArgumentException(str, e);
        }
        if (declaredConstructor == null) {
            z5.d(cls.getName(), " has no default (no arg) constructor", "Class ");
            return null;
        }
        try {
            return declaredConstructor.newInstance(null);
        } catch (Exception e2) {
            e = e2;
            String str2 = "Failed to instantiate class " + cls.getName() + ", problem: " + e.getMessage();
            while (e.getCause() != null) {
                e = e.getCause();
            }
            v(e);
            if (e instanceof Error) {
                throw ((Error) e);
            }
            throw new IllegalArgumentException(str2, e);
        }
    }

    public static String g(Throwable th) {
        if (th instanceof ll4) {
            return ((ll4) th).a();
        }
        return (!(th instanceof InvocationTargetException) || th.getCause() == null) ? th.getMessage() : th.getCause().getMessage();
    }

    public static Annotation[] h(Class cls) {
        return r(cls) ? a : cls.getDeclaredAnnotations();
    }

    public static ArrayList i(Class cls, Class cls2, boolean z) {
        ArrayList arrayList = new ArrayList(8);
        if (cls != null && cls != cls2) {
            if (z) {
                arrayList.add(cls);
            }
            while (true) {
                cls = cls.getSuperclass();
                if (cls == null || cls == cls2) {
                    break;
                }
                arrayList.add(cls);
            }
        }
        return arrayList;
    }

    public static Method[] j(Class cls) {
        try {
            return cls.getDeclaredMethods();
        } catch (Exception e) {
            b(cls, e);
            throw null;
        } catch (NoClassDefFoundError e2) {
            ClassLoader contextClassLoader = Thread.currentThread().getContextClassLoader();
            if (contextClassLoader == null) {
                b(cls, e2);
                throw null;
            }
            try {
                try {
                    return contextClassLoader.loadClass(cls.getName()).getDeclaredMethods();
                } catch (Exception e3) {
                    b(cls, e3);
                    throw null;
                }
            } catch (ClassNotFoundException e4) {
                e2.addSuppressed(e4);
                b(cls, e2);
                throw null;
            }
        }
    }

    public static s81[] k(Class cls) {
        if (cls.isInterface() || r(cls)) {
            return b;
        }
        Constructor<?>[] declaredConstructors = cls.getDeclaredConstructors();
        int length = declaredConstructors.length;
        s81[] s81VarArr = new s81[length];
        for (int i = 0; i < length; i++) {
            s81VarArr[i] = new s81(declaredConstructors[i]);
        }
        return s81VarArr;
    }

    public static Class l(Class cls) {
        if (!Modifier.isStatic(cls.getModifiers())) {
            try {
                if ((r(cls) || cls.getEnclosingMethod() == null) && !r(cls)) {
                    return cls.getEnclosingClass();
                }
                return null;
            } catch (SecurityException unused) {
            }
        }
        return null;
    }

    public static String m(gc8 gc8Var) {
        if (gc8Var == null) {
            return "[null]";
        }
        int i = 0;
        while (true) {
            gc8Var.getClass();
            if (!(gc8Var instanceof t50)) {
                break;
            }
            i++;
            gc8Var = ((t50) gc8Var).G;
        }
        StringBuilder sb = new StringBuilder(80);
        sb.append('`');
        sb.append(gc8Var.l0());
        while (true) {
            int i2 = i - 1;
            if (i <= 0) {
                sb.append('`');
                return sb.toString();
            }
            sb.append("[]");
            i = i2;
        }
    }

    public static boolean n(Class cls, Object obj) {
        return obj != null && obj.getClass() == cls;
    }

    public static boolean o(Class cls) {
        return cls == Void.class || cls == Void.TYPE || cls == zm5.class;
    }

    public static boolean p(Class cls) {
        String name = cls.getName();
        return name.startsWith("java.") || name.startsWith("javax.") || name.startsWith("sun.");
    }

    public static boolean q(em4 em4Var) {
        return em4Var == null || em4Var.getClass().getAnnotation(dh4.class) != null;
    }

    public static boolean r(Class cls) {
        return cls == Object.class || cls.isPrimitive();
    }

    public static boolean s(Class cls) {
        Method method = d;
        if (method == null) {
            return false;
        }
        try {
            return ((Boolean) method.invoke(cls, null)).booleanValue();
        } catch (Exception unused) {
            return false;
        }
    }

    public static String t(Class cls) {
        if (cls == null) {
            return "[null]";
        }
        int i = 0;
        while (cls.isArray()) {
            i++;
            cls = cls.getComponentType();
        }
        String simpleName = cls.isPrimitive() ? cls.getSimpleName() : cls.getName();
        if (i > 0) {
            StringBuilder sb = new StringBuilder(simpleName);
            do {
                sb.append("[]");
                i--;
            } while (i > 0);
            simpleName = sb.toString();
        }
        StringBuilder sb2 = new StringBuilder(simpleName.length() + 2);
        sb2.append('`');
        sb2.append(simpleName);
        sb2.append('`');
        return sb2.toString();
    }

    public static Class u(Class cls) {
        if (cls.isPrimitive()) {
            return cls;
        }
        if (cls == Integer.class) {
            return Integer.TYPE;
        }
        if (cls == Long.class) {
            return Long.TYPE;
        }
        if (cls == Boolean.class) {
            return Boolean.TYPE;
        }
        if (cls == Double.class) {
            return Double.TYPE;
        }
        if (cls == Float.class) {
            return Float.TYPE;
        }
        if (cls == Byte.class) {
            return Byte.TYPE;
        }
        if (cls == Short.class) {
            return Short.TYPE;
        }
        if (cls == Character.class) {
            return Character.TYPE;
        }
        return null;
    }

    public static void v(Throwable th) {
        if (th instanceof RuntimeException) {
            throw ((RuntimeException) th);
        }
    }

    public static void w(Class cls, tn7 tn7Var, String str) {
        if (tn7Var.getClass() == cls) {
            return;
        }
        l0.e(dj7.n(u48.p("Sub-class ", tn7Var.getClass().getName(), " (of class ", cls.getName(), ") must override method '"), str, "'"));
    }
}
