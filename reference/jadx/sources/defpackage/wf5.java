package defpackage;

import java.lang.annotation.Annotation;
import java.lang.reflect.Method;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class wf5 extends bu1 {
    public final zq8 a;
    public final vf5 b;
    public final vf5 c;

    /* JADX WARN: Code duplicated, block: B:35:0x00b6  */
    public wf5(ri2 ri2Var, x44 x44Var) throws sf5 {
        String name;
        String name2;
        String name3;
        Class[] clsArrL;
        String name4;
        String name5;
        String name6;
        ParameterizedType parameterizedType;
        zq8 zq8Var = new zq8(ri2Var, x44Var);
        this.a = zq8Var;
        vf5<String> vf5Var = new vf5();
        this.b = vf5Var;
        vf5<String> vf5Var2 = new vf5();
        this.c = vf5Var2;
        eg2 eg2VarD = ri2Var.d();
        eg2 eg2VarI = ri2Var.i();
        Class clsJ = ri2Var.j();
        if (clsJ != null) {
            Iterator<E> it = x44Var.c(clsJ, eg2VarD).iterator();
            while (it.hasNext()) {
                qf5 qf5Var = (qf5) ((au1) it.next());
                uf5 uf5Var = qf5Var.c;
                uf5 uf5Var2 = qf5Var.b;
                if (uf5Var2 != null) {
                    String name7 = uf5Var2.getName();
                    uf5 uf5Var3 = (uf5) vf5Var.remove(name7);
                    if (uf5Var3 != null && (uf5Var2.c() instanceof q08)) {
                        uf5Var2 = uf5Var3;
                    }
                    vf5Var.put(name7, uf5Var2);
                }
                String name8 = uf5Var.getName();
                uf5 uf5Var4 = (uf5) vf5Var2.remove(name8);
                if (uf5Var4 != null && (uf5Var.c() instanceof q08)) {
                    uf5Var = uf5Var4;
                }
                vf5Var2.put(name8, uf5Var);
            }
        }
        List<rf5> listK = ri2Var.k();
        int i = 0;
        if (eg2VarI == eg2.b) {
            for (rf5 rf5Var : listK) {
                Annotation[] annotationArr = rf5Var.a;
                Method method = rf5Var.b;
                if (zq8.x(method) != null) {
                    int iV = zq8.v(method);
                    if (iV == 3) {
                        Type[] genericParameterTypes = method.getGenericParameterTypes();
                        if (genericParameterTypes.length > 0) {
                            Type type = genericParameterTypes[0];
                            if (type instanceof ParameterizedType) {
                                parameterizedType = (ParameterizedType) type;
                            } else {
                                parameterizedType = null;
                            }
                        } else {
                            parameterizedType = null;
                        }
                        clsArrL = parameterizedType != null ? z85.l(parameterizedType) : new Class[0];
                    } else if (iV == 1) {
                        Type genericReturnType = method.getGenericReturnType();
                        ParameterizedType parameterizedType2 = genericReturnType instanceof ParameterizedType ? (ParameterizedType) genericReturnType : null;
                        clsArrL = parameterizedType2 != null ? z85.l(parameterizedType2) : new Class[0];
                    } else if (iV == 2) {
                        Type genericReturnType2 = method.getGenericReturnType();
                        ParameterizedType parameterizedType3 = genericReturnType2 instanceof ParameterizedType ? (ParameterizedType) genericReturnType2 : null;
                        clsArrL = parameterizedType3 != null ? z85.l(parameterizedType3) : new Class[0];
                    } else {
                        clsArrL = null;
                    }
                    Class clsX = zq8.x(method);
                    Annotation annotationB = clsX != null ? ((be) zq8Var.b).b(clsX, clsArrL) : null;
                    uf5 uf5VarU = annotationB != null ? zq8.u(method, annotationB, annotationArr) : null;
                    int methodType = uf5VarU.getMethodType();
                    if (methodType == 1 && (name6 = uf5VarU.getName()) != null) {
                        vf5Var2.put(name6, uf5VarU);
                    }
                    if (methodType == 2 && (name5 = uf5VarU.getName()) != null) {
                        vf5Var2.put(name5, uf5VarU);
                    }
                    if (methodType == 3 && (name4 = uf5VarU.getName()) != null) {
                        vf5Var.put(name4, uf5VarU);
                    }
                }
            }
        }
        for (rf5 rf5Var2 : ri2Var.k()) {
            Annotation[] annotationArr2 = rf5Var2.a;
            Method method2 = rf5Var2.b;
            int length = annotationArr2.length;
            int i2 = i;
            while (i2 < length) {
                Annotation annotation = annotationArr2[i2];
                if (annotation instanceof u70) {
                    c(method2, annotation, annotationArr2);
                }
                if (annotation instanceof ut2) {
                    c(method2, annotation, annotationArr2);
                }
                if (annotation instanceof jt2) {
                    c(method2, annotation, annotationArr2);
                }
                if (annotation instanceof pt2) {
                    c(method2, annotation, annotationArr2);
                }
                if (annotation instanceof gt2) {
                    c(method2, annotation, annotationArr2);
                }
                if (annotation instanceof ct2) {
                    c(method2, annotation, annotationArr2);
                }
                if (annotation instanceof mt2) {
                    c(method2, annotation, annotationArr2);
                }
                if (annotation instanceof at2) {
                    c(method2, annotation, annotationArr2);
                }
                if (annotation instanceof vj8) {
                    c(method2, annotation, annotationArr2);
                }
                if (annotation instanceof q08) {
                    c(method2, annotation, annotationArr2);
                }
                if (annotation instanceof r98) {
                    uf5 uf5VarU2 = zq8.u(method2, annotation, annotationArr2);
                    int methodType2 = uf5VarU2.getMethodType();
                    if (methodType2 == 1 && (name3 = uf5VarU2.getName()) != null) {
                        vf5Var2.remove(name3);
                    }
                    if (methodType2 == 2 && (name2 = uf5VarU2.getName()) != null) {
                        vf5Var2.remove(name2);
                    }
                    if (methodType2 == 3 && (name = uf5VarU2.getName()) != null) {
                        vf5Var.remove(name);
                    }
                }
                i2++;
                i = 0;
            }
        }
        for (String str : vf5Var2) {
            uf5 uf5Var5 = (uf5) vf5Var2.get(str);
            if (uf5Var5 != null) {
                uf5 uf5Var6 = (uf5) vf5Var.remove(str);
                if (uf5Var6 != null) {
                    Annotation annotationC = uf5Var5.c();
                    String name9 = uf5Var5.getName();
                    if (!uf5Var6.c().equals(annotationC)) {
                        throw new sf5("Annotations do not match for '%s' in %s", name9, ri2Var);
                    }
                    Class type2 = uf5Var5.getType();
                    if (type2 != uf5Var6.getType()) {
                        throw new sf5("Method types do not match for %s in %s", name9, type2);
                    }
                    add(new qf5(uf5Var5, uf5Var6));
                } else {
                    add(new qf5(uf5Var5, null));
                }
            }
        }
        for (String str2 : vf5Var) {
            uf5 uf5Var7 = (uf5) vf5Var.get(str2);
            if (uf5Var7 != null) {
                uf5 uf5Var8 = (uf5) vf5Var2.remove(str2);
                Method method3 = uf5Var7.getMethod();
                if (uf5Var8 == null) {
                    throw new sf5("No matching get method for %s in %s", method3, ri2Var);
                }
            }
        }
    }

    public final void c(Method method, Annotation annotation, Annotation[] annotationArr) throws sf5 {
        String name;
        String name2;
        String name3;
        this.a.getClass();
        uf5 uf5VarU = zq8.u(method, annotation, annotationArr);
        int methodType = uf5VarU.getMethodType();
        vf5 vf5Var = this.c;
        if (methodType == 1 && (name3 = uf5VarU.getName()) != null) {
            vf5Var.put(name3, uf5VarU);
        }
        if (methodType == 2 && (name2 = uf5VarU.getName()) != null) {
            vf5Var.put(name2, uf5VarU);
        }
        if (methodType != 3 || (name = uf5VarU.getName()) == null) {
            return;
        }
        this.b.put(name, uf5VarU);
    }
}
