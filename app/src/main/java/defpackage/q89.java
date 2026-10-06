package defpackage;

import java.lang.reflect.Field;
import java.nio.Buffer;
import java.nio.ByteOrder;
import java.security.AccessController;
import java.util.logging.Level;
import java.util.logging.Logger;
import sun.misc.Unsafe;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class q89 {
    public static final Unsafe a;
    public static final Class b;
    public static final p89 c;
    public static final boolean d;
    public static final long e;
    public static final boolean f;

    /* JADX WARN: Code duplicated, block: B:8:0x0028  */
    static {
        p89 o89Var;
        Unsafe unsafe;
        boolean z;
        p89 p89Var;
        Unsafe unsafe2;
        Unsafe unsafeG = g();
        a = unsafeG;
        b = r69.a;
        Class cls = Long.TYPE;
        boolean zL = l(cls);
        Class cls2 = Integer.TYPE;
        boolean zL2 = l(cls2);
        if (unsafeG == null) {
            o89Var = null;
        } else if (zL) {
            o89Var = new n89(unsafeG);
        } else if (zL2) {
            o89Var = new o89(unsafeG);
        } else {
            o89Var = null;
        }
        c = o89Var;
        if (o89Var != null && (unsafe2 = o89Var.a) != null) {
            try {
                Class<?> cls3 = unsafe2.getClass();
                cls3.getMethod("objectFieldOffset", Field.class);
                cls3.getMethod("getLong", Object.class, cls);
                j();
            } catch (Throwable th) {
                Logger.getLogger(q89.class.getName()).logp(Level.WARNING, "com.google.protobuf.UnsafeUtil", "logMissingMethod", "platform method missing - proto runtime falling back to safer methods: ".concat(String.valueOf(th)));
            }
        }
        p89 p89Var2 = c;
        if (p89Var2 == null || (unsafe = p89Var2.a) == null) {
            z = false;
        } else {
            try {
                Class<?> cls4 = unsafe.getClass();
                cls4.getMethod("objectFieldOffset", Field.class);
                cls4.getMethod("arrayBaseOffset", Class.class);
                cls4.getMethod("arrayIndexScale", Class.class);
                cls4.getMethod("getInt", Object.class, cls);
                cls4.getMethod("putInt", Object.class, cls, cls2);
                cls4.getMethod("getLong", Object.class, cls);
                cls4.getMethod("putLong", Object.class, cls, cls);
                cls4.getMethod("getObject", Object.class, cls);
                cls4.getMethod("putObject", Object.class, cls, Object.class);
                z = true;
            } catch (Throwable th2) {
                Logger.getLogger(q89.class.getName()).logp(Level.WARNING, "com.google.protobuf.UnsafeUtil", "logMissingMethod", "platform method missing - proto runtime falling back to safer methods: ".concat(String.valueOf(th2)));
                z = false;
            }
        }
        d = z;
        e = f(byte[].class);
        f(boolean[].class);
        h(boolean[].class);
        f(int[].class);
        h(int[].class);
        f(long[].class);
        h(long[].class);
        f(float[].class);
        h(float[].class);
        f(double[].class);
        h(double[].class);
        f(Object[].class);
        h(Object[].class);
        Field fieldJ = j();
        if (fieldJ != null && (p89Var = c) != null) {
            p89Var.a.objectFieldOffset(fieldJ);
        }
        f = ByteOrder.nativeOrder() == ByteOrder.BIG_ENDIAN;
    }

    public static Object a(Class cls) {
        try {
            return a.allocateInstance(cls);
        } catch (InstantiationException e2) {
            throw new IllegalStateException(e2);
        }
    }

    public static void b(Object obj, long j, int i) {
        c.e(obj, j, i);
    }

    public static void c(Object obj, long j, long j2) {
        c.f(obj, j, j2);
    }

    public static void d(Object obj, long j, Object obj2) {
        c.a.putObject(obj, j, obj2);
    }

    public static void e(byte[] bArr, long j, byte b2) {
        c.b(bArr, e + j, b2);
    }

    public static int f(Class cls) {
        if (d) {
            return c.a.arrayBaseOffset(cls);
        }
        return -1;
    }

    public static Unsafe g() {
        Unsafe unsafe;
        try {
            unsafe = (Unsafe) AccessController.doPrivileged(new m89());
        } catch (Throwable unused) {
            unsafe = null;
        }
        if (unsafe == null) {
            return null;
        }
        try {
            unsafe.arrayBaseOffset(byte[].class);
            return unsafe;
        } catch (Exception unused2) {
            Logger.getLogger(q89.class.getName()).logp(Level.WARNING, "com.google.protobuf.UnsafeUtil", "getUnsafe", "As part of the planned removal, sun.misc.Unsafe is available in the current environment but configured to throw on use. Protobuf will continue without using it, but with slightly reduced performance. --sun-misc-unsafe-memory-access=allow is likely available to opt back in if desired. A later Protobuf version release will stop using sun.misc.Unsafe entirely.");
            return null;
        }
    }

    public static void h(Class cls) {
        if (d) {
            c.a.arrayIndexScale(cls);
        }
    }

    public static void i(Object obj, long j, byte b2) {
        long j2 = (-4) & j;
        int iJ = c.j(obj, j2);
        int i = ((~((int) j)) & 3) << 3;
        b(obj, j2, ((255 & b2) << i) | (iJ & (~(255 << i))));
    }

    public static Field j() {
        Field declaredField;
        Field declaredField2;
        try {
            declaredField = Buffer.class.getDeclaredField("effectiveDirectAddress");
        } catch (Throwable unused) {
            declaredField = null;
        }
        if (declaredField != null) {
            return declaredField;
        }
        try {
            declaredField2 = Buffer.class.getDeclaredField("address");
        } catch (Throwable unused2) {
            declaredField2 = null;
        }
        if (declaredField2 == null || declaredField2.getType() != Long.TYPE) {
            return null;
        }
        return declaredField2;
    }

    public static void k(Object obj, long j, byte b2) {
        long j2 = (-4) & j;
        int i = (((int) j) & 3) << 3;
        b(obj, j2, ((255 & b2) << i) | (c.j(obj, j2) & (~(255 << i))));
    }

    public static boolean l(Class cls) {
        try {
            Class cls2 = b;
            Class cls3 = Boolean.TYPE;
            cls2.getMethod("peekLong", cls, cls3);
            cls2.getMethod("pokeLong", cls, Long.TYPE, cls3);
            Class cls4 = Integer.TYPE;
            cls2.getMethod("pokeInt", cls, cls4, cls3);
            cls2.getMethod("peekInt", cls, cls3);
            cls2.getMethod("pokeByte", cls, Byte.TYPE);
            cls2.getMethod("peekByte", cls);
            cls2.getMethod("pokeByteArray", cls, byte[].class, cls4, cls4);
            cls2.getMethod("peekByteArray", cls, byte[].class, cls4, cls4);
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    public static Object m(Object obj, long j) {
        return c.a.getObject(obj, j);
    }
}
