package defpackage;

import android.util.Log;
import dalvik.system.VMRuntime;
import java.lang.invoke.MethodHandle;
import java.lang.invoke.MethodHandles;
import java.lang.reflect.Executable;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.HashSet;
import sun.misc.Unsafe;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class h44 {
    public static final Unsafe a;
    public static final long b;
    public static final long c;
    public static final long d;
    public static final long e;
    public static final long f;

    static {
        long jObjectFieldOffset;
        try {
            Unsafe unsafe = (Unsafe) Unsafe.class.getDeclaredMethod("getUnsafe", null).invoke(null, null);
            a = unsafe;
            vw1 vw1Var = new vw1(System.getProperty("java.boot.class.path", "").split(":", 2)[0], null);
            Class clsLoadClass = vw1Var.loadClass(Executable.class.getName());
            Class clsLoadClass2 = vw1Var.loadClass(MethodHandle.class.getName());
            Class clsLoadClass3 = vw1Var.loadClass(Class.class.getName());
            b = unsafe.objectFieldOffset(clsLoadClass.getDeclaredField("artMethod"));
            unsafe.objectFieldOffset(clsLoadClass.getDeclaredField("declaringClass"));
            c = unsafe.objectFieldOffset(clsLoadClass2.getDeclaredField("artFieldOrMethod"));
            try {
                jObjectFieldOffset = unsafe.objectFieldOffset(clsLoadClass3.getDeclaredField("fields"));
            } catch (NoSuchFieldException unused) {
                Unsafe unsafe2 = a;
                jObjectFieldOffset = unsafe2.objectFieldOffset(clsLoadClass3.getDeclaredField("iFields"));
                unsafe2.objectFieldOffset(clsLoadClass3.getDeclaredField("sFields"));
            }
            Unsafe unsafe3 = a;
            long jObjectFieldOffset2 = unsafe3.objectFieldOffset(clsLoadClass3.getDeclaredField("methods"));
            d = jObjectFieldOffset2;
            Method declaredMethod = a44.class.getDeclaredMethod("a", null);
            Method declaredMethod2 = a44.class.getDeclaredMethod("b", null);
            declaredMethod.setAccessible(true);
            declaredMethod2.setAccessible(true);
            MethodHandle methodHandleUnreflect = MethodHandles.lookup().unreflect(declaredMethod);
            MethodHandle methodHandleUnreflect2 = MethodHandles.lookup().unreflect(declaredMethod2);
            long j = c;
            long j2 = unsafe3.getLong(methodHandleUnreflect, j);
            long j3 = unsafe3.getLong(methodHandleUnreflect2, j);
            long j4 = unsafe3.getLong(a44.class, jObjectFieldOffset2);
            long j5 = j3 - j2;
            e = j5;
            f = (j2 - j4) - j5;
            Field declaredField = a44.class.getDeclaredField("i");
            Field declaredField2 = a44.class.getDeclaredField("j");
            declaredField.setAccessible(true);
            declaredField2.setAccessible(true);
            MethodHandle methodHandleUnreflectGetter = MethodHandles.lookup().unreflectGetter(declaredField);
            MethodHandle methodHandleUnreflectGetter2 = MethodHandles.lookup().unreflectGetter(declaredField2);
            unsafe3.getLong(methodHandleUnreflectGetter, j);
            unsafe3.getLong(methodHandleUnreflectGetter2, j);
            unsafe3.getLong(a44.class, jObjectFieldOffset);
        } catch (ReflectiveOperationException e2) {
            Log.e("HiddenApiBypass", "Initialize error", e2);
            throw new ExceptionInInitializerError(e2);
        }
    }

    public static Object a(Class cls, Object obj, String str, Object... objArr) throws NoSuchMethodException {
        if (obj != null && !cls.isInstance(obj)) {
            c6.f("this object is not an instance of the given class");
            return null;
        }
        Method declaredMethod = y34.class.getDeclaredMethod("invoke", Object[].class);
        declaredMethod.setAccessible(true);
        Unsafe unsafe = a;
        long j = unsafe.getLong(cls, d);
        if (j == 0) {
            throw new NoSuchMethodException("Cannot find matching method");
        }
        int i = unsafe.getInt(j);
        for (int i2 = 0; i2 < i; i2++) {
            a.putLong(declaredMethod, b, f + (((long) i2) * e) + j);
            if (str.equals(declaredMethod.getName())) {
                Class<?>[] parameterTypes = declaredMethod.getParameterTypes();
                HashSet hashSet = b44.a;
                if (parameterTypes.length == objArr.length) {
                    for (int i3 = 0; i3 < parameterTypes.length; i3++) {
                        if (parameterTypes[i3].isPrimitive()) {
                            Class<?> cls2 = parameterTypes[i3];
                            if ((cls2 != Integer.TYPE || (objArr[i3] instanceof Integer)) && ((cls2 != Byte.TYPE || (objArr[i3] instanceof Byte)) && ((cls2 != Character.TYPE || (objArr[i3] instanceof Character)) && ((cls2 != Boolean.TYPE || (objArr[i3] instanceof Boolean)) && ((cls2 != Double.TYPE || (objArr[i3] instanceof Double)) && ((cls2 != Float.TYPE || (objArr[i3] instanceof Float)) && ((cls2 != Long.TYPE || (objArr[i3] instanceof Long)) && (cls2 != Short.TYPE || (objArr[i3] instanceof Short))))))))) {
                            }
                        } else {
                            Object obj2 = objArr[i3];
                            if (obj2 == null || parameterTypes[i3].isInstance(obj2)) {
                            }
                        }
                    }
                    return declaredMethod.invoke(obj, objArr);
                }
                continue;
            }
        }
        throw new NoSuchMethodException("Cannot find matching method");
    }

    public static boolean b(String... strArr) {
        try {
            a(VMRuntime.class, a(VMRuntime.class, null, "getRuntime", new Object[0]), "setHiddenApiExemptions", strArr);
            return true;
        } catch (ReflectiveOperationException e2) {
            Log.w("HiddenApiBypass", "setHiddenApiExemptions", e2);
            return false;
        }
    }
}
