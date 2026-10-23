package defpackage;

import java.lang.reflect.Constructor;
import java.lang.reflect.Method;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class wb5 {
    public static final Class[] c = new Class[0];
    public final String a;
    public final Class[] b;

    public wb5(Method method) {
        this(method.getName(), method.getParameterCount() > 0 ? method.getParameterTypes() : c);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || obj.getClass() != wb5.class) {
            return false;
        }
        wb5 wb5Var = (wb5) obj;
        if (!this.a.equals(wb5Var.a)) {
            return false;
        }
        Class[] clsArr = wb5Var.b;
        Class[] clsArr2 = this.b;
        int length = clsArr2.length;
        if (clsArr.length != length) {
            return false;
        }
        for (int i = 0; i < length; i++) {
            if (clsArr[i] != clsArr2[i]) {
                return false;
            }
        }
        return true;
    }

    public final int hashCode() {
        return this.a.hashCode() + this.b.length;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.a);
        sb.append("(");
        return xs1.m(sb, this.b.length, "-args)");
    }

    public wb5(Constructor constructor) {
        this("", constructor.getParameterCount() > 0 ? constructor.getParameterTypes() : c);
    }

    public wb5(String str, Class[] clsArr) {
        this.a = str;
        this.b = clsArr == null ? c : clsArr;
    }
}
