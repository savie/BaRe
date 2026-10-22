package defpackage;

import android.content.Context;
import android.util.Log;
import android.util.SparseArray;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuItem;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.google.android.recaptcha.RecaptchaAction;
import com.google.firebase.auth.FirebaseAuth;
import java.io.File;
import java.io.StringWriter;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.net.URL;
import java.sql.Time;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Currency;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class x91 implements cl6, Continuation {
    public Object a;
    public Object b;
    public Object c;
    public Object d;

    public static je6 b(List list, Map map, Comparator comparator) {
        x91 x91Var = new x91();
        x91Var.a = list;
        x91Var.b = map;
        Collections.sort(list, comparator);
        ie6 ie6Var = new ie6(list.size());
        int i = ie6Var.b - 1;
        int size = list.size();
        while (i >= 0) {
            boolean z = (((long) (1 << i)) & ie6Var.a) == 0;
            int iPow = (int) Math.pow(2.0d, i);
            i--;
            size -= iPow;
            if (z) {
                x91Var.c(2, iPow, size);
            } else {
                x91Var.c(2, iPow, size);
                size -= iPow;
                x91Var.c(1, iPow, size);
            }
        }
        hp4 hp4Var = (jp4) x91Var.c;
        if (hp4Var == null) {
            hp4Var = sl4.b;
        }
        return new je6(hp4Var, comparator);
    }

    public hp4 a(int i, int i2) {
        Map map = (Map) this.b;
        List list = (List) this.a;
        if (i2 == 0) {
            return sl4.b;
        }
        if (i2 == 1) {
            Object obj = list.get(i);
            return new gp4(obj, map.get(obj), null, null);
        }
        int i3 = i2 / 2;
        int i4 = i + i3;
        hp4 hp4VarA = a(i, i3);
        hp4 hp4VarA2 = a(i4 + 1, i3);
        Object obj2 = list.get(i4);
        return new gp4(obj2, map.get(obj2), hp4VarA, hp4VarA2);
    }

    public void c(int i, int i2, int i3) {
        hp4 hp4VarA = a(i3 + 1, i2 - 1);
        Object obj = ((List) this.a).get(i3);
        Map map = (Map) this.b;
        jp4 ip4Var = i == 1 ? new ip4(obj, map.get(obj), null, hp4VarA) : new gp4(obj, map.get(obj), null, hp4VarA);
        if (((jp4) this.c) == null) {
            this.c = ip4Var;
            this.d = ip4Var;
        } else {
            ((jp4) this.d).o(ip4Var);
            this.d = ip4Var;
        }
    }

    @Override // defpackage.cl6
    public void d(String str, String str2) {
        wj6 wj6Var = (wj6) this.c;
        List<vj6> list = (List) this.b;
        wc2 wc2VarB = str != null ? wc2.b(str, str2) : null;
        wj6 wj6Var2 = (wj6) this.d;
        gy5 gy5Var = (gy5) this.a;
        wj6.b(wj6Var2, "Transaction", gy5Var, wc2VarB);
        ArrayList arrayList = new ArrayList();
        if (wc2VarB != null) {
            if (wc2VarB.a == -1) {
                for (vj6 vj6Var : list) {
                    if (vj6Var.d == 5) {
                        vj6Var.d = 6;
                    } else {
                        vj6Var.d = 2;
                    }
                }
            } else {
                for (vj6 vj6Var2 : list) {
                    vj6Var2.d = 6;
                    vj6Var2.k = wc2VarB;
                }
            }
            wj6Var2.m(gy5Var);
            return;
        }
        ArrayList arrayList2 = new ArrayList();
        for (vj6 vj6Var3 : list) {
            vj6Var3.d = 4;
            gy5 gy5Var2 = vj6Var3.a;
            arrayList.addAll(wj6Var2.n.c(vj6Var3.n, false, false, wj6Var2.b));
            arrayList2.add(new u8(vj6Var3, new eb2(new zc2(wj6Var, gy5Var2), sb4.d(vj6Var3.r))));
            wj6Var2.l(new bj8(wj6Var2, vj6Var3.c, qc6.a(gy5Var2)));
        }
        wj6Var2.k(wj6Var2.f.n(gy5Var));
        gd gdVar = wj6Var2.f;
        wj6Var2.k(gdVar);
        wj6Var2.o(gdVar);
        wj6Var.j(arrayList);
        for (int i = 0; i < arrayList2.size(); i++) {
            wj6Var2.i((Runnable) arrayList2.get(i));
        }
    }

    public gs7 e(s8 s8Var) {
        ArrayList arrayList = (ArrayList) this.b;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            gs7 gs7Var = (gs7) arrayList.get(i);
            if (gs7Var != null && gs7Var.b == s8Var) {
                return gs7Var;
            }
        }
        gs7 gs7Var2 = new gs7((Context) this.c, s8Var);
        arrayList.add(gs7Var2);
        return gs7Var2;
    }

    public i98 f(Class cls) {
        ((cz4) this.b).getClass();
        boolean zIsArray = cls.isArray();
        Class<?> cls2 = Character.TYPE;
        if (zIsArray) {
            om5 om5Var = (om5) this.d;
            om5Var.getClass();
            Class<?> componentType = cls.getComponentType();
            if (componentType == cls2) {
                return new d51(componentType);
            }
            if (componentType == Character.class) {
                return new d51(componentType);
            }
            if (componentType == String.class) {
                return new zp7();
            }
            i98 i98VarF = ((x91) om5Var.a).f(componentType);
            if (i98VarF == null) {
                return null;
            }
            return new s50(i98VarF, componentType);
        }
        if (cls.isPrimitive()) {
            ((cz4) this.a).getClass();
            if (cls == Integer.TYPE) {
                return new rt0(1);
            }
            if (cls == Boolean.TYPE) {
                return new rt0(0);
            }
            if (cls == Long.TYPE) {
                return new bq0(1);
            }
            if (cls == Double.TYPE) {
                return new q62(1);
            }
            if (cls == Float.TYPE) {
                return new zh3();
            }
            if (cls == Short.TYPE) {
                return new bq0(2);
            }
            if (cls == Byte.TYPE) {
                return new q81(1);
            }
            if (cls == cls2) {
                return new o70(1);
            }
            return null;
        }
        ((lv1) this.c).getClass();
        String name = cls.getName();
        if (name.startsWith("java.lang")) {
            if (cls == Boolean.class) {
                return new rt0(0);
            }
            if (cls == Integer.class) {
                return new rt0(1);
            }
            if (cls == Long.class) {
                return new bq0(1);
            }
            if (cls == Double.class) {
                return new q62(1);
            }
            if (cls == Float.class) {
                return new zh3();
            }
            if (cls == Short.class) {
                return new bq0(2);
            }
            if (cls == Byte.class) {
                return new q81(1);
            }
            if (cls == Character.class) {
                return new o70(1);
            }
            if (cls == String.class) {
                return new bq0(3);
            }
            if (cls == Class.class) {
                return new q81(0);
            }
            return null;
        }
        if (name.startsWith("java.util")) {
            if (cls == Date.class) {
                return new fd2(cls);
            }
            if (cls == Locale.class) {
                return new o14(1);
            }
            if (cls == Currency.class) {
                return new q62(0);
            }
            if (cls == GregorianCalendar.class) {
                return new o14(0);
            }
            if (cls == TimeZone.class) {
                return new aq0(1);
            }
            if (cls == AtomicInteger.class) {
                return new n70();
            }
            if (cls == AtomicLong.class) {
                return new o70(0);
            }
            return null;
        }
        if (name.startsWith("java.net")) {
            if (cls == URL.class) {
                return new hd8();
            }
            return null;
        }
        if (name.startsWith("java.io")) {
            if (cls == File.class) {
                return new ia3();
            }
            return null;
        }
        if (name.startsWith("java.sql")) {
            if (cls == Time.class) {
                return new fd2(cls);
            }
            if (cls == java.sql.Date.class) {
                return new fd2(cls);
            }
            if (cls == Timestamp.class) {
                return new fd2(cls);
            }
            return null;
        }
        if (name.startsWith("java.math")) {
            if (cls == BigDecimal.class) {
                return new aq0(0);
            }
            if (cls == BigInteger.class) {
                return new bq0(0);
            }
            return null;
        }
        Class superclass = cls.getSuperclass();
        if (superclass == null) {
            return null;
        }
        if (superclass.isEnum()) {
            return new qx2(cls);
        }
        if (cls.isEnum()) {
            return new qx2(cls);
        }
        return null;
    }

    public boolean g(s8 s8Var, MenuItem menuItem) {
        return ((ActionMode.Callback) this.a).onActionItemClicked(e(s8Var), new nc5((Context) this.c, (ls7) menuItem));
    }

    public boolean h(s8 s8Var, Menu menu) {
        ActionMode.Callback callback = (ActionMode.Callback) this.a;
        gs7 gs7VarE = e(s8Var);
        dg7 dg7Var = (dg7) this.d;
        Menu ad5Var = (Menu) dg7Var.get(menu);
        if (ad5Var == null) {
            ad5Var = new ad5((Context) this.c, (fc5) menu);
            dg7Var.put(menu, ad5Var);
        }
        return callback.onCreateActionMode(gs7VarE, ad5Var);
    }

    public void i(Object obj, StringWriter stringWriter) {
        vq3 vq3Var = (vq3) this.d;
        fa6 fa6Var = rn5.a;
        l22 l22Var = new l22(stringWriter, vq3Var);
        iv5 iv5Var = (iv5) l22Var.b;
        bv5 bv5Var = new bv5();
        bv5Var.a = new fv5(bv5Var);
        bv5Var.e = 3;
        bv5Var.b = l22Var;
        bv5Var.c = iv5Var;
        if (iv5Var.isEmpty()) {
            ((wq3) l22Var.c).getClass();
        }
        nh nhVar = (nh) this.a;
        try {
            ro roVar = new ro(new ai5((wc9) this.b, (x44) this.c, nhVar.l()));
            Class<?> cls = obj.getClass();
            String strM = ((ai5) roVar.b).m(obj.getClass());
            ((cz4) roVar.c).getClass();
            roVar.w(bv5Var, obj, cls, strM);
        } finally {
            nhVar.d();
        }
    }

    @Override // com.google.android.gms.tasks.Continuation
    public Object then(Task task) {
        yo1 yo1Var;
        yo1 yo1Var2;
        RecaptchaAction recaptchaAction = (RecaptchaAction) this.a;
        FirebaseAuth firebaseAuth = (FirebaseAuth) this.b;
        String str = (String) this.d;
        zq8 zq8Var = (zq8) this.c;
        if (task.isSuccessful()) {
            return Tasks.forResult(task.getResult());
        }
        Exception exception = task.getException();
        ly8.h(exception);
        SparseArray sparseArray = y49.a;
        if (!(exception instanceof mf3 ? ((mf3) exception).a.endsWith("MISSING_RECAPTCHA_TOKEN") : false)) {
            Log.e("RecaptchaCallWrapper", "Initial task failed for action " + String.valueOf(recaptchaAction) + "with exception - " + exception.getMessage());
            return Tasks.forException(exception);
        }
        if (Log.isLoggable("RecaptchaCallWrapper", 4)) {
            Log.i("RecaptchaCallWrapper", "Falling back to recaptcha enterprise flow for action ".concat(String.valueOf(recaptchaAction)));
        }
        synchronized (firebaseAuth) {
            yo1Var = firebaseAuth.j;
        }
        if (yo1Var == null) {
            yo1 yo1Var3 = new yo1(firebaseAuth.a, firebaseAuth);
            synchronized (firebaseAuth) {
                firebaseAuth.j = yo1Var3;
            }
        }
        synchronized (firebaseAuth) {
            yo1Var2 = firebaseAuth.j;
        }
        return yo1Var2.q(str, Boolean.FALSE, recaptchaAction).continueWithTask(zq8Var).continueWithTask(new bs2(str, yo1Var2, recaptchaAction, zq8Var, 4));
    }
}
