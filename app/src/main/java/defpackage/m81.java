package defpackage;

import java.io.Serializable;
import java.lang.annotation.Annotation;
import java.lang.reflect.Field;
import java.lang.reflect.TypeVariable;
import java.util.Collection;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class m81 extends mc8 implements Serializable {
    public m81(gc8 gc8Var, lc8 lc8Var, Collection collection) {
        super(gc8Var, lc8Var);
        if (collection != null) {
            Iterator it = collection.iterator();
            HashSet hashSet = null;
            while (it.hasNext()) {
                ik5 ik5Var = (ik5) it.next();
                if (hashSet == null) {
                    hashSet = new HashSet();
                }
                hashSet.add(ik5Var.a.getName());
            }
        }
    }

    @Override // defpackage.mc8
    public String b(Object obj) {
        return d(obj, obj.getClass(), this.a);
    }

    @Override // defpackage.mc8
    public String c(Class cls, Object obj) {
        return d(obj, cls, this.a);
    }

    public final String d(Object obj, Class cls, lc8 lc8Var) {
        Class declaringClass;
        jc8 jc8Var;
        Class declaringClass2;
        jc8 jc8Var2;
        Class clsA = mc8.a(cls);
        String name = clsA.getName();
        if (name.startsWith("java.util.")) {
            if (obj instanceof EnumSet) {
                EnumSet enumSet = (EnumSet) obj;
                Annotation[] annotationArr = u81.a;
                if (enumSet.isEmpty()) {
                    t81 t81Var = t81.e;
                    Field field = t81Var.a;
                    if (field == null) {
                        m0.g(t81Var.c, "Cannot figure out type parameter for `EnumSet` (odd JDK platform?), problem: ");
                        return null;
                    }
                    try {
                        declaringClass2 = (Class) field.get(enumSet);
                    } catch (Exception e) {
                        throw new IllegalArgumentException(e);
                    }
                } else {
                    declaringClass2 = ((Enum) enumSet.iterator().next()).getDeclaringClass();
                }
                gc8 gc8VarC = lc8Var.c(null, declaringClass2, lc8.d);
                String[] strArr = jc8.e;
                TypeVariable[] typeParameters = EnumSet.class.getTypeParameters();
                int length = typeParameters == null ? 0 : typeParameters.length;
                if (length == 0) {
                    jc8Var2 = jc8.k;
                } else {
                    if (length != 1) {
                        y5.d(length, EnumSet.class.getName(), " with 1 type parameter: class expects ");
                        return null;
                    }
                    jc8Var2 = new jc8(new String[]{typeParameters[0].getName()}, new gc8[]{gc8VarC}, null);
                }
                dl1 dl1Var = (dl1) lc8Var.c(null, EnumSet.class, jc8Var2);
                if (jc8Var2.f()) {
                    gc8 gc8VarO0 = dl1Var.m0(Collection.class).o0();
                    if (!gc8VarO0.equals(gc8VarC)) {
                        l0.i("Non-generic Collection class %s did not resolve to something with element type %s but %s ", new Object[]{u81.t(EnumSet.class), gc8VarC, gc8VarO0});
                        return null;
                    }
                }
                return dl1Var.l0();
            }
            if (obj instanceof EnumMap) {
                EnumMap enumMap = (EnumMap) obj;
                Annotation[] annotationArr2 = u81.a;
                if (enumMap.isEmpty()) {
                    t81 t81Var2 = t81.e;
                    Field field2 = t81Var2.b;
                    if (field2 == null) {
                        m0.g(t81Var2.d, "Cannot figure out type parameter for `EnumMap` (odd JDK platform?), problem: ");
                        return null;
                    }
                    try {
                        declaringClass = (Class) field2.get(enumMap);
                    } catch (Exception e2) {
                        throw new IllegalArgumentException(e2);
                    }
                } else {
                    declaringClass = ((Enum) enumMap.keySet().iterator().next()).getDeclaringClass();
                }
                jc8 jc8Var3 = lc8.d;
                gc8 gc8VarC2 = lc8Var.c(null, declaringClass, jc8Var3);
                gc8 gc8VarC3 = lc8Var.c(null, Object.class, jc8Var3);
                gc8[] gc8VarArr = {gc8VarC2, gc8VarC3};
                String[] strArr2 = jc8.e;
                TypeVariable[] typeParameters2 = EnumMap.class.getTypeParameters();
                if (typeParameters2 == null || typeParameters2.length == 0) {
                    jc8Var = jc8.k;
                } else {
                    int length2 = typeParameters2.length;
                    String[] strArr3 = new String[length2];
                    for (int i = 0; i < length2; i++) {
                        strArr3[i] = typeParameters2[i].getName();
                    }
                    if (length2 != 2) {
                        y5.d(length2, EnumMap.class.getName(), " with 2 type parameters: class expects ");
                        return null;
                    }
                    jc8Var = new jc8(strArr3, gc8VarArr, null);
                }
                q65 q65Var = (q65) lc8Var.c(null, EnumMap.class, jc8Var);
                if (jc8Var.f()) {
                    gc8 gc8VarM0 = q65Var.m0(Map.class);
                    gc8 gc8VarR0 = gc8VarM0.r0();
                    if (!gc8VarR0.equals(gc8VarC2)) {
                        l0.i("Non-generic Map class %s did not resolve to something with key type %s but %s ", new Object[]{u81.t(EnumMap.class), gc8VarC2, gc8VarR0});
                        return null;
                    }
                    gc8 gc8VarO1 = gc8VarM0.o0();
                    if (!gc8VarO1.equals(gc8VarC3)) {
                        l0.i("Non-generic Map class %s did not resolve to something with value type %s but %s ", new Object[]{u81.t(EnumMap.class), gc8VarC3, gc8VarO1});
                        return null;
                    }
                }
                return q65Var.l0();
            }
        } else if (name.indexOf(36) >= 0 && u81.l(clsA) != null) {
            gc8 gc8Var = this.b;
            if (u81.l(gc8Var.f) == null) {
                return gc8Var.f.getName();
            }
        }
        return name;
    }
}
