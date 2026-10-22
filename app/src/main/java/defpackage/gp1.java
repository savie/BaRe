package defpackage;

import android.text.TextUtils;
import android.util.Base64;
import com.google.firebase.FirebaseApp;
import java.lang.annotation.Annotation;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class gp1 implements bw1, w23, n59 {
    public final Object a;
    public final Object b;
    public final Object c;
    public final Object d;
    public final Object e;

    public gp1(x44 x44Var, eg2 eg2Var) {
        this.a = new bq1();
        this.b = new bq1();
        this.c = new bq1();
        this.d = eg2Var;
        this.e = x44Var;
    }

    @Override // defpackage.bw1
    public void a(ev5 ev5Var, Object obj) {
        Class cls = (Class) ((ln5) this.e).b;
        String strE = ((ix2) this.d).e();
        if (strE == null) {
            strE = ((ai5) this.a).m(cls);
        }
        ((cz4) this.c).getClass();
        ((ro) this.b).w(ev5Var, obj, cls, strE);
    }

    @Override // defpackage.bw1
    public Object b(mc4 mc4Var) {
        mc4 mc4VarD = mc4Var.d();
        Class cls = (Class) ((ln5) this.e).b;
        if (mc4VarD == null || ((lc4) mc4VarD).k()) {
            return null;
        }
        return ((ro) this.b).r(mc4VarD, cls);
    }

    @Override // defpackage.bw1
    public Object c(mc4 mc4Var, Object obj) throws kd5 {
        Class cls = (Class) ((ln5) this.e).b;
        if (obj == null) {
            return b(mc4Var);
        }
        throw new kd5("Can not read value of %s for %s", cls, (ix2) this.d);
    }

    @Override // defpackage.bw1
    public boolean d(mc4 mc4Var) {
        ln5 ln5Var = (ln5) this.e;
        Class cls = (Class) ln5Var.b;
        String strE = ((ix2) this.d).e();
        if (strE == null) {
            strE = ((ai5) this.a).m(cls);
        }
        ((cz4) this.c).getClass();
        mc4 mc4VarF = mc4Var.f(strE);
        Class cls2 = (Class) ln5Var.b;
        if (mc4VarF == null || ((lc4) mc4VarF).k()) {
            return true;
        }
        return ((ro) this.b).v(mc4VarF, cls2);
    }

    public ri2 e(Class cls) {
        bq1 bq1Var = (bq1) this.c;
        ri2 ri2Var = (ri2) bq1Var.get(cls);
        ri2 ri2Var2 = ri2Var;
        if (ri2Var == null) {
            eg2 eg2Var = (eg2) this.d;
            fk2 fk2Var = new fk2();
            fk2Var.a = new LinkedList();
            fk2Var.b = new LinkedList();
            fk2Var.e = cls.getDeclaredAnnotations();
            fk2Var.f = eg2Var;
            fk2Var.m = true;
            fk2Var.j = cls;
            for (Method method : cls.getDeclaredMethods()) {
                fk2Var.a.add(new rf5(method));
            }
            for (Field field : cls.getDeclaredFields()) {
                fk2Var.b.add(new i63(field));
            }
            for (Annotation annotation : fk2Var.e) {
                if (annotation instanceof jk5) {
                    fk2Var.d = (jk5) annotation;
                }
                if (annotation instanceof kk5) {
                    fk2Var.c = (kk5) annotation;
                }
                if (annotation instanceof no6) {
                    no6 no6Var = (no6) annotation;
                    String simpleName = fk2Var.j.getSimpleName();
                    String strName = no6Var.name();
                    if (strName.length() == 0) {
                        strName = z85.v(simpleName);
                    }
                    fk2Var.m = no6Var.strict();
                    fk2Var.i = no6Var;
                    fk2Var.k = strName;
                }
                if (annotation instanceof pu5) {
                    fk2Var.h = (pu5) annotation;
                }
                if (annotation instanceof yd2) {
                    yd2 yd2Var = (yd2) annotation;
                    fk2Var.l = yd2Var.required();
                    fk2Var.g = yd2Var.value();
                }
            }
            bq1Var.put(cls, fk2Var);
            ri2Var2 = fk2Var;
        }
        return ri2Var2;
    }

    @Override // defpackage.ea6
    public Object get() {
        return new a97((FirebaseApp) ((id4) this.a).a, (qg3) ((ca6) this.b).get(), (l97) ((ca6) this.c).get(), (sy2) ((ca6) this.d).get(), (ox1) ((ca6) this.e).get());
    }

    @Override // defpackage.n59
    public void h(f59 f59Var) {
        x59 x59Var = (x59) this.b;
        f69 f69Var = (f69) f59Var;
        as2 as2Var = (as2) this.a;
        if (as2Var.e("EMAIL")) {
            x59Var.b = null;
        }
        if (as2Var.e("DISPLAY_NAME")) {
            x59Var.d = null;
        } else {
            String str = (String) as2Var.b;
            if (str != null) {
                x59Var.d = str;
            }
        }
        if (as2Var.e("PHOTO_URL")) {
            x59Var.e = null;
        } else {
            String str2 = (String) as2Var.c;
            if (str2 != null) {
                x59Var.e = str2;
            }
        }
        if (!TextUtils.isEmpty(null)) {
            byte[] bytes = "redacted".getBytes();
            ly8.e(bytes == null ? null : Base64.encodeToString(bytes, 0));
        }
        if (as2Var.e("delete_passkey")) {
            q69 q69Var = z59.f;
            x89 x89Var = x89.p;
            ly8.h(x89Var);
            x59Var.m = x89Var;
        }
        nh nhVar = f69Var.a;
        List arrayList = nhVar != null ? (List) nhVar.b : null;
        if (arrayList == null) {
            arrayList = new ArrayList();
        }
        nh nhVar2 = new nh();
        x59Var.f = nhVar2;
        ((List) nhVar2.b).addAll(arrayList);
        yf1 yf1Var = (yf1) this.c;
        b69 b69Var = (b69) this.d;
        ly8.h(b69Var);
        String str3 = f69Var.b;
        String str4 = f69Var.c;
        if (!TextUtils.isEmpty(str3) && !TextUtils.isEmpty(str4)) {
            b69Var = new b69(str4, str3, Long.valueOf(f69Var.d), b69Var.d);
        }
        yf1Var.i(b69Var, x59Var);
    }

    @Override // defpackage.n59
    public void zza(String str) {
        ((u94) this.e).zza(str);
    }

    public gp1(id4 id4Var, ca6 ca6Var, ca6 ca6Var2, ca6 ca6Var3, ca6 ca6Var4) {
        this.a = id4Var;
        this.b = ca6Var;
        this.c = ca6Var2;
        this.d = ca6Var3;
        this.e = ca6Var4;
    }

    public gp1(ai5 ai5Var, ix2 ix2Var, ln5 ln5Var) {
        this.b = new ro(ai5Var);
        this.c = ai5Var.n();
        this.a = ai5Var;
        this.d = ix2Var;
        this.e = ln5Var;
    }

    public gp1(ke keVar, as2 as2Var, x59 x59Var, yf1 yf1Var, b69 b69Var, u94 u94Var) {
        this.a = as2Var;
        this.b = x59Var;
        this.c = yf1Var;
        this.d = b69Var;
        this.e = u94Var;
        Objects.requireNonNull(keVar);
    }
}
