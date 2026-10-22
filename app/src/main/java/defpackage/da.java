package defpackage;

import java.lang.annotation.Annotation;
import java.lang.reflect.Method;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class da {
    public final Type a;
    public final Set b;
    public final Object c;
    public final Method d;
    public final int e;
    public final qi4[] f;
    public final boolean g;

    public da(Type type, Set set, Object obj, Method method, int i, int i2, boolean z) {
        this.a = yh8.a(type);
        this.b = set;
        this.c = obj;
        this.d = method;
        this.e = i2;
        this.f = new qi4[i - i2];
        this.g = z;
    }

    public void a(nh5 nh5Var, ea eaVar) {
        qi4[] qi4VarArr = this.f;
        if (qi4VarArr.length > 0) {
            Method method = this.d;
            Type[] genericParameterTypes = method.getGenericParameterTypes();
            Annotation[][] parameterAnnotations = method.getParameterAnnotations();
            int length = genericParameterTypes.length;
            int i = this.e;
            for (int i2 = i; i2 < length; i2++) {
                Type type = ((ParameterizedType) genericParameterTypes[i2]).getActualTypeArguments()[0];
                Set setE = yh8.e(parameterAnnotations[i2]);
                qi4VarArr[i2 - i] = (wx3.g(this.a, type) && this.b.equals(setE)) ? nh5Var.c(eaVar, type, setE) : nh5Var.b(type, setE, null);
            }
        }
    }

    public Object b(bn4 bn4Var) {
        throw new AssertionError();
    }

    public final Object c(Object obj) {
        qi4[] qi4VarArr = this.f;
        Object[] objArr = new Object[qi4VarArr.length + 1];
        objArr[0] = obj;
        System.arraycopy(qi4VarArr, 0, objArr, 1, qi4VarArr.length);
        try {
            return this.d.invoke(this.c, objArr);
        } catch (IllegalAccessException unused) {
            d6.n();
            return null;
        }
    }

    public void d(dn4 dn4Var, Object obj) {
        throw new AssertionError();
    }
}
