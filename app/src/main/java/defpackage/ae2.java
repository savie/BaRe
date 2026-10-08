package defpackage;

import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class ae2 {
    public final boolean a;
    public final boolean b;
    public final String c = "get";
    public final String d = "is";
    public final String e;

    public ae2(v77 v77Var, String str) {
        this.a = v77Var.i(u65.USE_STD_BEAN_NAMING);
        this.b = v77Var.i(u65.ALLOW_IS_GETTERS_FOR_NON_BOOLEAN);
        this.e = str;
    }

    public static String d(int i, String str) {
        int length = str.length();
        if (length == i) {
            return null;
        }
        char cCharAt = str.charAt(i);
        char lowerCase = Character.toLowerCase(cCharAt);
        if (cCharAt == lowerCase) {
            return str.substring(i);
        }
        StringBuilder sb = new StringBuilder(length - i);
        sb.append(lowerCase);
        while (true) {
            i++;
            if (i >= length) {
                break;
            }
            char cCharAt2 = str.charAt(i);
            char lowerCase2 = Character.toLowerCase(cCharAt2);
            if (cCharAt2 == lowerCase2) {
                sb.append((CharSequence) str, i, length);
                break;
            }
            sb.append(lowerCase2);
        }
        return sb.toString();
    }

    public static String e(int i, String str) {
        int length = str.length();
        if (length == i) {
            return null;
        }
        char cCharAt = str.charAt(i);
        char lowerCase = Character.toLowerCase(cCharAt);
        if (cCharAt == lowerCase) {
            return str.substring(i);
        }
        int i2 = i + 1;
        if (i2 < length && Character.isUpperCase(str.charAt(i2))) {
            return str.substring(i);
        }
        StringBuilder sb = new StringBuilder(length - i);
        sb.append(lowerCase);
        sb.append((CharSequence) str, i2, length);
        return sb.toString();
    }

    public final String a(pd pdVar, String str) {
        String str2 = this.d;
        if (str2 == null) {
            return null;
        }
        if (!this.b) {
            gc8 gc8VarD = pdVar.D();
            if (gc8VarD.C()) {
                gc8VarD = gc8VarD.x();
            }
            if (!gc8VarD.w0(Boolean.TYPE) && !gc8VarD.w0(Boolean.class) && !gc8VarD.w0(AtomicBoolean.class)) {
                return null;
            }
        }
        if (str.startsWith(str2)) {
            return this.a ? e(str2.length(), str) : d(str2.length(), str);
        }
        return null;
    }

    public final String b(String str) {
        String str2 = this.e;
        if (str2 == null || !str.startsWith(str2)) {
            return null;
        }
        return this.a ? e(str2.length(), str) : d(str2.length(), str);
    }

    public String c(pd pdVar, String str) {
        Method method = pdVar.P;
        String str2 = this.c;
        if (str2 == null || !str.startsWith(str2)) {
            return null;
        }
        if ("getCallbacks".equals(str)) {
            Class<?> returnType = method.getReturnType();
            if (returnType.isArray()) {
                String name = returnType.getComponentType().getName();
                if (name.contains(".cglib") && (name.startsWith("net.sf.cglib") || name.startsWith("org.hibernate.repackage.cglib") || name.startsWith("org.springframework.cglib"))) {
                    return null;
                }
            }
        } else if ("getMetaClass".equals(str) && method.getReturnType().getName().startsWith("groovy.lang")) {
            return null;
        }
        return this.a ? e(str2.length(), str) : d(str2.length(), str);
    }
}
