package defpackage;

import com.google.gson.reflect.TypeToken;
import java.lang.reflect.Constructor;
import java.lang.reflect.Modifier;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import java.util.TreeSet;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentSkipListMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class vt1 {
    public final Map a;
    public final boolean b;
    public final List c;

    public vt1(Map map, boolean z, List list) {
        this.a = map;
        this.b = z;
        this.c = list;
    }

    public static String a(Class cls) {
        int modifiers = cls.getModifiers();
        if (Modifier.isInterface(modifiers)) {
            return "Interfaces can't be instantiated! Register an InstanceCreator or a TypeAdapter for this type. Interface name: ".concat(cls.getName());
        }
        if (!Modifier.isAbstract(modifiers)) {
            return null;
        }
        return "Abstract classes can't be instantiated! Adjust the R8 configuration or register an InstanceCreator or a TypeAdapter for this type. Class name: " + cls.getName() + "\nSee " + "https://github.com/google/gson/blob/main/Troubleshooting.md#".concat("r8-abstract-class");
    }

    /* JADX WARN: Code duplicated, block: B:60:0x010f  */
    /* JADX WARN: Code duplicated, block: B:62:0x0117  */
    /* JADX WARN: Code duplicated, block: B:63:0x011d  */
    /* JADX WARN: Code duplicated, block: B:65:0x0125  */
    /* JADX WARN: Code duplicated, block: B:66:0x012b  */
    /* JADX WARN: Code duplicated, block: B:68:0x0133  */
    /* JADX WARN: Code duplicated, block: B:69:0x0139  */
    /* JADX WARN: Code duplicated, block: B:71:0x0141  */
    public final er5 b(TypeToken typeToken, boolean z) {
        er5 pfVar;
        String str;
        er5 ut1Var;
        Type type = typeToken.getType();
        Class rawType = typeToken.getRawType();
        Map map = this.a;
        hd4 hd4Var = (hd4) map.get(type);
        if (hd4Var != null) {
            return new jq6(hd4Var, type);
        }
        hd4 hd4Var2 = (hd4) map.get(rawType);
        if (hd4Var2 != null) {
            return new jq6(hd4Var2, type);
        }
        int i = 3;
        er5 y5Var = null;
        if (EnumSet.class.isAssignableFrom(rawType)) {
            pfVar = new mb(type);
        } else {
            pfVar = rawType == EnumMap.class ? new pf(type, i) : null;
        }
        if (pfVar != null) {
            return pfVar;
        }
        jd4.q(this.c);
        int i2 = 1;
        if (Modifier.isAbstract(rawType.getModifiers())) {
            ut1Var = null;
        } else {
            try {
                Constructor declaredConstructor = rawType.getDeclaredConstructor(null);
                pe4 pe4Var = th6.a;
                try {
                    declaredConstructor.setAccessible(true);
                    str = null;
                } catch (Exception e) {
                    str = "Failed making constructor '" + th6.b(declaredConstructor) + "' accessible; either increase its visibility or write a custom InstanceCreator or TypeAdapter for its declaring type: " + e.getMessage() + th6.e(e);
                }
                ut1Var = str != null ? new ut1(str) : new hb(declaredConstructor, i2);
            } catch (NoSuchMethodException unused) {
                ut1Var = null;
            }
        }
        if (ut1Var != null) {
            return ut1Var;
        }
        if (Collection.class.isAssignableFrom(rawType)) {
            if (rawType.isAssignableFrom(ArrayList.class)) {
                y5Var = new l0(4);
            } else if (rawType.isAssignableFrom(LinkedHashSet.class)) {
                y5Var = new q(4);
            } else if (rawType.isAssignableFrom(TreeSet.class)) {
                y5Var = new y5(4);
            } else if (rawType.isAssignableFrom(ArrayDeque.class)) {
                y5Var = new a6(2);
            }
        } else if (Map.class.isAssignableFrom(rawType)) {
            if (rawType.isAssignableFrom(iw4.class)) {
                if (type instanceof ParameterizedType) {
                    Type[] actualTypeArguments = ((ParameterizedType) type).getActualTypeArguments();
                    if (actualTypeArguments.length == 0 || x13.w(actualTypeArguments[0]) != String.class) {
                        if (rawType.isAssignableFrom(LinkedHashMap.class)) {
                            y5Var = new g84();
                        } else if (rawType.isAssignableFrom(TreeMap.class)) {
                            y5Var = new z5(5);
                        } else if (rawType.isAssignableFrom(ConcurrentHashMap.class)) {
                            y5Var = new q(3);
                        } else if (rawType.isAssignableFrom(ConcurrentSkipListMap.class)) {
                            y5Var = new y5(3);
                        }
                    }
                }
                y5Var = new q(5);
            } else if (rawType.isAssignableFrom(LinkedHashMap.class)) {
                y5Var = new g84();
            } else if (rawType.isAssignableFrom(TreeMap.class)) {
                y5Var = new z5(5);
            } else if (rawType.isAssignableFrom(ConcurrentHashMap.class)) {
                y5Var = new q(3);
            } else if (rawType.isAssignableFrom(ConcurrentSkipListMap.class)) {
                y5Var = new y5(3);
            }
        }
        if (y5Var != null) {
            return y5Var;
        }
        String strA = a(rawType);
        if (strA != null) {
            return new ut1(strA);
        }
        if (!z) {
            return new ut1(fz5.l(rawType, "Unable to create instance of ", "; Register an InstanceCreator or a TypeAdapter for this type."));
        }
        if (this.b) {
            return new sn1(rawType, i2);
        }
        String strL = fz5.l(rawType, "Unable to create instance of ", "; usage of JDK Unsafe is disabled. Registering an InstanceCreator or a TypeAdapter for this type, adding a no-args constructor, or enabling usage of JDK Unsafe may fix this problem.");
        if (rawType.getDeclaredConstructors().length == 0) {
            strL = strL.concat(" Or adjust your R8 configuration to keep the no-args constructor of the class.");
        }
        return new ut1(strL);
    }

    public final String toString() {
        return this.a.toString();
    }
}
