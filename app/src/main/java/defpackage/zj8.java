package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class zj8 {
    public final k50 a;
    public final k50 b;
    public final k50 c;

    public zj8(k50 k50Var, k50 k50Var2, k50 k50Var3) {
        this.a = k50Var;
        this.b = k50Var2;
        this.c = k50Var3;
    }

    public abstract ak8 a();

    public final Class b(Class cls) throws ClassNotFoundException {
        String name = cls.getName();
        k50 k50Var = this.c;
        Class cls2 = (Class) k50Var.get(name);
        if (cls2 != null) {
            return cls2;
        }
        Class<?> cls3 = Class.forName(u48.n(cls.getPackage().getName(), ".", cls.getSimpleName(), "Parcelizer"), false, cls.getClassLoader());
        k50Var.put(cls.getName(), cls3);
        return cls3;
    }

    public final Method c(String str) throws NoSuchMethodException {
        k50 k50Var = this.a;
        Method method = (Method) k50Var.get(str);
        if (method != null) {
            return method;
        }
        System.currentTimeMillis();
        Method declaredMethod = Class.forName(str, true, zj8.class.getClassLoader()).getDeclaredMethod("read", zj8.class);
        k50Var.put(str, declaredMethod);
        return declaredMethod;
    }

    public final Method d(Class cls) throws NoSuchMethodException, ClassNotFoundException {
        String name = cls.getName();
        k50 k50Var = this.b;
        Method method = (Method) k50Var.get(name);
        if (method != null) {
            return method;
        }
        Class clsB = b(cls);
        System.currentTimeMillis();
        Method declaredMethod = clsB.getDeclaredMethod("write", cls, zj8.class);
        k50Var.put(cls.getName(), declaredMethod);
        return declaredMethod;
    }

    public abstract boolean e(int i);

    public final Parcelable f(Parcelable parcelable, int i) {
        if (!e(i)) {
            return parcelable;
        }
        return ((ak8) this).e.readParcelable(ak8.class.getClassLoader());
    }

    public final bk8 g() {
        String string = ((ak8) this).e.readString();
        if (string == null) {
            return null;
        }
        try {
            return (bk8) c(string).invoke(null, a());
        } catch (ClassNotFoundException e) {
            e6.i("VersionedParcel encountered ClassNotFoundException", e);
            return null;
        } catch (IllegalAccessException e2) {
            e6.i("VersionedParcel encountered IllegalAccessException", e2);
            return null;
        } catch (NoSuchMethodException e3) {
            e6.i("VersionedParcel encountered NoSuchMethodException", e3);
            return null;
        } catch (InvocationTargetException e4) {
            if (e4.getCause() instanceof RuntimeException) {
                throw ((RuntimeException) e4.getCause());
            }
            e6.i("VersionedParcel encountered InvocationTargetException", e4);
            return null;
        }
    }

    public abstract void h(int i);

    public final void i(bk8 bk8Var) {
        if (bk8Var == null) {
            ((ak8) this).e.writeString(null);
            return;
        }
        try {
            ((ak8) this).e.writeString(b(bk8Var.getClass()).getName());
            ak8 ak8VarA = a();
            try {
                d(bk8Var.getClass()).invoke(null, bk8Var, ak8VarA);
                Parcel parcel = ak8VarA.e;
                int i = ak8VarA.i;
                if (i >= 0) {
                    int i2 = ak8VarA.d.get(i);
                    int iDataPosition = parcel.dataPosition();
                    parcel.setDataPosition(i2);
                    parcel.writeInt(iDataPosition - i2);
                    parcel.setDataPosition(iDataPosition);
                }
            } catch (ClassNotFoundException e) {
                e6.i("VersionedParcel encountered ClassNotFoundException", e);
            } catch (IllegalAccessException e2) {
                e6.i("VersionedParcel encountered IllegalAccessException", e2);
            } catch (NoSuchMethodException e3) {
                e6.i("VersionedParcel encountered NoSuchMethodException", e3);
            } catch (InvocationTargetException e4) {
                if (e4.getCause() instanceof RuntimeException) {
                    throw ((RuntimeException) e4.getCause());
                }
                e6.i("VersionedParcel encountered InvocationTargetException", e4);
            }
        } catch (ClassNotFoundException e5) {
            e6.i(bk8Var.getClass().getSimpleName().concat(" does not have a Parcelizer"), e5);
        }
    }
}
