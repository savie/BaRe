package defpackage;

import java.lang.annotation.Annotation;
import java.lang.reflect.Method;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class sw3 implements uf5 {
    public final bq1 a = new bq1();
    public final Annotation[] b;
    public final Annotation c;
    public final int d;
    public final Method e;
    public final String f;

    public sw3(y40 y40Var, Annotation annotation, Annotation[] annotationArr) {
        this.e = (Method) y40Var.c;
        this.f = (String) y40Var.d;
        this.d = y40Var.b;
        this.c = annotation;
        this.b = annotationArr;
    }

    @Override // defpackage.uf5
    public final Class b() {
        Type genericReturnType = this.e.getGenericReturnType();
        ParameterizedType parameterizedType = genericReturnType instanceof ParameterizedType ? (ParameterizedType) genericReturnType : null;
        if (parameterizedType == null) {
            return Object.class;
        }
        Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
        if (actualTypeArguments.length > 0) {
            return z85.k(actualTypeArguments[0]);
        }
        return null;
    }

    @Override // defpackage.uf5
    public final Annotation c() {
        return this.c;
    }

    @Override // defpackage.uf5
    public final Class[] e() {
        Type genericReturnType = this.e.getGenericReturnType();
        ParameterizedType parameterizedType = genericReturnType instanceof ParameterizedType ? (ParameterizedType) genericReturnType : null;
        return parameterizedType != null ? z85.l(parameterizedType) : new Class[0];
    }

    @Override // defpackage.uf5
    public final Annotation getAnnotation(Class cls) {
        bq1 bq1Var = this.a;
        if (bq1Var.isEmpty()) {
            for (Annotation annotation : this.b) {
                bq1Var.put(annotation.annotationType(), annotation);
            }
        }
        return (Annotation) bq1Var.get(cls);
    }

    @Override // defpackage.uf5
    public final Class getDeclaringClass() {
        return this.e.getDeclaringClass();
    }

    @Override // defpackage.uf5
    public final Method getMethod() {
        Method method = this.e;
        if (!method.isAccessible()) {
            method.setAccessible(true);
        }
        return method;
    }

    @Override // defpackage.uf5
    public final int getMethodType() {
        return this.d;
    }

    @Override // defpackage.uf5
    public final String getName() {
        return this.f;
    }

    @Override // defpackage.uf5
    public final Class getType() {
        return this.e.getReturnType();
    }

    public final String toString() {
        return this.e.toGenericString();
    }
}
