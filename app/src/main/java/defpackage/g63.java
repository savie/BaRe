package defpackage;

import java.lang.annotation.Annotation;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class g63 implements au1 {
    public final bq1 a = new bq1();
    public final Annotation[] b;
    public final Annotation c;
    public final Field d;
    public final String e;
    public final int f;

    public g63(Field field, Annotation annotation, Annotation[] annotationArr) {
        this.f = field.getModifiers();
        this.e = field.getName();
        this.c = annotation;
        this.d = field;
        this.b = annotationArr;
    }

    @Override // defpackage.au1
    public final Class b() {
        Type genericType = this.d.getGenericType();
        ParameterizedType parameterizedType = genericType instanceof ParameterizedType ? (ParameterizedType) genericType : null;
        if (parameterizedType == null) {
            return Object.class;
        }
        Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
        if (actualTypeArguments.length > 0) {
            return z85.k(actualTypeArguments[0]);
        }
        return null;
    }

    @Override // defpackage.au1
    public final Annotation c() {
        return this.c;
    }

    @Override // defpackage.au1
    public final Class[] e() {
        Type genericType = this.d.getGenericType();
        ParameterizedType parameterizedType = genericType instanceof ParameterizedType ? (ParameterizedType) genericType : null;
        return parameterizedType != null ? z85.l(parameterizedType) : new Class[0];
    }

    @Override // defpackage.au1
    public final boolean g() {
        int i = this.f;
        return !Modifier.isStatic(i) && Modifier.isFinal(i);
    }

    @Override // defpackage.au1
    public final Object get(Object obj) {
        return this.d.get(obj);
    }

    @Override // defpackage.vb8
    public final Annotation getAnnotation(Class cls) {
        Annotation annotation = this.c;
        if (cls == annotation.annotationType()) {
            return annotation;
        }
        bq1 bq1Var = this.a;
        if (bq1Var.isEmpty()) {
            for (Annotation annotation2 : this.b) {
                bq1Var.put(annotation2.annotationType(), annotation2);
            }
        }
        return (Annotation) bq1Var.get(cls);
    }

    @Override // defpackage.au1
    public final Class getDeclaringClass() {
        return this.d.getDeclaringClass();
    }

    @Override // defpackage.au1
    public final String getName() {
        return this.e;
    }

    @Override // defpackage.vb8
    public final Class getType() {
        return this.d.getType();
    }

    @Override // defpackage.au1
    public final void i(Object obj, Object obj2) throws IllegalAccessException {
        if (Modifier.isFinal(this.f)) {
            return;
        }
        this.d.set(obj, obj2);
    }

    public final String toString() {
        return dj7.l("field '", this.e, "' ", this.d.toString());
    }
}
