package defpackage;

import android.os.Handler;
import com.jcraft.jsch.Argon2;
import java.lang.annotation.Annotation;
import java.lang.reflect.Proxy;
import java.util.Collection;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class be {
    public boolean a;
    public Object b;

    public be(ri2 ri2Var, x44 x44Var) {
        this.a = ri2Var.isRequired();
        this.b = (vq3) x44Var.n;
    }

    public static boolean d(Class cls) {
        if (Number.class.isAssignableFrom(cls) || cls == Boolean.class || cls == Character.class) {
            return true;
        }
        return cls.isPrimitive();
    }

    public boolean a() {
        return this.a;
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0031  */
    public Annotation b(Class cls, Class[] clsArr) {
        boolean zD;
        vq3 vq3Var = (vq3) this.b;
        ClassLoader classLoader = be.class.getClassLoader();
        if (!Map.class.isAssignableFrom(cls)) {
            if (Collection.class.isAssignableFrom(cls)) {
                return c(classLoader, gt2.class, false);
            }
            ClassLoader classLoader2 = be.class.getClassLoader();
            Class<?> componentType = cls.getComponentType();
            if (cls.isArray()) {
                return d(componentType) ? c(classLoader2, at2.class, false) : c(classLoader2, ct2.class, false);
            }
            if (d(cls)) {
                vq3Var.getClass();
            }
            return c(classLoader2, at2.class, false);
        }
        if (clsArr == null || clsArr.length <= 0) {
            zD = false;
        } else {
            Class superclass = clsArr[0].getSuperclass();
            Class cls2 = clsArr[0];
            if (superclass != null) {
                zD = true;
                if (!superclass.isEnum() && !cls2.isEnum()) {
                    zD = d(cls2);
                }
            } else {
                zD = d(cls2);
            }
        }
        if (zD) {
            vq3Var.getClass();
        }
        return c(classLoader, mt2.class, false);
    }

    public Annotation c(ClassLoader classLoader, Class cls, boolean z) {
        return (Annotation) Proxy.newProxyInstance(classLoader, new Class[]{cls}, new ce(cls, this.a, z));
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0036  */
    public boolean e(int i, CharSequence charSequence) {
        char c = 0;
        if (charSequence == null || i < 0 || charSequence.length() - i < 0) {
            c6.b();
            return false;
        }
        if (((ns0) this.b) == null) {
            return a();
        }
        c = 2;
        for (int i2 = 0; i2 < i && c == 2; i2++) {
            byte directionality = Character.getDirectionality(charSequence.charAt(i2));
            be beVar = x08.a;
            if (directionality == 0) {
                c = 1;
                continue;
            } else if (directionality != 1 && directionality != 2) {
                switch (directionality) {
                    case 14:
                    case 15:
                        c = 1;
                        continue;
                    case Argon2.V10 /* 16 */:
                    case 17:
                        break;
                    default:
                        c = 2;
                        continue;
                }
            }
        }
        if (c == 0) {
            return true;
        }
        if (c != 1) {
            return a();
        }
        return false;
    }

    public synchronized void f(ll6 ll6Var, boolean z) {
        try {
            if (this.a || z) {
                ((Handler) this.b).obtainMessage(1, ll6Var).sendToTarget();
            } else {
                this.a = true;
                ll6Var.b();
                this.a = false;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public void g(dq9 dq9Var) {
        if (this.a) {
            ta9.h("BillingLogger", "Skipping logging since initialization failed.");
            return;
        }
        try {
            ((rh3) this.b).r(new id0(dq9Var, d66.a), new y5(14));
        } catch (Throwable unused) {
            ta9.h("BillingLogger", "logging failed.");
        }
    }

    public be(ns0 ns0Var, boolean z) {
        this.b = ns0Var;
        this.a = z;
    }
}
