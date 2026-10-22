package defpackage;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class vg4 {
    public static final vg4 d;
    public static final RuntimeException e;
    public final Method a;
    public final Method b;
    public final Method c;

    static {
        vg4 vg4Var = null;
        try {
            e = null;
            vg4Var = new vg4();
        } catch (RuntimeException e2) {
            e = e2;
        }
        d = vg4Var;
        e = e;
    }

    public vg4() {
        try {
            this.a = Class.class.getMethod("getRecordComponents", null);
            Class<?> cls = Class.forName("java.lang.reflect.RecordComponent");
            this.b = cls.getMethod("getName", null);
            this.c = cls.getMethod("getType", null);
        } catch (Exception e2) {
            e6.i(dj7.l("Failed to access Methods needed to support `java.lang.Record`: (", e2.getClass().getName(), ") ", e2.getMessage()), e2);
            throw null;
        }
    }

    public final Object[] a(Class cls) {
        boolean zEquals;
        try {
            return (Object[]) this.a.invoke(cls, null);
        } catch (Exception e2) {
            e = e2;
            if (rk5.a && "runtime".equals(System.getProperty("org.graalvm.nativeimage.imagecode"))) {
                if (e instanceof InvocationTargetException) {
                    e = e.getCause();
                }
                zEquals = e.getClass().getName().equals("com.oracle.svm.core.jdk.UnsupportedFeatureError");
            } else {
                zEquals = false;
            }
            if (zEquals) {
                return null;
            }
            c6.f("Failed to access RecordComponents of type ".concat(u81.t(cls)));
            return null;
        }
    }
}
