package defpackage;

import java.lang.annotation.Annotation;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class kd extends ol1 {
    public final hd e;
    public final boolean f;
    public jd k;

    public kd(as5 as5Var, hd hdVar, boolean z) {
        super(as5Var, 0);
        this.e = hdVar;
        this.f = z;
    }

    public final s79 H(s81 s81Var, s81 s81Var2) {
        if (!this.f) {
            return new s79(1);
        }
        Annotation[] declaredAnnotations = s81Var.b;
        if (declaredAnnotations == null) {
            declaredAnnotations = s81Var.a.getDeclaredAnnotations();
            s81Var.b = declaredAnnotations;
        }
        cy0 cy0VarF = f(declaredAnnotations);
        if (s81Var2 != null) {
            Annotation[] declaredAnnotations2 = s81Var2.b;
            if (declaredAnnotations2 == null) {
                declaredAnnotations2 = s81Var2.a.getDeclaredAnnotations();
                s81Var2.b = declaredAnnotations2;
            }
            cy0VarF = e(cy0VarF, declaredAnnotations2);
        }
        return cy0VarF.c();
    }

    public final s79[] I(Annotation[][] annotationArr, Annotation[][] annotationArr2) {
        if (!this.f) {
            return ol1.c;
        }
        int length = annotationArr.length;
        s79[] s79VarArr = new s79[length];
        for (int i = 0; i < length; i++) {
            cy0 cy0VarE = e(vd.j, annotationArr[i]);
            if (annotationArr2 != null) {
                cy0VarE = e(cy0VarE, annotationArr2[i]);
            }
            s79VarArr[i] = cy0VarE.c();
        }
        return s79VarArr;
    }

    public final pd J(Method method, qc8 qc8Var, Method method2) {
        int parameterCount = method.getParameterCount();
        as5 as5Var = (as5) this.b;
        s79[] s79VarArr = ol1.c;
        if (as5Var == null) {
            s79 s79Var = new s79(1);
            if (parameterCount != 0) {
                s79VarArr = new s79[parameterCount];
                for (int i = 0; i < parameterCount; i++) {
                    s79VarArr[i] = new s79(1);
                }
            }
            return new pd(qc8Var, method, s79Var, s79VarArr);
        }
        if (parameterCount == 0) {
            cy0 cy0VarF = f(method.getDeclaredAnnotations());
            if (method2 != null) {
                cy0VarF = e(cy0VarF, method2.getDeclaredAnnotations());
            }
            return new pd(qc8Var, method, cy0VarF.c(), s79VarArr);
        }
        cy0 cy0VarF2 = f(method.getDeclaredAnnotations());
        if (method2 != null) {
            cy0VarF2 = e(cy0VarF2, method2.getDeclaredAnnotations());
        }
        return new pd(qc8Var, method, cy0VarF2.c(), I(method.getParameterAnnotations(), method2 == null ? null : method2.getParameterAnnotations()));
    }

    /* JADX WARN: Code duplicated, block: B:36:0x008d  */
    public final jd K(s81 s81Var, s81 s81Var2) {
        Annotation[][] annotationArr;
        int parameterCount = s81Var.d;
        Constructor constructor = s81Var.a;
        if (parameterCount < 0) {
            parameterCount = constructor.getParameterCount();
            s81Var.d = parameterCount;
        }
        as5 as5Var = (as5) this.b;
        s79[] s79VarArr = ol1.c;
        hd hdVar = this.e;
        if (as5Var == null) {
            s79 s79Var = new s79(1);
            if (parameterCount != 0) {
                s79VarArr = new s79[parameterCount];
                for (int i = 0; i < parameterCount; i++) {
                    s79VarArr[i] = new s79(1);
                }
            }
            return new jd(hdVar, constructor, s79Var, s79VarArr);
        }
        if (parameterCount == 0) {
            return new jd(hdVar, constructor, H(s81Var, s81Var2), s79VarArr);
        }
        Annotation[][] parameterAnnotations = s81Var.c;
        if (parameterAnnotations == null) {
            parameterAnnotations = constructor.getParameterAnnotations();
            s81Var.c = parameterAnnotations;
        }
        Annotation[][] annotationArr2 = null;
        s79VarArrI = null;
        s79[] s79VarArrI = null;
        if (parameterCount != parameterAnnotations.length) {
            Class declaringClass = constructor.getDeclaringClass();
            Annotation[] annotationArr3 = u81.a;
            if (Enum.class.isAssignableFrom(declaringClass) && parameterCount == parameterAnnotations.length + 2) {
                annotationArr = new Annotation[parameterAnnotations.length + 2][];
                System.arraycopy(parameterAnnotations, 0, annotationArr, 2, parameterAnnotations.length);
                s79VarArrI = I(annotationArr, null);
            } else {
                if (declaringClass.isMemberClass() && parameterCount == parameterAnnotations.length + 1) {
                    annotationArr = new Annotation[parameterAnnotations.length + 1][];
                    System.arraycopy(parameterAnnotations, 0, annotationArr, 1, parameterAnnotations.length);
                    annotationArr[0] = ol1.d;
                    s79VarArrI = I(annotationArr, null);
                }
                if (s79VarArrI == null) {
                    throw new IllegalStateException(String.format("Internal error: constructor for %s has mismatch: %d parameters; %d sets of annotations", constructor.getDeclaringClass().getName(), Integer.valueOf(parameterCount), Integer.valueOf(parameterAnnotations.length)));
                }
            }
            parameterAnnotations = annotationArr;
            if (s79VarArrI == null) {
                throw new IllegalStateException(String.format("Internal error: constructor for %s has mismatch: %d parameters; %d sets of annotations", constructor.getDeclaringClass().getName(), Integer.valueOf(parameterCount), Integer.valueOf(parameterAnnotations.length)));
            }
        } else {
            if (s81Var2 != null) {
                Annotation[][] parameterAnnotations2 = s81Var2.c;
                if (parameterAnnotations2 == null) {
                    parameterAnnotations2 = s81Var2.a.getParameterAnnotations();
                    s81Var2.c = parameterAnnotations2;
                }
                annotationArr2 = parameterAnnotations2;
            }
            s79VarArrI = I(parameterAnnotations, annotationArr2);
        }
        return new jd(hdVar, constructor, H(s81Var, s81Var2), s79VarArrI);
    }
}
