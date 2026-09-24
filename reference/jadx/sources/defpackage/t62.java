package defpackage;

import java.lang.reflect.Field;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class t62 {
    public static final ConcurrentHashMap a = new ConcurrentHashMap();

    public static Double a(Object obj) {
        if (obj instanceof Integer) {
            return Double.valueOf(((Integer) obj).doubleValue());
        }
        if (!(obj instanceof Long)) {
            if (obj instanceof Double) {
                return (Double) obj;
            }
            f6.m(obj.getClass().getName(), " to double", "Failed to convert a value of type ");
            return null;
        }
        Long l = (Long) obj;
        Double dValueOf = Double.valueOf(l.doubleValue());
        if (dValueOf.longValue() == l.longValue()) {
            return dValueOf;
        }
        throw new xc2("Loss of precision while converting number to double: " + obj + ". Did you mean to use a 64-bit long instead?");
    }

    public static Object b(Class cls, Object obj) {
        if (obj == null) {
            return null;
        }
        if (!cls.isPrimitive() && !Number.class.isAssignableFrom(cls) && !Boolean.class.isAssignableFrom(cls) && !Character.class.isAssignableFrom(cls)) {
            if (String.class.isAssignableFrom(cls)) {
                if (obj instanceof String) {
                    return (String) obj;
                }
                f6.m(obj.getClass().getName(), " to String", "Failed to convert value of type ");
                return null;
            }
            if (cls.isArray()) {
                throw new xc2("Converting to Arrays is not supported, please use Listsinstead");
            }
            if (cls.getTypeParameters().length > 0) {
                f6.m(cls.getName(), " has generic type parameters, please use GenericTypeIndicator instead", "Class ");
                return null;
            }
            if (cls.equals(Object.class)) {
                return obj;
            }
            if (!cls.isEnum()) {
                s62 s62VarE = e(cls);
                if (obj instanceof Map) {
                    return s62VarE.c(d(obj), Collections.EMPTY_MAP);
                }
                throw new xc2("Can't convert object of type " + obj.getClass().getName() + " to type " + cls.getName());
            }
            if (!(obj instanceof String)) {
                StringBuilder sb = new StringBuilder("Expected a String while deserializing to enum ");
                sb.append(cls);
                Class<?> cls2 = obj.getClass();
                sb.append(" but got a ");
                sb.append(cls2);
                throw new xc2(sb.toString());
            }
            String str = (String) obj;
            try {
                return Enum.valueOf(cls, str);
            } catch (IllegalArgumentException unused) {
                throw new xc2("Could not find enum value of " + cls.getName() + " for value \"" + str + "\"");
            }
        }
        if (Integer.class.isAssignableFrom(cls) || Integer.TYPE.isAssignableFrom(cls)) {
            if (obj instanceof Integer) {
                return (Integer) obj;
            }
            if (!(obj instanceof Long) && !(obj instanceof Double)) {
                f6.m(obj.getClass().getName(), " to int", "Failed to convert a value of type ");
                return null;
            }
            Number number = (Number) obj;
            double dDoubleValue = number.doubleValue();
            if (dDoubleValue >= -2.147483648E9d && dDoubleValue <= 2.147483647E9d) {
                return Integer.valueOf(number.intValue());
            }
            throw new xc2("Numeric value out of 32-bit integer range: " + dDoubleValue + ". Did you mean to use a long or double instead of an int?");
        }
        if (Boolean.class.isAssignableFrom(cls) || Boolean.TYPE.isAssignableFrom(cls)) {
            if (obj instanceof Boolean) {
                return (Boolean) obj;
            }
            f6.m(obj.getClass().getName(), " to boolean", "Failed to convert value of type ");
            return null;
        }
        if (Double.class.isAssignableFrom(cls) || Double.TYPE.isAssignableFrom(cls)) {
            return a(obj);
        }
        if (!Long.class.isAssignableFrom(cls) && !Long.TYPE.isAssignableFrom(cls)) {
            if (Float.class.isAssignableFrom(cls) || Float.TYPE.isAssignableFrom(cls)) {
                return Float.valueOf(a(obj).floatValue());
            }
            throw new xc2(eq3.k("Deserializing values to ", cls.getSimpleName(), " is not supported"));
        }
        if (obj instanceof Integer) {
            return Long.valueOf(((Integer) obj).longValue());
        }
        if (obj instanceof Long) {
            return (Long) obj;
        }
        if (!(obj instanceof Double)) {
            f6.m(obj.getClass().getName(), " to long", "Failed to convert a value of type ");
            return null;
        }
        Double d = (Double) obj;
        if (d.doubleValue() >= -9.223372036854776E18d && d.doubleValue() <= 9.223372036854776E18d) {
            return Long.valueOf(d.longValue());
        }
        throw new xc2("Numeric value out of 64-bit long range: " + d + ". Did you mean to use a double instead of a long?");
    }

    public static Object c(Object obj, Type type) {
        if (obj == null) {
            return null;
        }
        if (!(type instanceof ParameterizedType)) {
            if (type instanceof Class) {
                return b((Class) type, obj);
            }
            if (type instanceof WildcardType) {
                WildcardType wildcardType = (WildcardType) type;
                if (wildcardType.getLowerBounds().length > 0) {
                    throw new xc2("Generic lower-bounded wildcard types are not supported");
                }
                Type[] upperBounds = wildcardType.getUpperBounds();
                zm5.r("Wildcard type " + type + " is not upper bounded.", upperBounds.length > 0);
                return c(obj, upperBounds[0]);
            }
            if (!(type instanceof TypeVariable)) {
                if (type instanceof GenericArrayType) {
                    throw new xc2("Generic Arrays are not supported, please use Lists instead");
                }
                y5.g(type, "Unknown type encountered: ");
                return null;
            }
            Type[] bounds = ((TypeVariable) type).getBounds();
            zm5.r("Wildcard type " + type + " is not upper bounded.", bounds.length > 0);
            return c(obj, bounds[0]);
        }
        ParameterizedType parameterizedType = (ParameterizedType) type;
        Class cls = (Class) parameterizedType.getRawType();
        if (List.class.isAssignableFrom(cls)) {
            Type type2 = parameterizedType.getActualTypeArguments()[0];
            if (!(obj instanceof List)) {
                e6.g(obj.getClass(), "Expected a List while deserializing, but got a ");
                return null;
            }
            List list = (List) obj;
            ArrayList arrayList = new ArrayList(list.size());
            Iterator it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(c(it.next(), type2));
            }
            return arrayList;
        }
        if (Map.class.isAssignableFrom(cls)) {
            Type type3 = parameterizedType.getActualTypeArguments()[0];
            Type type4 = parameterizedType.getActualTypeArguments()[1];
            if (!type3.equals(String.class)) {
                throw new xc2("Only Maps with string keys are supported, but found Map with key type " + type3);
            }
            Map mapD = d(obj);
            HashMap map = new HashMap();
            for (Map.Entry entry : mapD.entrySet()) {
                map.put((String) entry.getKey(), c(entry.getValue(), type4));
            }
            return map;
        }
        if (Collection.class.isAssignableFrom(cls)) {
            throw new xc2("Collections are not supported, please use Lists instead");
        }
        Map mapD2 = d(obj);
        s62 s62VarE = e(cls);
        HashMap map2 = new HashMap();
        TypeVariable[] typeParameters = s62VarE.a.getTypeParameters();
        Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
        if (actualTypeArguments.length != typeParameters.length) {
            l0.e("Mismatched lengths for type variables and actual types");
            return null;
        }
        for (int i = 0; i < typeParameters.length; i++) {
            map2.put(typeParameters[i], actualTypeArguments[i]);
        }
        return s62VarE.c(mapD2, map2);
    }

    public static Map d(Object obj) {
        if (obj instanceof Map) {
            return (Map) obj;
        }
        e6.g(obj.getClass(), "Expected a Map while deserializing, but got a ");
        return null;
    }

    public static s62 e(Class cls) {
        ConcurrentHashMap concurrentHashMap = a;
        s62 s62Var = (s62) concurrentHashMap.get(cls);
        if (s62Var != null) {
            return s62Var;
        }
        s62 s62Var2 = new s62(cls);
        concurrentHashMap.put(cls, s62Var2);
        return s62Var2;
    }

    public static Object f(Object obj) {
        Object objInvoke;
        if (obj == null) {
            return null;
        }
        if (obj instanceof Number) {
            if ((obj instanceof Float) || (obj instanceof Double)) {
                Number number = (Number) obj;
                double dDoubleValue = number.doubleValue();
                return (dDoubleValue > 9.223372036854776E18d || dDoubleValue < -9.223372036854776E18d || Math.floor(dDoubleValue) != dDoubleValue) ? Double.valueOf(dDoubleValue) : Long.valueOf(number.longValue());
            }
            if ((obj instanceof Long) || (obj instanceof Integer)) {
                return obj;
            }
            throw new xc2(eq3.k("Numbers of type ", obj.getClass().getSimpleName(), " are not supported, please use an int, long, float or double"));
        }
        if ((obj instanceof String) || (obj instanceof Boolean)) {
            return obj;
        }
        if (obj instanceof Character) {
            throw new xc2("Characters are not supported, please use Strings");
        }
        if (obj instanceof Map) {
            HashMap map = new HashMap();
            for (Map.Entry entry : ((Map) obj).entrySet()) {
                Object key = entry.getKey();
                if (!(key instanceof String)) {
                    throw new xc2("Maps with non-string keys are not supported");
                }
                map.put((String) key, f(entry.getValue()));
            }
            return map;
        }
        if (obj instanceof Collection) {
            if (!(obj instanceof List)) {
                throw new xc2("Serializing Collections is not supported, please use Lists instead");
            }
            List list = (List) obj;
            ArrayList arrayList = new ArrayList(list.size());
            Iterator it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(f(it.next()));
            }
            return arrayList;
        }
        if (obj.getClass().isArray()) {
            throw new xc2("Serializing Arrays is not supported, please use Lists instead");
        }
        if (obj instanceof Enum) {
            return ((Enum) obj).name();
        }
        s62 s62VarE = e(obj.getClass());
        HashMap map2 = s62VarE.f;
        Class cls = s62VarE.a;
        if (!cls.isAssignableFrom(obj.getClass())) {
            d6.i("Can't serialize object of class ", obj.getClass(), " with BeanMapper for class ", cls);
            return null;
        }
        HashMap map3 = new HashMap();
        for (String str : s62VarE.e.values()) {
            if (map2.containsKey(str)) {
                try {
                    objInvoke = ((Method) map2.get(str)).invoke(obj, null);
                } catch (IllegalAccessException e) {
                    y5.k(e);
                    return null;
                } catch (InvocationTargetException e2) {
                    y5.k(e2);
                    return null;
                }
            } else {
                Field field = (Field) s62VarE.h.get(str);
                if (field == null) {
                    l0.e(xs1.j("Bean property without field or getter:", str));
                    return null;
                }
                try {
                    objInvoke = field.get(obj);
                } catch (IllegalAccessException e3) {
                    y5.k(e3);
                    return null;
                }
            }
            map3.put(str, f(objInvoke));
        }
        return map3;
    }
}
