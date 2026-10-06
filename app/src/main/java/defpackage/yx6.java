package defpackage;

import android.app.Application;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class yx6 {
    public static final List a = fl1.A0(Application.class, mx6.class);
    public static final List b = nc8.I(mx6.class);

    public static final Constructor a(List list, Class cls) {
        list.getClass();
        Constructor<?>[] constructors = cls.getConstructors();
        constructors.getClass();
        for (Constructor<?> constructor : constructors) {
            Class<?>[] parameterTypes = constructor.getParameterTypes();
            parameterTypes.getClass();
            List listZ0 = x50.z0(parameterTypes);
            if (list.equals(listZ0)) {
                return constructor;
            }
            if (list.size() == listZ0.size() && listZ0.containsAll(list)) {
                throw new UnsupportedOperationException("Class " + cls.getSimpleName() + " must have parameters in the proper order: " + list);
            }
        }
        return null;
    }

    public static final tl8 b(Class cls, Constructor constructor, Object... objArr) {
        try {
            return (tl8) constructor.newInstance(Arrays.copyOf(objArr, objArr.length));
        } catch (IllegalAccessException e) {
            e6.i(fz5.k(cls, "Failed to access "), e);
            return null;
        } catch (InstantiationException e2) {
            e6.i(fz5.l(cls, "A ", " cannot be instantiated."), e2);
            return null;
        } catch (InvocationTargetException e3) {
            e6.i(fz5.k(cls, "An exception happened in constructor of "), e3.getCause());
            return null;
        }
    }
}
