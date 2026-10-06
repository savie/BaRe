package defpackage;

import java.io.ObjectInputStream;
import java.io.ObjectStreamClass;
import java.lang.annotation.Annotation;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Collection;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import org.chromium.support_lib_boundary.WebViewProviderFactoryBoundaryInterface;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class i81 implements pi4 {
    public final /* synthetic */ int a;

    public /* synthetic */ i81(int i) {
        this.a = i;
    }

    public static void b(Type type, Class cls) {
        Class<?> clsL = wx3.l(type);
        if (cls.isAssignableFrom(clsL)) {
            StringBuilder sb = new StringBuilder("No JsonAdapter for ");
            sb.append(type);
            String simpleName = cls.getSimpleName();
            String simpleName2 = clsL.getSimpleName();
            sb.append(", you should probably use ");
            sb.append(simpleName);
            sb.append(" instead of ");
            sb.append(simpleName2);
            sb.append(" (Moshi only supports the collection interfaces by default) or else register a custom JsonAdapter.");
            throw new IllegalArgumentException(sb.toString());
        }
    }

    /* JADX WARN: Code duplicated, block: B:115:0x01c8  */
    @Override // defpackage.pi4
    public final qi4 a(Type type, Set set, nh5 nh5Var) {
        qi4 qi4Var;
        bb9 g81Var;
        oi4 oi4Var;
        pp5 pp5VarC;
        Class<?> cls;
        Constructor<?> declaredConstructor;
        Object[] objArr;
        Type typeG = type;
        int i = this.a;
        int i2 = 0;
        Class cls2 = Integer.TYPE;
        qi4 qi4Var2 = null;
        switch (i) {
            case 0:
                if ((typeG instanceof Class) || (typeG instanceof ParameterizedType)) {
                    Class clsL = wx3.l(typeG);
                    if (!clsL.isInterface() && !clsL.isEnum() && set.isEmpty()) {
                        if (yh8.d(clsL)) {
                            b(typeG, List.class);
                            b(typeG, Set.class);
                            b(typeG, Map.class);
                            b(typeG, Collection.class);
                            String str = "Platform " + clsL;
                            if (typeG instanceof ParameterizedType) {
                                str = str + " in " + typeG;
                            }
                            c6.f(str.concat(" requires explicit JsonAdapter to be registered"));
                            return null;
                        }
                        if (clsL.isAnonymousClass()) {
                            c6.f("Cannot serialize anonymous class ".concat(clsL.getName()));
                            return null;
                        }
                        if (clsL.isLocalClass()) {
                            c6.f("Cannot serialize local class ".concat(clsL.getName()));
                            return null;
                        }
                        if (clsL.getEnclosingClass() != null && !Modifier.isStatic(clsL.getModifiers())) {
                            c6.f("Cannot serialize non-static nested class ".concat(clsL.getName()));
                            return null;
                        }
                        if (Modifier.isAbstract(clsL.getModifiers())) {
                            c6.f("Cannot serialize abstract class ".concat(clsL.getName()));
                            return null;
                        }
                        Class<? extends Annotation> cls3 = yh8.c;
                        if (cls3 != null && clsL.isAnnotationPresent(cls3)) {
                            z5.d(clsL.getName(), ". Reflective serialization of Kotlin classes without using kotlin-reflect has undefined and unexpected behavior. Please use KotlinJsonAdapterFactory from the moshi-kotlin artifact or use code gen from the moshi-kotlin-codegen artifact.", "Cannot serialize Kotlin type ");
                            return null;
                        }
                        try {
                            try {
                                try {
                                    try {
                                        Constructor declaredConstructor2 = clsL.getDeclaredConstructor(null);
                                        declaredConstructor2.setAccessible(true);
                                        g81Var = new a81(declaredConstructor2, clsL);
                                    } catch (NoSuchMethodException unused) {
                                        Class<?> cls4 = Class.forName("sun.misc.Unsafe");
                                        Field declaredField = cls4.getDeclaredField("theUnsafe");
                                        declaredField.setAccessible(true);
                                        g81Var = new c81(cls4.getMethod("allocateInstance", Class.class), declaredField.get(null), clsL);
                                    }
                                } catch (Exception unused2) {
                                    qi4Var = null;
                                    c6.f("cannot construct instances of ".concat(clsL.getName()));
                                }
                            } catch (ClassNotFoundException | NoSuchFieldException | NoSuchMethodException unused3) {
                                Method declaredMethod = ObjectStreamClass.class.getDeclaredMethod("getConstructorId", Class.class);
                                declaredMethod.setAccessible(true);
                                int iIntValue = ((Integer) declaredMethod.invoke(null, Object.class)).intValue();
                                Method declaredMethod2 = ObjectStreamClass.class.getDeclaredMethod("newInstance", Class.class, cls2);
                                declaredMethod2.setAccessible(true);
                                g81Var = new e81(declaredMethod2, clsL, iIntValue);
                            } catch (IllegalAccessException unused4) {
                                qi4Var = null;
                                d6.n();
                            }
                            break;
                        } catch (IllegalAccessException unused5) {
                            qi4Var = null;
                            d6.n();
                        } catch (NoSuchMethodException unused6) {
                            Method declaredMethod3 = ObjectInputStream.class.getDeclaredMethod("newInstance", Class.class, Class.class);
                            declaredMethod3.setAccessible(true);
                            g81Var = new g81(declaredMethod3, clsL);
                            break;
                        } catch (InvocationTargetException e) {
                            yh8.h(e);
                            throw null;
                        }
                        TreeMap treeMap = new TreeMap();
                        while (typeG != Object.class) {
                            Class clsL2 = wx3.l(typeG);
                            boolean zD = yh8.d(clsL2);
                            Field[] declaredFields = clsL2.getDeclaredFields();
                            int length = declaredFields.length;
                            int i3 = i2;
                            while (i3 < length) {
                                Field field = declaredFields[i3];
                                int modifiers = field.getModifiers();
                                if (Modifier.isStatic(modifiers) || Modifier.isTransient(modifiers) || (!(Modifier.isPublic(modifiers) || Modifier.isProtected(modifiers) || !zD) || ((oi4Var = (oi4) field.getAnnotation(oi4.class)) != null && oi4Var.ignore()))) {
                                    qi4Var = qi4Var2;
                                } else {
                                    Type typeG2 = yh8.g(typeG, clsL2, field.getGenericType(), new LinkedHashSet());
                                    Set setE = yh8.e(field.getAnnotations());
                                    qi4Var = qi4Var2;
                                    String name = field.getName();
                                    qi4 qi4VarB = nh5Var.b(typeG2, setE, name);
                                    field.setAccessible(true);
                                    if (oi4Var != null) {
                                        String strName = oi4Var.name();
                                        if (!WebViewProviderFactoryBoundaryInterface.MULTI_COOKIE_VALUE_SEPARATOR.equals(strName)) {
                                            name = strName;
                                        }
                                    }
                                    j81 j81Var = (j81) treeMap.put(name, new j81(name, field, qi4VarB));
                                    if (j81Var != null) {
                                        d6.i("Conflicting fields:\n    ", j81Var.b, "\n    ", field);
                                    }
                                }
                                i3++;
                                qi4Var2 = qi4Var;
                            }
                            Class clsL3 = wx3.l(typeG);
                            typeG = yh8.g(typeG, clsL3, clsL3.getGenericSuperclass(), new LinkedHashSet());
                            qi4Var2 = qi4Var2;
                            i2 = 0;
                        }
                        return new k81(g81Var, treeMap).c();
                    }
                    qi4Var = null;
                } else {
                    qi4Var = null;
                }
                return qi4Var;
            default:
                pl7 pl7Var = l73.k;
                ol7 ol7Var = l73.j;
                nl7 nl7Var = l73.i;
                ml7 ml7Var = l73.h;
                ll7 ll7Var = l73.g;
                kl7 kl7Var = l73.f;
                jl7 jl7Var = l73.e;
                il7 il7Var = l73.d;
                if (!set.isEmpty()) {
                    return null;
                }
                if (typeG == Boolean.TYPE) {
                    return il7Var;
                }
                if (typeG == Byte.TYPE) {
                    return jl7Var;
                }
                if (typeG == Character.TYPE) {
                    return kl7Var;
                }
                if (typeG == Double.TYPE) {
                    return ll7Var;
                }
                if (typeG == Float.TYPE) {
                    return ml7Var;
                }
                if (typeG == cls2) {
                    return nl7Var;
                }
                if (typeG == Long.TYPE) {
                    return ol7Var;
                }
                if (typeG == Short.TYPE) {
                    return pl7Var;
                }
                if (typeG == Boolean.class) {
                    return il7Var.c();
                }
                if (typeG == Byte.class) {
                    return jl7Var.c();
                }
                if (typeG == Character.class) {
                    return kl7Var.c();
                }
                if (typeG == Double.class) {
                    return ll7Var.c();
                }
                if (typeG == Float.class) {
                    return ml7Var.c();
                }
                if (typeG == Integer.class) {
                    return nl7Var.c();
                }
                if (typeG == Long.class) {
                    return ol7Var.c();
                }
                if (typeG == Short.class) {
                    return pl7Var.c();
                }
                if (typeG == String.class) {
                    return l73.l.c();
                }
                if (typeG == Object.class) {
                    return new rl7(nh5Var).c();
                }
                Class clsL4 = wx3.l(typeG);
                Set set2 = yh8.a;
                bj4 bj4Var = (bj4) clsL4.getAnnotation(bj4.class);
                if (bj4Var != null && bj4Var.generateAdapter()) {
                    try {
                        try {
                            cls = Class.forName(clsL4.getName().replace("$", "_") + "JsonAdapter", true, clsL4.getClassLoader());
                            try {
                                if (typeG instanceof ParameterizedType) {
                                    Type[] actualTypeArguments = ((ParameterizedType) typeG).getActualTypeArguments();
                                    try {
                                        declaredConstructor = cls.getDeclaredConstructor(nh5.class, Type[].class);
                                        objArr = new Object[]{nh5Var, actualTypeArguments};
                                    } catch (NoSuchMethodException unused7) {
                                        declaredConstructor = cls.getDeclaredConstructor(Type[].class);
                                        objArr = new Object[]{actualTypeArguments};
                                    }
                                } else {
                                    try {
                                        declaredConstructor = cls.getDeclaredConstructor(nh5.class);
                                        objArr = new Object[]{nh5Var};
                                    } catch (NoSuchMethodException unused8) {
                                        declaredConstructor = cls.getDeclaredConstructor(null);
                                        objArr = new Object[0];
                                    }
                                }
                                declaredConstructor.setAccessible(true);
                                pp5VarC = ((qi4) declaredConstructor.newInstance(objArr)).c();
                            } catch (NoSuchMethodException e2) {
                                e = e2;
                                if ((typeG instanceof ParameterizedType) || cls.getTypeParameters().length == 0) {
                                    c6.h("Failed to find the generated JsonAdapter constructor for ", typeG, e);
                                    return null;
                                }
                                StringBuilder sb = new StringBuilder("Failed to find the generated JsonAdapter constructor for '");
                                sb.append(typeG);
                                String canonicalName = cls.getCanonicalName();
                                sb.append("'. Suspiciously, the type was not parameterized but the target class '");
                                sb.append(canonicalName);
                                sb.append("' is generic. Consider using Types#newParameterizedType() to define these missing type variables.");
                                throw new RuntimeException(sb.toString(), e);
                            }
                        } catch (NoSuchMethodException e3) {
                            e = e3;
                            cls = null;
                        }
                    } catch (ClassNotFoundException e4) {
                        c6.h("Failed to find the generated JsonAdapter class for ", typeG, e4);
                        return null;
                    } catch (IllegalAccessException e5) {
                        c6.h("Failed to access the generated JsonAdapter for ", typeG, e5);
                        return null;
                    } catch (InstantiationException e6) {
                        c6.h("Failed to instantiate the generated JsonAdapter for ", typeG, e6);
                        return null;
                    } catch (InvocationTargetException e7) {
                        yh8.h(e7);
                        throw null;
                    }
                    break;
                } else {
                    pp5VarC = null;
                }
                if (pp5VarC != null) {
                    return pp5VarC;
                }
                if (clsL4.isEnum()) {
                    return new ql7(clsL4).c();
                }
                return null;
        }
    }
}
