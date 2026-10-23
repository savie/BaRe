package defpackage;

import java.lang.annotation.Annotation;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class hd extends jb9 implements qc8 {
    public static final gd a0;
    public final gc8 M;
    public final Class N;
    public final jc8 O;
    public final List P;
    public final as5 Q;
    public final lc8 R;
    public final h81 S;
    public final Class T;
    public final boolean U;
    public final ee V;
    public gd W;
    public sd X;
    public List Y;
    public transient Boolean Z;

    static {
        List list = Collections.EMPTY_LIST;
        a0 = new gd(0, null, list, list);
    }

    public hd(Class cls) {
        this.M = null;
        this.N = cls;
        this.P = Collections.EMPTY_LIST;
        this.T = null;
        this.V = cy0.a;
        this.O = jc8.k;
        this.Q = null;
        this.S = null;
        this.R = null;
        this.U = false;
    }

    @Override // defpackage.jb9
    public final int A() {
        return this.N.getModifiers();
    }

    @Override // defpackage.jb9
    public final String B() {
        return this.N.getName();
    }

    @Override // defpackage.jb9
    public final Class C() {
        return this.N;
    }

    @Override // defpackage.jb9
    public final gc8 D() {
        return this.M;
    }

    @Override // defpackage.qc8
    public final gc8 c(Type type) {
        return this.R.b(null, type, this.O);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return u81.n(hd.class, obj) && ((hd) obj).N == this.N;
    }

    public final int hashCode() {
        return this.N.hashCode();
    }

    /* JADX WARN: Code duplicated, block: B:101:0x01b8 A[LOOP:6: B:100:0x01b6->B:101:0x01b8, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:104:0x01d8  */
    /* JADX WARN: Code duplicated, block: B:107:0x01ee A[LOOP:7: B:103:0x01d6->B:107:0x01ee, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:111:0x01f9  */
    /* JADX WARN: Code duplicated, block: B:113:0x0201  */
    /* JADX WARN: Code duplicated, block: B:117:0x0218  */
    /* JADX WARN: Code duplicated, block: B:120:0x0223  */
    /* JADX WARN: Code duplicated, block: B:144:0x027a  */
    /* JADX WARN: Code duplicated, block: B:146:0x0280  */
    /* JADX WARN: Code duplicated, block: B:149:0x028f A[LOOP:10: B:145:0x027e->B:149:0x028f, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:153:0x0299  */
    /* JADX WARN: Code duplicated, block: B:155:0x02a3  */
    /* JADX WARN: Code duplicated, block: B:158:0x02ae A[LOOP:11: B:154:0x02a1->B:158:0x02ae, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:161:0x02b8  */
    /* JADX WARN: Code duplicated, block: B:164:0x02c5  */
    /* JADX WARN: Code duplicated, block: B:172:0x02df  */
    /* JADX WARN: Code duplicated, block: B:186:0x032a  */
    /* JADX WARN: Code duplicated, block: B:188:0x032d  */
    /* JADX WARN: Code duplicated, block: B:190:0x033f  */
    /* JADX WARN: Code duplicated, block: B:195:0x0354  */
    /* JADX WARN: Code duplicated, block: B:203:0x036b  */
    /* JADX WARN: Code duplicated, block: B:209:0x0385  */
    /* JADX WARN: Code duplicated, block: B:221:0x0171 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:222:0x037b A[EDGE_INSN: B:222:0x037b->B:206:0x037b BREAK  A[LOOP:2: B:201:0x0365->B:224:0x0365], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:223:0x0377 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:225:0x0365 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:227:0x0395 A[EDGE_INSN: B:227:0x0395->B:212:0x0395 BREAK  A[LOOP:3: B:207:0x0381->B:229:0x0381], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:228:0x0391 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:230:0x0381 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:238:0x01e0 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:244:0x0229 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:245:0x0229 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:252:0x02ec A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:253:0x02ec A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:254:0x0294 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:255:0x0296 A[EDGE_INSN: B:255:0x0296->B:151:0x0296 BREAK  A[LOOP:10: B:145:0x027e->B:149:0x028f], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:256:0x02b1 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:49:0x00c1  */
    /* JADX WARN: Code duplicated, block: B:74:0x0150  */
    /* JADX WARN: Code duplicated, block: B:76:0x015c  */
    /* JADX WARN: Code duplicated, block: B:77:0x015e  */
    /* JADX WARN: Code duplicated, block: B:80:0x0167 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:81:0x0169  */
    /* JADX WARN: Code duplicated, block: B:85:0x0176  */
    /* JADX WARN: Code duplicated, block: B:86:0x017a  */
    /* JADX WARN: Code duplicated, block: B:88:0x0186 A[LOOP:4: B:87:0x0184->B:88:0x0186, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:90:0x018f  */
    /* JADX WARN: Code duplicated, block: B:92:0x0198  */
    /* JADX WARN: Code duplicated, block: B:94:0x01a4  */
    /* JADX WARN: Code duplicated, block: B:95:0x01a6  */
    /* JADX WARN: Code duplicated, block: B:97:0x01ae  */
    /* JADX WARN: Code duplicated, block: B:98:0x01b1 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:99:0x01b3  */
    public final gd p0() {
        s81 s81Var;
        ArrayList arrayList;
        int i;
        List list;
        gc8 gc8Var;
        int parameterCount;
        int i2;
        ArrayList arrayList2;
        int i3;
        int size;
        ArrayList arrayList3;
        int i4;
        int i5;
        List list2;
        int i6;
        ArrayList arrayList4;
        Class cls;
        TypeVariable<Method>[] typeParameters;
        jc8 jc8Var;
        qc8 ibVar;
        TypeVariable<Method>[] typeVariableArr;
        gc8 gc8Var2;
        int length;
        int i7;
        TypeVariable<Method> typeVariable;
        Type[] bounds;
        int length2;
        int i8;
        int iIndexOf;
        gc8 gc8Var3;
        boolean zA0;
        boolean zA1;
        int i9;
        int i10;
        Method[] declaredMethods;
        int length3;
        wb5[] wb5VarArr;
        int i11;
        Method method;
        boolean z;
        Method[] methodArr;
        wb5 wb5Var;
        int i12;
        int i13;
        jd jdVar;
        int size2;
        int size3;
        boolean z2;
        gd gdVar = this.W;
        if (gdVar == null) {
            gc8 gc8Var4 = this.M;
            if (gc8Var4 == null) {
                gdVar = a0;
            } else {
                Class cls2 = this.T;
                boolean z3 = (cls2 != null) | this.U;
                as5 as5Var = this.Q;
                kd kdVar = new kd(as5Var, this, z3);
                boolean zY0 = gc8Var4.y0();
                Class cls3 = gc8Var4.f;
                if (zY0) {
                    s81Var = null;
                    arrayList = null;
                } else {
                    s81Var = null;
                    arrayList = null;
                    for (s81 s81Var2 : u81.k(cls3)) {
                        if (!s81Var2.a.isSynthetic()) {
                            int parameterCount2 = s81Var2.d;
                            if (parameterCount2 < 0) {
                                parameterCount2 = s81Var2.a.getParameterCount();
                                s81Var2.d = parameterCount2;
                            }
                            if (parameterCount2 == 0) {
                                s81Var = s81Var2;
                            } else {
                                if (arrayList == null) {
                                    arrayList = new ArrayList();
                                }
                                arrayList.add(s81Var2);
                            }
                        }
                    }
                }
                hd hdVar = kdVar.e;
                if (arrayList == null) {
                    list = Collections.EMPTY_LIST;
                    if (s81Var == null) {
                        gc8Var = gc8Var4;
                    } else {
                        i = 0;
                    }
                    arrayList2 = null;
                    for (Method method2 : u81.j(cls3)) {
                        if (Modifier.isStatic(method2.getModifiers())) {
                            z2 = !method2.isSynthetic();
                        } else {
                            z2 = false;
                        }
                        if (z2) {
                            if (arrayList2 == null) {
                                arrayList2 = new ArrayList();
                            }
                            arrayList2.add(method2);
                        }
                    }
                    if (arrayList2 == null) {
                        list2 = Collections.EMPTY_LIST;
                    } else {
                        size = arrayList2.size();
                        arrayList3 = new ArrayList(size);
                        for (i4 = 0; i4 < size; i4++) {
                            arrayList3.add(null);
                        }
                        if (cls2 != null) {
                            declaredMethods = cls2.getDeclaredMethods();
                            length3 = declaredMethods.length;
                            wb5VarArr = null;
                            i11 = 0;
                            while (i11 < length3) {
                                method = declaredMethods[i11];
                                if (Modifier.isStatic(method.getModifiers())) {
                                    z = !method.isSynthetic();
                                } else {
                                    z = false;
                                }
                                if (z) {
                                    if (wb5VarArr == null) {
                                        wb5VarArr = new wb5[size];
                                        i13 = 0;
                                        while (i13 < size) {
                                            wb5VarArr[i13] = new wb5((Method) arrayList2.get(i13));
                                            i13++;
                                            declaredMethods = declaredMethods;
                                        }
                                    }
                                    methodArr = declaredMethods;
                                    wb5Var = new wb5(method);
                                    for (i12 = 0; i12 < size; i12++) {
                                        if (wb5Var.equals(wb5VarArr[i12])) {
                                            arrayList3.set(i12, kdVar.J((Method) arrayList2.get(i12), hdVar, method));
                                            break;
                                        }
                                    }
                                } else {
                                    methodArr = declaredMethods;
                                }
                                i11++;
                                declaredMethods = methodArr;
                            }
                        }
                        i5 = 0;
                        while (i5 < size) {
                            if (((pd) arrayList3.get(i5)) == null) {
                                Method method3 = (Method) arrayList2.get(i5);
                                typeParameters = method3.getTypeParameters();
                                if (typeParameters.length != 0 || gc8Var.n0().f()) {
                                    i6 = size;
                                } else {
                                    Type genericReturnType = method3.getGenericReturnType();
                                    if (genericReturnType instanceof ParameterizedType) {
                                        ParameterizedType parameterizedType = (ParameterizedType) genericReturnType;
                                        if (cls3.equals(parameterizedType.getRawType())) {
                                            Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
                                            ArrayList arrayList5 = new ArrayList(typeParameters.length);
                                            ArrayList arrayList6 = new ArrayList(typeParameters.length);
                                            i6 = size;
                                            int i14 = 0;
                                            while (true) {
                                                if (i14 < actualTypeArguments.length) {
                                                    TypeVariable typeVariableF = ho6.F(actualTypeArguments[i14]);
                                                    if (typeVariableF != null) {
                                                        String name = typeVariableF.getName();
                                                        if (name != null) {
                                                            arrayList4 = arrayList2;
                                                            jc8 jc8VarN0 = gc8Var.n0();
                                                            if (i14 >= 0) {
                                                                gc8[] gc8VarArr = jc8VarN0.b;
                                                                cls = cls3;
                                                                if (i14 < gc8VarArr.length) {
                                                                    gc8Var2 = gc8VarArr[i14];
                                                                }
                                                                if (gc8Var2 == null) {
                                                                    length = typeParameters.length;
                                                                    typeVariableArr = typeParameters;
                                                                    i7 = 0;
                                                                    while (true) {
                                                                        if (i7 < length) {
                                                                            typeVariable = null;
                                                                            break;
                                                                        }
                                                                        typeVariable = typeVariableArr[i7];
                                                                        i10 = length;
                                                                        if (name.equals(typeVariable.getName())) {
                                                                            break;
                                                                        }
                                                                        i7++;
                                                                        length = i10;
                                                                    }
                                                                    if (typeVariable == null) {
                                                                        bounds = typeVariable.getBounds();
                                                                        length2 = bounds.length;
                                                                        i8 = 0;
                                                                        while (true) {
                                                                            if (i8 >= length2) {
                                                                                iIndexOf = arrayList5.indexOf(name);
                                                                                if (iIndexOf != -1) {
                                                                                    gc8Var3 = (gc8) arrayList6.get(iIndexOf);
                                                                                    if (gc8Var2.equals(gc8Var3)) {
                                                                                        continue;
                                                                                    } else {
                                                                                        zA0 = gc8Var3.A0(gc8Var2.f);
                                                                                        zA1 = gc8Var2.A0(gc8Var3.f);
                                                                                        if (!zA0 || zA1) {
                                                                                            if (!(zA0 ^ zA1) && zA1) {
                                                                                                arrayList6.set(iIndexOf, gc8Var2);
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                } else {
                                                                                    arrayList5.add(name);
                                                                                    arrayList6.add(gc8Var2);
                                                                                }
                                                                            } else {
                                                                                i9 = i8;
                                                                                if (!ho6.H(hdVar, gc8Var2, bounds[i9])) {
                                                                                    i8 = i9 + 1;
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            } else {
                                                                cls = cls3;
                                                                jc8VarN0.getClass();
                                                            }
                                                            gc8Var2 = null;
                                                            if (gc8Var2 == null) {
                                                                length = typeParameters.length;
                                                                typeVariableArr = typeParameters;
                                                                i7 = 0;
                                                                while (true) {
                                                                    if (i7 < length) {
                                                                        typeVariable = null;
                                                                        break;
                                                                    }
                                                                    typeVariable = typeVariableArr[i7];
                                                                    i10 = length;
                                                                    if (name.equals(typeVariable.getName())) {
                                                                        break;
                                                                        break;
                                                                    }
                                                                    i7++;
                                                                    length = i10;
                                                                }
                                                                if (typeVariable == null) {
                                                                    bounds = typeVariable.getBounds();
                                                                    length2 = bounds.length;
                                                                    i8 = 0;
                                                                    while (true) {
                                                                        if (i8 >= length2) {
                                                                            iIndexOf = arrayList5.indexOf(name);
                                                                            if (iIndexOf != -1) {
                                                                                gc8Var3 = (gc8) arrayList6.get(iIndexOf);
                                                                                if (gc8Var2.equals(gc8Var3)) {
                                                                                    continue;
                                                                                } else {
                                                                                    zA0 = gc8Var3.A0(gc8Var2.f);
                                                                                    zA1 = gc8Var2.A0(gc8Var3.f);
                                                                                    if (!zA0) {
                                                                                    }
                                                                                    if (!(zA0 ^ zA1)) {
                                                                                    }
                                                                                }
                                                                            } else {
                                                                                arrayList5.add(name);
                                                                                arrayList6.add(gc8Var2);
                                                                            }
                                                                        } else {
                                                                            i9 = i8;
                                                                            if (!ho6.H(hdVar, gc8Var2, bounds[i9])) {
                                                                                i8 = i9 + 1;
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    } else {
                                                        arrayList4 = arrayList2;
                                                        cls = cls3;
                                                        typeVariableArr = typeParameters;
                                                    }
                                                    i14++;
                                                    arrayList2 = arrayList4;
                                                    cls3 = cls;
                                                    typeParameters = typeVariableArr;
                                                } else {
                                                    arrayList4 = arrayList2;
                                                    cls = cls3;
                                                    if (!arrayList5.isEmpty()) {
                                                        jc8Var = (arrayList5.isEmpty() || arrayList6.isEmpty()) ? jc8.k : new jc8((String[]) arrayList5.toArray(jc8.e), (gc8[]) arrayList6.toArray(jc8.f), null);
                                                    }
                                                }
                                                jc8Var = null;
                                            }
                                        } else {
                                            i6 = size;
                                        }
                                    } else {
                                        i6 = size;
                                    }
                                    if (jc8Var == null) {
                                        ibVar = hdVar;
                                    } else {
                                        ibVar = new ib(13, this.R, jc8Var);
                                    }
                                    arrayList3.set(i5, kdVar.J(method3, ibVar, null));
                                }
                                arrayList4 = arrayList2;
                                cls = cls3;
                                jc8Var = null;
                                if (jc8Var == null) {
                                    ibVar = hdVar;
                                } else {
                                    ibVar = new ib(13, this.R, jc8Var);
                                }
                                arrayList3.set(i5, kdVar.J(method3, ibVar, null));
                            } else {
                                i6 = size;
                                arrayList4 = arrayList2;
                                cls = cls3;
                            }
                            i5++;
                            size = i6;
                            arrayList2 = arrayList4;
                            cls3 = cls;
                        }
                        list2 = arrayList3;
                    }
                    if (kdVar.f) {
                        jdVar = kdVar.k;
                        if (jdVar != null && as5Var.X(jdVar)) {
                            kdVar.k = null;
                        }
                        size2 = list.size();
                        while (true) {
                            size2--;
                            if (size2 >= 0) {
                                break;
                            }
                            if (as5Var.X((od) list.get(size2))) {
                                list.remove(size2);
                            }
                        }
                        size3 = list2.size();
                        while (true) {
                            size3--;
                            if (size3 >= 0) {
                                break;
                            }
                            if (as5Var.X((od) list2.get(size3))) {
                                list2.remove(size3);
                            }
                        }
                    }
                    gdVar = new gd(0, kdVar.k, list, list2);
                } else {
                    int size4 = arrayList.size();
                    ArrayList arrayList7 = new ArrayList(size4);
                    for (int i15 = 0; i15 < size4; i15++) {
                        arrayList7.add(null);
                    }
                    i = size4;
                    list = arrayList7;
                }
                s79[] s79VarArr = ol1.c;
                if (cls2 != null) {
                    s81[] s81VarArrK = u81.k(cls2);
                    wb5[] wb5VarArr2 = null;
                    int i16 = 0;
                    for (int length4 = s81VarArrK.length; i16 < length4; length4 = length4) {
                        s81 s81Var3 = s81VarArrK[i16];
                        gc8 gc8Var5 = gc8Var4;
                        int i17 = s81Var3.d;
                        Constructor constructor = s81Var3.a;
                        if (i17 < 0) {
                            parameterCount = constructor.getParameterCount();
                            s81Var3.d = parameterCount;
                        } else {
                            parameterCount = i17;
                        }
                        if (parameterCount == 0) {
                            if (s81Var != null) {
                                kdVar.k = new jd(hdVar, s81Var.a, kdVar.H(s81Var, s81Var3), s79VarArr);
                                i2 = i16;
                                s81Var = null;
                            } else {
                                i2 = i16;
                            }
                        } else if (arrayList != null) {
                            if (wb5VarArr2 == null) {
                                wb5VarArr2 = new wb5[i];
                                int i18 = 0;
                                while (i18 < i) {
                                    int i19 = i18;
                                    wb5VarArr2[i19] = new wb5(((s81) arrayList.get(i18)).a);
                                    i18 = i19 + 1;
                                    i16 = i16;
                                }
                            }
                            i2 = i16;
                            wb5 wb5Var2 = new wb5(constructor);
                            for (int i20 = 0; i20 < i; i20++) {
                                if (wb5Var2.equals(wb5VarArr2[i20])) {
                                    list.set(i20, kdVar.K((s81) arrayList.get(i20), s81Var3));
                                    break;
                                }
                            }
                        } else {
                            i2 = i16;
                        }
                        i16 = i2 + 1;
                        gc8Var4 = gc8Var5;
                    }
                }
                gc8Var = gc8Var4;
                if (s81Var != null) {
                    kdVar.k = new jd(hdVar, s81Var.a, kdVar.H(s81Var, null), s79VarArr);
                }
                for (int i21 = 0; i21 < i; i21++) {
                    if (((jd) list.get(i21)) == null) {
                        list.set(i21, kdVar.K((s81) arrayList.get(i21), null));
                    }
                }
                arrayList2 = null;
                while (i3 < r2) {
                    if (Modifier.isStatic(method2.getModifiers())) {
                        z2 = false;
                    } else {
                        z2 = !method2.isSynthetic();
                    }
                    if (z2) {
                        if (arrayList2 == null) {
                            arrayList2 = new ArrayList();
                        }
                        arrayList2.add(method2);
                    }
                }
                if (arrayList2 == null) {
                    list2 = Collections.EMPTY_LIST;
                } else {
                    size = arrayList2.size();
                    arrayList3 = new ArrayList(size);
                    while (i4 < size) {
                        arrayList3.add(null);
                    }
                    if (cls2 != null) {
                        declaredMethods = cls2.getDeclaredMethods();
                        length3 = declaredMethods.length;
                        wb5VarArr = null;
                        i11 = 0;
                        while (i11 < length3) {
                            method = declaredMethods[i11];
                            if (Modifier.isStatic(method.getModifiers())) {
                                z = false;
                            } else {
                                z = !method.isSynthetic();
                            }
                            if (z) {
                                methodArr = declaredMethods;
                            } else {
                                if (wb5VarArr == null) {
                                    wb5VarArr = new wb5[size];
                                    i13 = 0;
                                    while (i13 < size) {
                                        wb5VarArr[i13] = new wb5((Method) arrayList2.get(i13));
                                        i13++;
                                        declaredMethods = declaredMethods;
                                    }
                                }
                                methodArr = declaredMethods;
                                wb5Var = new wb5(method);
                                while (i12 < size) {
                                    if (wb5Var.equals(wb5VarArr[i12])) {
                                        arrayList3.set(i12, kdVar.J((Method) arrayList2.get(i12), hdVar, method));
                                        break;
                                        break;
                                    }
                                }
                            }
                            i11++;
                            declaredMethods = methodArr;
                        }
                    }
                    i5 = 0;
                    while (i5 < size) {
                        if (((pd) arrayList3.get(i5)) == null) {
                            Method method4 = (Method) arrayList2.get(i5);
                            typeParameters = method4.getTypeParameters();
                            if (typeParameters.length != 0) {
                                i6 = size;
                                arrayList4 = arrayList2;
                                cls = cls3;
                                jc8Var = null;
                            } else {
                                i6 = size;
                                arrayList4 = arrayList2;
                                cls = cls3;
                                jc8Var = null;
                            }
                            if (jc8Var == null) {
                                ibVar = hdVar;
                            } else {
                                ibVar = new ib(13, this.R, jc8Var);
                            }
                            arrayList3.set(i5, kdVar.J(method4, ibVar, null));
                        } else {
                            i6 = size;
                            arrayList4 = arrayList2;
                            cls = cls3;
                        }
                        i5++;
                        size = i6;
                        arrayList2 = arrayList4;
                        cls3 = cls;
                    }
                    list2 = arrayList3;
                }
                if (kdVar.f) {
                    jdVar = kdVar.k;
                    if (jdVar != null) {
                        kdVar.k = null;
                    }
                    size2 = list.size();
                    while (true) {
                        size2--;
                        if (size2 >= 0) {
                            break;
                            break;
                        }
                        if (as5Var.X((od) list.get(size2))) {
                            list.remove(size2);
                        }
                    }
                    size3 = list2.size();
                    while (true) {
                        size3--;
                        if (size3 >= 0) {
                            break;
                            break;
                        }
                        if (as5Var.X((od) list2.get(size3))) {
                            list2.remove(size3);
                        }
                    }
                }
                gdVar = new gd(0, kdVar.k, list, list2);
            }
            this.W = gdVar;
        }
        return gdVar;
    }

    public final List q0() {
        Map mapH;
        List list = this.Y;
        if (list == null) {
            gc8 gc8Var = this.M;
            if (gc8Var == null || (mapH = new nd(this.Q, this.R, this.S, this.U).H(this, gc8Var)) == null) {
                list = Collections.EMPTY_LIST;
            } else {
                ArrayList arrayList = new ArrayList(mapH.size());
                for (md mdVar : mapH.values()) {
                    arrayList.add(new ld(mdVar.a, mdVar.b, mdVar.c.c()));
                }
                list = arrayList;
            }
            this.Y = list;
        }
        return list;
    }

    public final sd r0() {
        h81 h81Var;
        Class clsA;
        sd sdVar = this.X;
        if (sdVar == null) {
            gc8 gc8Var = this.M;
            if (gc8Var == null) {
                sdVar = new sd();
            } else {
                Class cls = gc8Var.f;
                rd rdVar = new rd(this.Q, this.S, this.U);
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                rdVar.H(this, cls, linkedHashMap, this.T);
                Iterator it = this.P.iterator();
                while (true) {
                    boolean zHasNext = it.hasNext();
                    h81Var = rdVar.e;
                    Class clsA2 = null;
                    if (!zHasNext) {
                        break;
                    }
                    gc8 gc8Var2 = (gc8) it.next();
                    if (h81Var != null) {
                        clsA2 = h81Var.a(gc8Var2.f);
                    }
                    rdVar.H(new ib(13, this.R, gc8Var2.n0()), gc8Var2.f, linkedHashMap, clsA2);
                }
                if (h81Var != null && (clsA = h81Var.a(Object.class)) != null) {
                    rdVar.I(this, cls, linkedHashMap, clsA);
                    if (((as5) rdVar.b) != null && !linkedHashMap.isEmpty()) {
                        for (Map.Entry entry : linkedHashMap.entrySet()) {
                            wb5 wb5Var = (wb5) entry.getKey();
                            if ("hashCode".equals(wb5Var.a) && wb5Var.b.length == 0) {
                                try {
                                    Method declaredMethod = Object.class.getDeclaredMethod(wb5Var.a, null);
                                    qd qdVar = (qd) entry.getValue();
                                    qdVar.c = rdVar.g(qdVar.c, declaredMethod.getDeclaredAnnotations());
                                    qdVar.b = declaredMethod;
                                } catch (Exception unused) {
                                }
                            }
                        }
                    }
                }
                if (linkedHashMap.isEmpty()) {
                    sdVar = new sd();
                } else {
                    LinkedHashMap linkedHashMap2 = new LinkedHashMap(linkedHashMap.size());
                    for (Map.Entry entry2 : linkedHashMap.entrySet()) {
                        qd qdVar2 = (qd) entry2.getValue();
                        Method method = qdVar2.b;
                        pd pdVar = method == null ? null : new pd(qdVar2.a, method, qdVar2.c.c(), null);
                        if (pdVar != null) {
                            linkedHashMap2.put(entry2.getKey(), pdVar);
                        }
                    }
                    sd sdVar2 = new sd();
                    sdVar2.a = linkedHashMap2;
                    sdVar = sdVar2;
                }
            }
            this.X = sdVar;
        }
        return sdVar;
    }

    public final String toString() {
        return "[AnnotedClass " + this.N.getName() + "]";
    }

    @Override // defpackage.jb9
    public final Annotation z(Class cls) {
        return this.V.b(cls);
    }

    public hd(gc8 gc8Var, Class cls, List list, Class cls2, ee eeVar, jc8 jc8Var, as5 as5Var, h81 h81Var, lc8 lc8Var, boolean z) {
        this.M = gc8Var;
        this.N = cls;
        this.P = list;
        this.T = cls2;
        this.V = eeVar;
        this.O = jc8Var;
        this.Q = as5Var;
        this.S = h81Var;
        this.R = lc8Var;
        this.U = z;
    }
}
