package defpackage;

import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class a91 {
    public static final a91 c = new a91();
    public final HashMap a = new HashMap();
    public final HashMap b = new HashMap();

    public static void b(HashMap map, z81 z81Var, rt4 rt4Var, Class cls) {
        rt4 rt4Var2 = (rt4) map.get(z81Var);
        if (rt4Var2 == null || rt4Var == rt4Var2) {
            if (rt4Var2 == null) {
                map.put(z81Var, rt4Var);
                return;
            }
            return;
        }
        throw new IllegalArgumentException("Method " + z81Var.b.getName() + " in " + cls.getName() + " already declared with different @OnLifecycleEvent value: previous value " + rt4Var2 + ", new value " + rt4Var);
    }

    public final y81 a(Class cls, Method[] methodArr) {
        int i;
        Class superclass = cls.getSuperclass();
        HashMap map = new HashMap();
        HashMap map2 = this.a;
        if (superclass != null) {
            y81 y81VarA = (y81) map2.get(superclass);
            if (y81VarA == null) {
                y81VarA = a(superclass, null);
            }
            map.putAll(y81VarA.b);
        }
        for (Class<?> cls2 : cls.getInterfaces()) {
            y81 y81VarA2 = (y81) map2.get(cls2);
            if (y81VarA2 == null) {
                y81VarA2 = a(cls2, null);
            }
            for (Map.Entry entry : y81VarA2.b.entrySet()) {
                b(map, (z81) entry.getKey(), (rt4) entry.getValue(), cls);
            }
        }
        if (methodArr == null) {
            try {
                methodArr = cls.getDeclaredMethods();
            } catch (NoClassDefFoundError e) {
                throw new IllegalArgumentException("The observer class has some methods that use newer APIs which are not available in the current OS version. Lifecycles cannot access even other methods so you should make sure that your observer classes only access framework classes that are available in your min API level OR use lifecycle:compiler annotation processor.", e);
            }
        }
        boolean z = false;
        for (Method method : methodArr) {
            ct5 ct5Var = (ct5) method.getAnnotation(ct5.class);
            if (ct5Var != null) {
                Class<?>[] parameterTypes = method.getParameterTypes();
                if (parameterTypes.length <= 0) {
                    i = 0;
                } else {
                    if (!fu4.class.isAssignableFrom(parameterTypes[0])) {
                        c6.f("invalid parameter type. Must be one and instanceof LifecycleOwner");
                        return null;
                    }
                    i = 1;
                }
                rt4 rt4VarValue = ct5Var.value();
                if (parameterTypes.length > 1) {
                    if (!rt4.class.isAssignableFrom(parameterTypes[1])) {
                        c6.f("invalid parameter type. second arg must be an event");
                        return null;
                    }
                    if (rt4VarValue != rt4.ON_ANY) {
                        c6.f("Second arg is supported only for ON_ANY value");
                        return null;
                    }
                    i = 2;
                }
                if (parameterTypes.length > 2) {
                    c6.f("cannot have more than 2 params");
                    return null;
                }
                b(map, new z81(method, i), rt4VarValue, cls);
                z = true;
            }
        }
        y81 y81Var = new y81(map);
        map2.put(cls, y81Var);
        this.b.put(cls, Boolean.valueOf(z));
        return y81Var;
    }
}
