package defpackage;

import androidx.fragment.app.o;
import androidx.fragment.app.z;
import java.lang.reflect.InvocationTargetException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class or3 {
    public static final dg7 b = new dg7(0);
    public final /* synthetic */ z a;

    public or3(z zVar) {
        this.a = zVar;
    }

    public static Class b(ClassLoader classLoader, String str) throws ClassNotFoundException {
        dg7 dg7Var = b;
        dg7 dg7Var2 = (dg7) dg7Var.get(classLoader);
        if (dg7Var2 == null) {
            dg7Var2 = new dg7(0);
            dg7Var.put(classLoader, dg7Var2);
        }
        Class cls = (Class) dg7Var2.get(str);
        if (cls != null) {
            return cls;
        }
        Class<?> cls2 = Class.forName(str, false, classLoader);
        dg7Var2.put(str, cls2);
        return cls2;
    }

    public static Class c(ClassLoader classLoader, String str) {
        try {
            return b(classLoader, str);
        } catch (ClassCastException e) {
            throw new er3(eq3.k("Unable to instantiate fragment ", str, ": make sure class is a valid subclass of Fragment"), e);
        } catch (ClassNotFoundException e2) {
            throw new er3(eq3.k("Unable to instantiate fragment ", str, ": make sure class name exists"), e2);
        }
    }

    public final o a(String str) {
        try {
            return (o) c(this.a.w.e.getClassLoader(), str).getConstructor(null).newInstance(null);
        } catch (IllegalAccessException e) {
            throw new er3(eq3.k("Unable to instantiate fragment ", str, ": make sure class name exists, is public, and has an empty constructor that is public"), e);
        } catch (InstantiationException e2) {
            throw new er3(eq3.k("Unable to instantiate fragment ", str, ": make sure class name exists, is public, and has an empty constructor that is public"), e2);
        } catch (NoSuchMethodException e3) {
            throw new er3(eq3.k("Unable to instantiate fragment ", str, ": could not find Fragment constructor"), e3);
        } catch (InvocationTargetException e4) {
            throw new er3(eq3.k("Unable to instantiate fragment ", str, ": calling Fragment constructor caused an exception"), e4);
        }
    }
}
