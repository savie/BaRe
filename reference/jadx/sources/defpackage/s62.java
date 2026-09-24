package defpackage;

import android.util.Log;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class s62 {
    public final Class a;
    public final Constructor b;
    public final boolean c;
    public final boolean d;
    public final HashMap e = new HashMap();
    public final HashMap g = new HashMap();
    public final HashMap f = new HashMap();
    public final HashMap h = new HashMap();

    public s62(Class cls) throws Throwable {
        Constructor declaredConstructor;
        Method[] methods;
        int length;
        int i;
        Throwable th;
        this.a = cls;
        this.c = cls.isAnnotationPresent(x28.class);
        this.d = !cls.isAnnotationPresent(q94.class);
        Throwable th2 = null;
        try {
            declaredConstructor = cls.getDeclaredConstructor(null);
            declaredConstructor.setAccessible(true);
            while (true) {
                Class cls2 = Void.TYPE;
                if (i < length) {
                    Method method = methods[i];
                    if ((method.getName().startsWith("get") || method.getName().startsWith("is")) && !method.getDeclaringClass().equals(Object.class) && Modifier.isPublic(method.getModifiers()) && !Modifier.isStatic(method.getModifiers()) && !method.getReturnType().equals(cls2) && method.getParameterTypes().length == 0 && !method.isBridge() && !method.isAnnotationPresent(jz2.class)) {
                        String strE = e(method);
                        a(strE);
                        method.setAccessible(true);
                        if (this.f.containsKey(strE)) {
                            e6.g(method.getName(), "Found conflicting getters for name: ");
                            throw null;
                        }
                        this.f.put(strE, method);
                    }
                    i++;
                } else {
                    for (Field field : cls.getFields()) {
                        if (!field.getDeclaringClass().equals(Object.class) && Modifier.isPublic(field.getModifiers()) && !Modifier.isStatic(field.getModifiers()) && !Modifier.isTransient(field.getModifiers()) && !field.isAnnotationPresent(jz2.class)) {
                            String strB = b(field);
                            a(strB == null ? field.getName() : strB);
                        }
                    }
                    HashMap map = new HashMap();
                    Class superclass = cls;
                    while (true) {
                        Method[] declaredMethods = superclass.getDeclaredMethods();
                        int length2 = declaredMethods.length;
                        int i2 = 0;
                        while (i2 < length2) {
                            Method method2 = declaredMethods[i2];
                            if (method2.getName().startsWith("set") && !method2.getDeclaringClass().equals(Object.class) && !Modifier.isStatic(method2.getModifiers()) && method2.getReturnType().equals(cls2) && method2.getParameterTypes().length == 1 && !method2.isAnnotationPresent(jz2.class)) {
                                String strE2 = e(method2);
                                th = th2;
                                String str = (String) this.e.get(strE2.toLowerCase(Locale.US));
                                if (str == null) {
                                    continue;
                                } else {
                                    if (!str.equals(strE2)) {
                                        e6.g(method2.getName(), "Found setter with invalid case-sensitive name: ");
                                        throw th;
                                    }
                                    if (method2.isBridge()) {
                                        map.put(strE2, method2);
                                    } else {
                                        Method method3 = (Method) this.g.get(strE2);
                                        Method method4 = (Method) map.get(strE2);
                                        if (method3 == null) {
                                            method2.setAccessible(true);
                                            this.g.put(strE2, method2);
                                        } else if (!d(method2, method3) && (method4 == null || !d(method2, method4))) {
                                            throw new xc2("Found a conflicting setters with name: " + method2.getName() + " (conflicts with " + method3.getName() + " defined on " + method3.getDeclaringClass().getName() + ")");
                                        }
                                    }
                                }
                            } else {
                                th = th2;
                            }
                            i2++;
                            th2 = th;
                        }
                        Throwable th3 = th2;
                        for (Field field2 : superclass.getDeclaredFields()) {
                            String strB2 = b(field2);
                            strB2 = strB2 == null ? field2.getName() : strB2;
                            if (this.e.containsKey(strB2.toLowerCase(Locale.US)) && !this.h.containsKey(strB2)) {
                                field2.setAccessible(true);
                                this.h.put(strB2, field2);
                            }
                        }
                        superclass = superclass.getSuperclass();
                        if (superclass == null || superclass.equals(Object.class)) {
                            if (this.e.isEmpty()) {
                                throw new xc2("No properties to serialize found on class ".concat(cls.getName()));
                            }
                            return;
                        }
                        th2 = th3;
                    }
                }
            }
        } catch (NoSuchMethodException unused) {
            declaredConstructor = null;
        }
        this.b = declaredConstructor;
        methods = cls.getMethods();
        length = methods.length;
        i = 0;
    }

    public static String b(AccessibleObject accessibleObject) {
        if (accessibleObject.isAnnotationPresent(y86.class)) {
            return ((y86) accessibleObject.getAnnotation(y86.class)).value();
        }
        return null;
    }

    public static boolean d(Method method, Method method2) {
        zm5.r("Expected override from a base class", method.getDeclaringClass().isAssignableFrom(method2.getDeclaringClass()));
        Class<?> returnType = method.getReturnType();
        Class cls = Void.TYPE;
        zm5.r("Expected void return type", returnType.equals(cls));
        zm5.r("Expected void return type", method2.getReturnType().equals(cls));
        Class<?>[] parameterTypes = method.getParameterTypes();
        Class<?>[] parameterTypes2 = method2.getParameterTypes();
        zm5.r("Expected exactly one parameter", parameterTypes.length == 1);
        zm5.r("Expected exactly one parameter", parameterTypes2.length == 1);
        return method.getName().equals(method2.getName()) && parameterTypes[0].equals(parameterTypes2[0]);
    }

    public static String e(Method method) {
        String strB = b(method);
        if (strB != null) {
            return strB;
        }
        String name = method.getName();
        String[] strArr = {"get", "set", "is"};
        String str = null;
        for (int i = 0; i < 3; i++) {
            String str2 = strArr[i];
            if (name.startsWith(str2)) {
                str = str2;
            }
        }
        if (str == null) {
            c6.f(xs1.j("Unknown Bean prefix for method: ", name));
            return null;
        }
        char[] charArray = name.substring(str.length()).toCharArray();
        for (int i2 = 0; i2 < charArray.length && Character.isUpperCase(charArray[i2]); i2++) {
            charArray[i2] = Character.toLowerCase(charArray[i2]);
        }
        return new String(charArray);
    }

    public static Type f(Type type, Map map) {
        if (!(type instanceof TypeVariable)) {
            return type;
        }
        Type type2 = (Type) map.get(type);
        if (type2 != null) {
            return type2;
        }
        y5.g(type, "Could not resolve type ");
        return null;
    }

    public final void a(String str) {
        Locale locale = Locale.US;
        String str2 = (String) this.e.put(str.toLowerCase(locale), str);
        if (str2 == null || str.equals(str2)) {
            return;
        }
        e6.g(str.toLowerCase(locale), "Found two getters or fields with conflicting case sensitivity for property: ");
    }

    public final Object c(Map map, Map map2) {
        Class cls = this.a;
        Constructor constructor = this.b;
        if (constructor == null) {
            f6.m(cls.getName(), " does not define a no-argument constructor. If you are using ProGuard, make sure these constructors are not stripped.", "Class ");
            return null;
        }
        try {
            Object objNewInstance = constructor.newInstance(null);
            for (Map.Entry entry : map.entrySet()) {
                String str = (String) entry.getKey();
                HashMap map3 = this.g;
                if (map3.containsKey(str)) {
                    Method method = (Method) map3.get(str);
                    Type[] genericParameterTypes = method.getGenericParameterTypes();
                    if (genericParameterTypes.length != 1) {
                        l0.e("Setter does not have exactly one parameter");
                        return null;
                    }
                    try {
                        method.invoke(objNewInstance, t62.c(entry.getValue(), f(genericParameterTypes[0], map2)));
                    } catch (IllegalAccessException e) {
                        y5.k(e);
                        return null;
                    } catch (InvocationTargetException e2) {
                        y5.k(e2);
                        return null;
                    }
                } else {
                    HashMap map4 = this.h;
                    if (map4.containsKey(str)) {
                        Field field = (Field) map4.get(str);
                        try {
                            field.set(objNewInstance, t62.c(entry.getValue(), f(field.getGenericType(), map2)));
                        } catch (IllegalAccessException e3) {
                            y5.k(e3);
                            return null;
                        }
                    } else {
                        StringBuilder sbU = dj7.u("No setter/field for ", str, " found on class ");
                        sbU.append(cls.getName());
                        String string = sbU.toString();
                        if (this.e.containsKey(str.toLowerCase(Locale.US))) {
                            string = string.concat(" (fields/setters are case sensitive!)");
                        }
                        if (this.c) {
                            throw new xc2(string);
                        }
                        if (this.d) {
                            Log.w("ClassMapper", string);
                        }
                    }
                }
            }
            return objNewInstance;
        } catch (IllegalAccessException e4) {
            y5.k(e4);
            return null;
        } catch (InstantiationException e5) {
            y5.k(e5);
            return null;
        } catch (InvocationTargetException e6) {
            y5.k(e6);
            return null;
        }
    }
}
