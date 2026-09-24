package defpackage;

import java.lang.annotation.Annotation;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ce implements InvocationHandler {
    public final km5 a = new km5((byte) 0, 6);
    public final Class b;
    public final boolean c;
    public final boolean d;

    public ce(Class cls, boolean z, boolean z2) {
        this.c = z2;
        this.d = z;
        this.b = cls;
    }

    @Override // java.lang.reflect.InvocationHandler
    public final Object invoke(Object obj, Method method, Object[] objArr) throws kd5 {
        String name = method.getName();
        if (name.equals("toString")) {
            return toString();
        }
        if (!name.equals("equals")) {
            if (name.equals("annotationType")) {
                return this.b;
            }
            if (name.equals("required")) {
                return Boolean.valueOf(this.d);
            }
            return name.equals("attribute") ? Boolean.valueOf(this.c) : method.getDefaultValue();
        }
        Annotation annotation = (Annotation) obj;
        boolean z = false;
        Annotation annotation2 = (Annotation) objArr[0];
        if (annotation.annotationType() != annotation2.annotationType()) {
            throw new kd5("Annotation %s is not the same as %s", annotation, annotation2);
        }
        Class<? extends Annotation> clsAnnotationType = annotation.annotationType();
        Class<? extends Annotation> clsAnnotationType2 = annotation2.annotationType();
        Method[] declaredMethods = clsAnnotationType.getDeclaredMethods();
        if (clsAnnotationType.equals(clsAnnotationType2)) {
            for (Method method2 : declaredMethods) {
                String name2 = method2.getName();
                String[] strArr = (String[]) this.a.b;
                int length = strArr.length;
                int i = 0;
                while (true) {
                    if (i >= length) {
                        if (method2.invoke(annotation, null).equals(method2.invoke(annotation2, null))) {
                            break;
                        }
                    } else {
                        if (name2.equals(strArr[i])) {
                            break;
                        }
                        i++;
                    }
                }
            }
            z = true;
        }
        return Boolean.valueOf(z);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        Class cls = this.b;
        String name = cls.getName();
        sb.append('@');
        sb.append(name);
        sb.append('(');
        Method[] declaredMethods = cls.getDeclaredMethods();
        for (int i = 0; i < declaredMethods.length; i++) {
            String name2 = declaredMethods[i].getName();
            Method method = declaredMethods[i];
            String name3 = method.getName();
            Object objValueOf = name3.equals("required") ? Boolean.valueOf(this.d) : name3.equals("attribute") ? Boolean.valueOf(this.c) : method.getDefaultValue();
            if (i > 0) {
                sb.append(", ");
            }
            sb.append(name2);
            sb.append('=');
            sb.append(objValueOf);
        }
        sb.append(')');
        return sb.toString();
    }
}
