package defpackage;

import java.lang.annotation.Annotation;
import java.lang.reflect.InvocationTargetException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class qf5 implements au1 {
    public final Annotation a;
    public final uf5 b;
    public final uf5 c;
    public final Class[] d;
    public final Class e;
    public final Class f;
    public final Class k;
    public final String n;

    public qf5(uf5 uf5Var, uf5 uf5Var2) {
        this.e = uf5Var.getDeclaringClass();
        this.a = uf5Var.c();
        this.d = uf5Var.e();
        this.f = uf5Var.b();
        this.k = uf5Var.getType();
        this.n = uf5Var.getName();
        this.b = uf5Var2;
        this.c = uf5Var;
    }

    @Override // defpackage.au1
    public final Class b() {
        return this.f;
    }

    @Override // defpackage.au1
    public final Annotation c() {
        return this.a;
    }

    @Override // defpackage.au1
    public final Class[] e() {
        return this.d;
    }

    @Override // defpackage.au1
    public final boolean g() {
        return this.b == null;
    }

    @Override // defpackage.au1
    public final Object get(Object obj) {
        return this.c.getMethod().invoke(obj, null);
    }

    @Override // defpackage.vb8
    public final Annotation getAnnotation(Class cls) {
        uf5 uf5Var;
        Annotation annotation = this.c.getAnnotation(cls);
        Annotation annotation2 = this.a;
        if (cls == annotation2.annotationType()) {
            return annotation2;
        }
        return (annotation != null || (uf5Var = this.b) == null) ? annotation : uf5Var.getAnnotation(cls);
    }

    @Override // defpackage.au1
    public final Class getDeclaringClass() {
        return this.e;
    }

    @Override // defpackage.au1
    public final String getName() {
        return this.n;
    }

    @Override // defpackage.vb8
    public final Class getType() {
        return this.k;
    }

    @Override // defpackage.au1
    public final void i(Object obj, Object obj2) throws IllegalAccessException, sf5, InvocationTargetException {
        Class<?> declaringClass = this.c.getMethod().getDeclaringClass();
        uf5 uf5Var = this.b;
        if (uf5Var == null) {
            throw new sf5("Property '%s' is read only in %s", this.n, declaringClass);
        }
        uf5Var.getMethod().invoke(obj, obj2);
    }

    public final String toString() {
        return eq3.k("method '", this.n, "'");
    }
}
