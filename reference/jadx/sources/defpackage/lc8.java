package defpackage;

import java.io.Serializable;
import java.lang.annotation.Annotation;
import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.concurrent.atomic.AtomicReference;
import java.util.stream.BaseStream;
import java.util.stream.DoubleStream;
import java.util.stream.IntStream;
import java.util.stream.LongStream;
import java.util.stream.Stream;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class lc8 implements Serializable {
    public static final yg7 G;
    public static final yg7 H;
    public static final yg7 I;
    public static final yg7 J;
    public static final yg7 K;
    public static final yg7 L;
    public static final yg7 M;
    public static final yg7 N;
    public static final gc8[] b = new gc8[0];
    public static final lc8 c = new lc8();
    public static final jc8 d = jc8.k;
    public static final Class e = String.class;
    public static final Class f = Object.class;
    public static final Class k = Comparable.class;
    public static final Class n = Enum.class;
    public static final Class p = cl4.class;
    public static final Class q;
    public static final Class r;
    public static final Class t;
    public static final Class x;
    public static final yg7 y;
    public final wp4 a = new wp4(16, 200);

    static {
        Class cls = Boolean.TYPE;
        q = cls;
        Class cls2 = Double.TYPE;
        r = cls2;
        Class cls3 = Integer.TYPE;
        t = cls3;
        Class cls4 = Long.TYPE;
        x = cls4;
        y = new yg7(cls);
        G = new yg7(cls2);
        H = new yg7(cls3);
        I = new yg7(cls4);
        J = new yg7(String.class);
        K = new yg7(Object.class);
        L = new yg7(Comparable.class);
        M = new yg7(Enum.class);
        N = new yg7(cl4.class);
    }

    public static yg7 a(Class cls) {
        if (!cls.isPrimitive()) {
            if (cls == e) {
                return J;
            }
            if (cls == f) {
                return K;
            }
            if (cls == p) {
                return N;
            }
            return null;
        }
        if (cls == q) {
            return y;
        }
        if (cls == t) {
            return H;
        }
        if (cls == x) {
            return I;
        }
        if (cls == r) {
            return G;
        }
        return null;
    }

    public static boolean e(gc8 gc8Var, gc8 gc8Var2) {
        if (gc8Var2 instanceof x16) {
            ((x16) gc8Var2).H = gc8Var;
            return true;
        }
        if (gc8Var.f == gc8Var2.f) {
            List listE = gc8Var.n0().e();
            List listE2 = gc8Var2.n0().e();
            int size = listE.size();
            for (int i = 0; i < size; i++) {
                if (e((gc8) listE.get(i), (gc8) listE2.get(i))) {
                }
            }
            return true;
        }
        return false;
    }

    public static gc8 f(gc8 gc8Var, Class cls) {
        Class cls2 = gc8Var.f;
        if (cls2 == cls) {
            return gc8Var;
        }
        gc8 gc8VarM0 = gc8Var.m0(cls);
        if (gc8VarM0 == null) {
            gc8VarM0 = null;
            if (!cls.isAssignableFrom(cls2)) {
                l0.i("Class %s not a super-type of %s", new Object[]{cls.getName(), gc8Var});
                return null;
            }
            l0.i("Internal error: class %s not included as super-type for %s", new Object[]{cls.getName(), gc8Var});
        }
        return gc8VarM0;
    }

    public static gc8[] h(gc8 gc8Var, Class cls) {
        gc8 gc8VarM0 = gc8Var.m0(cls);
        return gc8VarM0 == null ? b : gc8VarM0.n0().b;
    }

    public final gc8 b(vq vqVar, Type type, jc8 jc8Var) {
        Type[] bounds;
        gc8 gc8Var;
        jc8 jc8VarC;
        if (type instanceof Class) {
            return c(vqVar, (Class) type, d);
        }
        if (type instanceof ParameterizedType) {
            ParameterizedType parameterizedType = (ParameterizedType) type;
            Class cls = (Class) parameterizedType.getRawType();
            if (cls == n) {
                return M;
            }
            if (cls == k) {
                return L;
            }
            Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
            int length = actualTypeArguments == null ? 0 : actualTypeArguments.length;
            if (length == 0) {
                jc8VarC = d;
            } else {
                gc8[] gc8VarArr = new gc8[length];
                for (int i = 0; i < length; i++) {
                    gc8VarArr[i] = b(vqVar, actualTypeArguments[i], jc8Var);
                }
                jc8VarC = jc8.c(cls, gc8VarArr);
            }
            return c(vqVar, cls, jc8VarC);
        }
        if (type instanceof gc8) {
            return (gc8) type;
        }
        if (type instanceof GenericArrayType) {
            gc8 gc8VarB = b(vqVar, ((GenericArrayType) type).getGenericComponentType(), jc8Var);
            int i2 = t50.I;
            return new t50(gc8VarB, jc8Var, Array.newInstance((Class<?>) gc8VarB.f, 0), null, null, false);
        }
        if (!(type instanceof TypeVariable)) {
            if (type instanceof WildcardType) {
                return b(vqVar, ((WildcardType) type).getUpperBounds()[0], jc8Var);
            }
            StringBuilder sb = new StringBuilder("Unrecognized Type: ");
            sb.append(type == null ? "[null]" : type.toString());
            throw new IllegalArgumentException(sb.toString());
        }
        TypeVariable typeVariable = (TypeVariable) type;
        String name = typeVariable.getName();
        gc8 gc8Var2 = null;
        if (jc8Var == null) {
            c6.f(eq3.k("Null `bindings` passed (type variable \"", name, "\")"));
            return null;
        }
        String[] strArr = jc8Var.a;
        int length2 = strArr.length;
        for (int i3 = 0; i3 < length2; i3++) {
            if (name.equals(strArr[i3])) {
                gc8Var2 = jc8Var.b[i3];
                if (!(gc8Var2 instanceof kl6) || (gc8Var = ((kl6) gc8Var2).G) == null) {
                    break;
                    break;
                }
                gc8Var2 = gc8Var;
                break;
            }
        }
        if (gc8Var2 != null) {
            return gc8Var2;
        }
        String[] strArr2 = jc8Var.c;
        if (strArr2 != null) {
            int length3 = strArr2.length;
            do {
                length3--;
                if (length3 >= 0) {
                }
            } while (!name.equals(strArr2[length3]));
            return K;
        }
        String[] strArr3 = jc8Var.c;
        int length4 = strArr3 == null ? 0 : strArr3.length;
        String[] strArr4 = length4 == 0 ? new String[1] : (String[]) Arrays.copyOf(strArr3, length4 + 1);
        strArr4[length4] = name;
        jc8 jc8Var2 = new jc8(jc8Var.a, jc8Var.b, strArr4);
        synchronized (typeVariable) {
            bounds = typeVariable.getBounds();
        }
        return b(vqVar, bounds[0], jc8Var2);
    }

    /* JADX WARN: Code duplicated, block: B:122:0x0224  */
    public final gc8 c(vq vqVar, Class cls, jc8 jc8Var) {
        Object obj;
        vq vqVar2;
        vq vqVar3;
        gc8 gc8VarB;
        gc8[] gc8VarArrD;
        gc8[] gc8VarArr;
        gc8 gc8VarB0;
        gc8 gc8Var;
        jc8 jc8Var2;
        gc8 gc8Var2;
        Class cls2;
        jc8 jc8Var3;
        Class cls3;
        gc8 gc8Var3;
        hc8 hc8Var;
        Class cls4 = cls;
        yg7 yg7VarA = a(cls4);
        if (yg7VarA != null) {
            return yg7VarA;
        }
        int i = 0;
        if (jc8Var == null || jc8Var.f()) {
            obj = cls4;
        } else {
            gc8[] gc8VarArr2 = jc8Var.b;
            int length = gc8VarArr2.length;
            int i2 = 0;
            while (true) {
                if (i2 >= length) {
                    hc8Var = new hc8(cls4, gc8VarArr2, jc8Var.d);
                    break;
                }
                if (gc8VarArr2[i2] instanceof p94) {
                    hc8Var = null;
                    break;
                }
                i2++;
            }
            obj = hc8Var;
        }
        wp4 wp4Var = this.a;
        gc8 gc8Var4 = obj == null ? null : (gc8) wp4Var.a.get(obj);
        if (gc8Var4 != null) {
            return gc8Var4;
        }
        if (vqVar == null) {
            vqVar3 = new vq(null, cls4);
        } else {
            if (((Class) vqVar.c) != cls4) {
                Object obj2 = vqVar.b;
                while (true) {
                    vq vqVar4 = (vq) obj2;
                    if (vqVar4 == null) {
                        vqVar2 = null;
                        break;
                    }
                    if (((Class) vqVar4.c) == cls4) {
                        vqVar2 = vqVar4;
                        break;
                    }
                    obj2 = vqVar4.b;
                }
            } else {
                vqVar2 = vqVar;
            }
            if (vqVar2 != null) {
                kl6 kl6Var = new kl6(cls, d, null, null, 0, null, null, false);
                if (((ArrayList) vqVar2.d) == null) {
                    vqVar2.d = new ArrayList();
                }
                ((ArrayList) vqVar2.d).add(kl6Var);
                return kl6Var;
            }
            vqVar3 = new vq(vqVar, cls4);
        }
        if (cls4.isArray()) {
            gc8 gc8VarB2 = b(vqVar3, cls4.getComponentType(), jc8Var);
            int i3 = t50.I;
            gc8VarB0 = new t50(gc8VarB2, jc8Var, Array.newInstance((Class<?>) gc8VarB2.f, 0), null, null, false);
            gc8Var2 = null;
        } else {
            if (cls4.isInterface()) {
                gc8VarArrD = d(vqVar3, cls4, jc8Var);
                gc8VarB = null;
            } else {
                Annotation[] annotationArr = u81.a;
                Type genericSuperclass = cls4.getGenericSuperclass();
                gc8VarB = genericSuperclass == null ? null : b(vqVar3, genericSuperclass, jc8Var);
                gc8VarArrD = d(vqVar3, cls4, jc8Var);
            }
            gc8 gc8Var5 = J;
            if (cls4 == Properties.class) {
                gc8VarArr = gc8VarArrD;
                gc8Var = gc8VarB;
                gc8Var2 = null;
                cls2 = Properties.class;
                gc8VarB0 = new q65(cls4, jc8Var, gc8Var, gc8VarArr, gc8Var5, gc8Var5, null, null, false);
                jc8Var2 = jc8Var;
            } else {
                gc8 gc8Var6 = gc8Var4;
                gc8VarArr = gc8VarArrD;
                gc8VarB0 = gc8Var6;
                gc8Var = gc8VarB;
                jc8Var2 = jc8Var;
                gc8Var2 = null;
                cls2 = Properties.class;
                if (gc8Var != null) {
                    gc8VarB0 = gc8Var.B0(cls4, jc8Var2, gc8Var, gc8VarArr);
                }
            }
            if (gc8VarB0 == null) {
                jc8 jc8Var4 = jc8Var2 == null ? d : jc8Var2;
                gc8 gc8Var7 = K;
                if (cls4 == Map.class) {
                    if (cls4 != cls2) {
                        List listE = jc8Var4.e();
                        int size = listE.size();
                        if (size == 0) {
                            gc8Var5 = gc8Var7;
                        } else {
                            if (size != 2) {
                                throw new IllegalArgumentException(String.format("Strange Map type %s with %d type parameter%s (%s), can not resolve", u81.t(cls4), Integer.valueOf(size), size == 1 ? "" : "s", jc8Var4));
                            }
                            gc8 gc8Var8 = (gc8) listE.get(0);
                            gc8Var3 = (gc8) listE.get(1);
                            gc8Var5 = gc8Var8;
                            jc8Var4 = jc8Var4;
                        }
                        jc8Var3 = jc8Var2;
                        cls3 = cls;
                        gc8VarB0 = new q65(cls3, jc8Var4, gc8Var, gc8VarArr, gc8Var5, gc8Var3, null, null, false);
                    }
                    gc8Var3 = gc8Var5;
                    jc8Var3 = jc8Var2;
                    cls3 = cls;
                    gc8VarB0 = new q65(cls3, jc8Var4, gc8Var, gc8VarArr, gc8Var5, gc8Var3, null, null, false);
                } else {
                    jc8Var3 = jc8Var2;
                    cls3 = cls4;
                    jc8 jc8Var5 = jc8Var4;
                    if (cls3 == Collection.class) {
                        List listE2 = jc8Var5.e();
                        if (!listE2.isEmpty()) {
                            if (listE2.size() != 1) {
                                z5.d(cls3.getName(), ": cannot determine type parameters", "Strange Collection type ");
                                return gc8Var2;
                            }
                            gc8Var7 = (gc8) listE2.get(0);
                        }
                        gc8VarB0 = new dl1(cls3, jc8Var5, gc8Var, gc8VarArr, gc8Var7, null, null, false);
                    } else if (cls3 == AtomicReference.class) {
                        List listE3 = jc8Var5.e();
                        if (!listE3.isEmpty()) {
                            if (listE3.size() != 1) {
                                z5.d(cls3.getName(), ": cannot determine type parameters", "Strange Reference type ");
                                return gc8Var2;
                            }
                            gc8Var7 = (gc8) listE3.get(0);
                        }
                        gc8VarB0 = new mh6(cls3, jc8Var5, gc8Var, gc8VarArr, gc8Var7, null, null, null, false);
                    } else if (cls3 == Iterator.class || cls3 == Stream.class) {
                        List listE4 = jc8Var5.e();
                        if (!listE4.isEmpty()) {
                            if (listE4.size() != 1) {
                                z5.d(cls.getName(), ": cannot determine type parameters", "Strange Iteration type ");
                                return gc8Var2;
                            }
                            gc8Var7 = (gc8) listE4.get(0);
                        }
                        cls3 = cls;
                        gc8VarB0 = new rg4(cls3, jc8Var5, gc8Var, gc8VarArr, gc8Var7, null, null, false);
                    } else if (!BaseStream.class.isAssignableFrom(cls3)) {
                        cls3 = cls;
                        gc8VarB0 = gc8Var2;
                    } else if (DoubleStream.class.isAssignableFrom(cls3)) {
                        gc8VarB0 = new rg4(cls3, jc8Var5, gc8Var, gc8VarArr, G, null, null, false);
                    } else if (IntStream.class.isAssignableFrom(cls3)) {
                        gc8VarB0 = new rg4(cls3, jc8Var5, gc8Var, gc8VarArr, H, null, null, false);
                    } else if (LongStream.class.isAssignableFrom(cls3)) {
                        gc8VarB0 = new rg4(cls3, jc8Var5, gc8Var, gc8VarArr, I, null, null, false);
                        cls3 = cls;
                    } else {
                        cls3 = cls;
                        gc8VarB0 = gc8Var2;
                    }
                }
                if (gc8VarB0 == null) {
                    int length2 = gc8VarArr.length;
                    while (true) {
                        if (i >= length2) {
                            gc8VarB0 = gc8Var2;
                            break;
                        }
                        gc8 gc8VarB1 = gc8VarArr[i].B0(cls3, jc8Var3, gc8Var, gc8VarArr);
                        if (gc8VarB1 != null) {
                            gc8VarB0 = gc8VarB1;
                            break;
                        }
                        i++;
                    }
                    if (gc8VarB0 == null) {
                        gc8VarB0 = new yg7(cls3, jc8Var3, gc8Var, gc8VarArr);
                    }
                }
            }
        }
        cls4 = cls4;
        ArrayList<kl6> arrayList = (ArrayList) vqVar3.d;
        if (arrayList != null) {
            for (kl6 kl6Var2 : arrayList) {
                if (kl6Var2.G != null) {
                    l0.f("Trying to re-set self reference; old value = ", kl6Var2.G, ", new = ", gc8VarB0);
                    return gc8Var2;
                }
                kl6Var2.G = gc8VarB0;
            }
        }
        if (obj != null && !gc8VarB0.v0()) {
            wp4Var.a.g(obj, gc8VarB0, true);
        }
        return gc8VarB0;
    }

    public final gc8[] d(vq vqVar, Class cls, jc8 jc8Var) {
        Annotation[] annotationArr = u81.a;
        Type[] genericInterfaces = cls.getGenericInterfaces();
        if (genericInterfaces == null || genericInterfaces.length == 0) {
            return b;
        }
        int length = genericInterfaces.length;
        gc8[] gc8VarArr = new gc8[length];
        for (int i = 0; i < length; i++) {
            gc8VarArr[i] = b(vqVar, genericInterfaces[i], jc8Var);
        }
        return gc8VarArr;
    }

    /* JADX WARN: Code duplicated, block: B:106:0x0155 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:38:0x0072  */
    /* JADX WARN: Code duplicated, block: B:40:0x007c A[ADDED_TO_REGION, REMOVE] */
    /* JADX WARN: Code duplicated, block: B:41:0x0082  */
    /* JADX WARN: Code duplicated, block: B:46:0x0094 A[LOOP:0: B:45:0x0092->B:46:0x0094, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:49:0x00ac  */
    /* JADX WARN: Code duplicated, block: B:52:0x00c9  */
    /* JADX WARN: Code duplicated, block: B:54:0x00d1  */
    /* JADX WARN: Code duplicated, block: B:55:0x00d8  */
    /* JADX WARN: Code duplicated, block: B:58:0x00df  */
    /* JADX WARN: Code duplicated, block: B:60:0x00e7  */
    /* JADX WARN: Code duplicated, block: B:61:0x00ea  */
    /* JADX WARN: Code duplicated, block: B:63:0x00ee  */
    /* JADX WARN: Code duplicated, block: B:68:0x00f9  */
    /* JADX WARN: Code duplicated, block: B:79:0x0134 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:85:0x014e  */
    /* JADX WARN: Code duplicated, block: B:87:0x0154  */
    /* JADX WARN: Code duplicated, block: B:92:0x0169  */
    /* JADX WARN: Code duplicated, block: B:99:0x012e A[SYNTHETIC] */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0060, code lost:
    
        if (r3 == java.util.EnumSet.class) goto L36;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final defpackage.gc8 g(defpackage.gc8 r24, java.lang.Class r25, boolean r26) {
        /*
            Method dump skipped, instruction units count: 403
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.lc8.g(gc8, java.lang.Class, boolean):gc8");
    }
}
