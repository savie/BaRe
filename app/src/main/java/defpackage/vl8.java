package defpackage;

import android.app.Application;
import java.lang.reflect.InvocationTargetException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class vl8 extends xl8 {
    public static vl8 c;
    public static final sl4 d = new sl4();
    public final Application b;

    public vl8(Application application) {
        this.b = application;
    }

    @Override // defpackage.xl8, defpackage.wl8
    public final tl8 a(Class cls) {
        Application application = this.b;
        if (application != null) {
            return d(cls, application);
        }
        g84.j("AndroidViewModelFactory constructed with empty constructor works only with create(modelClass: Class<T>, extras: CreationExtras).");
        return null;
    }

    @Override // defpackage.xl8, defpackage.wl8
    public final tl8 b(Class cls, ej5 ej5Var) {
        if (this.b != null) {
            return a(cls);
        }
        Application application = (Application) ej5Var.a.get(d);
        if (application != null) {
            return d(cls, application);
        }
        if (!xb.class.isAssignableFrom(cls)) {
            return xh8.g(cls);
        }
        c6.f("CreationExtras must have an application by `APPLICATION_KEY`");
        return null;
    }

    public final tl8 d(Class cls, Application application) {
        if (!xb.class.isAssignableFrom(cls)) {
            return xh8.g(cls);
        }
        try {
            tl8 tl8Var = (tl8) cls.getConstructor(Application.class).newInstance(application);
            tl8Var.getClass();
            return tl8Var;
        } catch (IllegalAccessException e) {
            e6.i(fz5.k(cls, "Cannot create an instance of "), e);
            return null;
        } catch (InstantiationException e2) {
            e6.i(fz5.k(cls, "Cannot create an instance of "), e2);
            return null;
        } catch (NoSuchMethodException e3) {
            e6.i(fz5.k(cls, "Cannot create an instance of "), e3);
            return null;
        } catch (InvocationTargetException e4) {
            e6.i(fz5.k(cls, "Cannot create an instance of "), e4);
            return null;
        }
    }
}
