package defpackage;

import android.app.Application;
import android.os.Bundle;
import java.lang.reflect.Constructor;
import java.util.LinkedHashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class xx6 implements wl8 {
    public final Application a;
    public final vl8 b;
    public final Bundle c;
    public final hu4 d;
    public final ot9 e;

    public xx6(Application application, wx6 wx6Var, Bundle bundle) {
        vl8 vl8Var;
        this.e = wx6Var.getSavedStateRegistry();
        this.d = wx6Var.getLifecycle();
        this.c = bundle;
        this.a = application;
        if (application != null) {
            if (vl8.c == null) {
                vl8.c = new vl8(application);
            }
            vl8Var = vl8.c;
            vl8Var.getClass();
        } else {
            vl8Var = new vl8(null);
        }
        this.b = vl8Var;
    }

    @Override // defpackage.wl8
    public final tl8 a(Class cls) {
        String canonicalName = cls.getCanonicalName();
        if (canonicalName != null) {
            return d(cls, canonicalName);
        }
        c6.f("Local and anonymous classes can not be ViewModels");
        return null;
    }

    @Override // defpackage.wl8
    public final tl8 b(Class cls, ej5 ej5Var) {
        nh4 nh4Var = g67.f;
        LinkedHashMap linkedHashMap = ej5Var.a;
        String str = (String) linkedHashMap.get(nh4Var);
        if (str == null) {
            l0.e("VIEW_MODEL_KEY must always be provided by ViewModelProvider");
            return null;
        }
        if (linkedHashMap.get(cy0.c) == null || linkedHashMap.get(cy0.d) == null) {
            if (this.d != null) {
                return d(cls, str);
            }
            l0.e("SAVED_STATE_REGISTRY_OWNER_KEY andVIEW_MODEL_STORE_OWNER_KEY must be provided in the creation extras tosuccessfully create a ViewModel.");
            return null;
        }
        Application application = (Application) linkedHashMap.get(vl8.d);
        boolean zIsAssignableFrom = xb.class.isAssignableFrom(cls);
        Constructor constructorA = (!zIsAssignableFrom || application == null) ? yx6.a(yx6.b, cls) : yx6.a(yx6.a, cls);
        if (constructorA == null) {
            return this.b.b(cls, ej5Var);
        }
        return (!zIsAssignableFrom || application == null) ? yx6.b(cls, constructorA, cy0.m(ej5Var)) : yx6.b(cls, constructorA, application, cy0.m(ej5Var));
    }

    @Override // defpackage.wl8
    public final tl8 c(n81 n81Var, ej5 ej5Var) {
        Class cls = n81Var.a;
        cls.getClass();
        return b(cls, ej5Var);
    }

    public final tl8 d(Class cls, String str) {
        AutoCloseable autoCloseable;
        Application application;
        hu4 hu4Var = this.d;
        if (hu4Var == null) {
            g84.j("SavedStateViewModelFactory constructed with empty constructor supports only calls to create(modelClass: Class<T>, extras: CreationExtras).");
            return null;
        }
        boolean zIsAssignableFrom = xb.class.isAssignableFrom(cls);
        Constructor constructorA = (!zIsAssignableFrom || this.a == null) ? yx6.a(yx6.b, cls) : yx6.a(yx6.a, cls);
        if (constructorA == null) {
            if (this.a != null) {
                return this.b.a(cls);
            }
            if (xl8.a == null) {
                xl8.a = new xl8();
            }
            xl8.a.getClass();
            return xh8.g(cls);
        }
        ot9 ot9Var = this.e;
        ot9Var.getClass();
        mx6 mx6VarK = jm1.k(ot9Var.c(str), this.c);
        ox6 ox6Var = new ox6(str, mx6VarK);
        ox6Var.a(hu4Var, ot9Var);
        st4 st4Var = hu4Var.d;
        if (st4Var == st4.b || st4Var.compareTo(st4.d) >= 0) {
            ot9Var.i();
        } else {
            hu4Var.a(new dt4(hu4Var, ot9Var));
        }
        tl8 tl8VarB = (!zIsAssignableFrom || (application = this.a) == null) ? yx6.b(cls, constructorA, mx6VarK) : yx6.b(cls, constructorA, application, mx6VarK);
        tl8VarB.getClass();
        ul8 ul8Var = tl8VarB.a;
        if (ul8Var == null) {
            return tl8VarB;
        }
        if (ul8Var.d) {
            ul8.a(ox6Var);
            return tl8VarB;
        }
        synchronized (ul8Var.a) {
            autoCloseable = (AutoCloseable) ul8Var.b.put("androidx.lifecycle.savedstate.vm.tag", ox6Var);
        }
        ul8.a(autoCloseable);
        return tl8VarB;
    }
}
