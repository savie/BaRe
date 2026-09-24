package defpackage;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class su0 implements InvocationHandler {
    public final zq8 a;

    public su0(zq8 zq8Var) {
        this.a = zq8Var;
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        boolean z = obj instanceof su0;
        zq8 zq8Var = this.a;
        if (z) {
            return zq8Var == ((su0) obj).a;
        }
        return zq8Var == obj;
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    @Override // java.lang.reflect.InvocationHandler
    public final Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
        try {
            return Class.forName(method.getDeclaringClass().getName(), true, zq8.class.getClassLoader()).getDeclaredMethod(method.getName(), method.getParameterTypes()).invoke(this.a, objArr);
        } catch (InvocationTargetException e) {
            throw e.getTargetException();
        } catch (ReflectiveOperationException e2) {
            c6.h("Reflection failed for method ", method, e2);
            return null;
        }
    }
}
