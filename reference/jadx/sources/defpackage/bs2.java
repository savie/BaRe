package defpackage;

import android.util.Log;
import android.util.SparseArray;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import com.google.android.recaptcha.RecaptchaAction;
import java.lang.annotation.Annotation;
import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class bs2 implements Continuation {
    public final /* synthetic */ int a;
    public Object b;
    public Object c;
    public Object d;
    public Object e;

    public bs2(au1 au1Var, vz7 vz7Var, vq3 vq3Var) {
        this.a = 1;
        this.b = au1Var.c();
        this.c = au1Var;
        this.d = vq3Var;
        this.e = vz7Var;
    }

    public static boolean f(String str) {
        return str == null || str.length() == 0;
    }

    public void a(on5 on5Var) {
        if (on5Var.e != null) {
            b();
            ((wj7) this.d).a('\n');
        }
    }

    public void b() {
        wj7 wj7Var = (wj7) this.d;
        StringBuilder sb = wj7Var.a;
        if (sb.length() <= 0 || '\n' == sb.charAt(sb.length() - 1)) {
            return;
        }
        wj7Var.a('\n');
    }

    public String c() {
        String strName;
        Class<?> type = ((vz7) this.e).b().getType();
        if (type.isArray()) {
            type = type.getComponentType();
        }
        Class<?> superclass = type;
        while (true) {
            strName = null;
            if (superclass == null) {
                break;
            }
            String simpleName = superclass.getSimpleName();
            no6 no6Var = (no6) superclass.getAnnotation(no6.class);
            if (no6Var != null) {
                strName = no6Var.name();
                if (f(strName)) {
                    strName = z85.v(simpleName);
                }
            }
            if (strName != null) {
                break;
            }
            superclass = superclass.getSuperclass();
        }
        return strName != null ? strName : z85.v(type.getSimpleName());
    }

    public s03 d() {
        vq3 vq3Var = (vq3) this.d;
        au1 au1Var = (au1) this.c;
        fy5 fy5Var = (fy5) au1Var.getAnnotation(fy5.class);
        String strValue = fy5Var == null ? null : fy5Var.value();
        return strValue != null ? new my5(strValue, au1Var, vq3Var) : new mv2(vq3Var);
    }

    public String e() {
        vz7 vz7Var = (vz7) this.e;
        String strR = vz7Var.r();
        if (vz7Var.isInline()) {
            return strR;
        }
        String strD = vz7Var.d();
        return !f(strD) ? strD : ((au1) this.c).getName();
    }

    public int g() {
        return ((wj7) this.d).a.length();
    }

    public void h(on5 on5Var, int i) {
        Class<?> cls = on5Var.getClass();
        j75 j75Var = (j75) this.b;
        sj7 sj7VarA = ((ky3) j75Var.k).a(cls);
        if (sj7VarA != null) {
            Object objA = sj7VarA.a(j75Var, (di4) this.c);
            wj7 wj7Var = (wj7) this.d;
            wj7.c(wj7Var, objA, i, wj7Var.a.length());
        }
    }

    public void i(on5 on5Var) {
        p75 p75Var = (p75) ((Map) this.e).get(on5Var.getClass());
        if (p75Var != null) {
            p75Var.a(this, on5Var);
        } else {
            j(on5Var);
        }
    }

    public void j(on5 on5Var) {
        on5 on5Var2 = on5Var.b;
        while (on5Var2 != null) {
            on5 on5Var3 = on5Var2.e;
            on5Var2.a(this);
            on5Var2 = on5Var3;
        }
    }

    public kg9 k() throws GeneralSecurityException {
        Integer num = (Integer) this.b;
        if (num == null) {
            m0.h("Key size is not set");
            return null;
        }
        if (((ig9) this.e) == null) {
            m0.h("Variant is not set");
            return null;
        }
        if (((Integer) this.c) == null) {
            m0.h("IV size is not set");
            return null;
        }
        if (((Integer) this.d) != null) {
            return new kg9(num.intValue(), ((Integer) this.c).intValue(), ((Integer) this.d).intValue(), (ig9) this.e);
        }
        m0.h("Tag size is not set");
        return null;
    }

    public void l() {
        this.c = 12;
    }

    public void m(int i) throws InvalidAlgorithmParameterException {
        if (i != 16 && i != 24 && i != 32) {
            throw new InvalidAlgorithmParameterException(String.format("Invalid key size %d; only 16-byte, 24-byte and 32-byte AES keys are supported", Integer.valueOf(i)));
        }
        this.b = Integer.valueOf(i);
    }

    public void n() {
        this.d = 16;
    }

    @Override // com.google.android.gms.tasks.Continuation
    public Object then(Task task) {
        String str = (String) this.b;
        if (!task.isSuccessful()) {
            Exception exception = task.getException();
            ly8.h(exception);
            SparseArray sparseArray = y49.a;
            if (exception instanceof mf3 ? ((mf3) exception).a.endsWith("INVALID_RECAPTCHA_TOKEN") : false) {
                if (Log.isLoggable("RecaptchaCallWrapper", 4)) {
                    Log.i("RecaptchaCallWrapper", "Invalid token - Refreshing Recaptcha Enterprise config and fetching new token for tenant " + str);
                }
                return ((yo1) this.c).q(str, Boolean.TRUE, (RecaptchaAction) this.d).continueWithTask((zq8) this.e);
            }
        }
        return task;
    }

    public String toString() {
        switch (this.a) {
            case 1:
                return String.format("%s on %s", (Annotation) this.b, (au1) this.c);
            default:
                return super.toString();
        }
    }

    public /* synthetic */ bs2(Object obj, Object obj2, Object obj3, Object obj4, int i) {
        this.a = i;
        this.b = obj;
        this.c = obj2;
        this.d = obj3;
        this.e = obj4;
    }

    public bs2(j75 j75Var, di4 di4Var, wj7 wj7Var, Map map, ns0 ns0Var) {
        this.a = 2;
        this.b = j75Var;
        this.c = di4Var;
        this.d = wj7Var;
        this.e = map;
    }

    public /* synthetic */ bs2(int i) {
        this.a = i;
    }
}
