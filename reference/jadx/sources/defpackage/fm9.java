package defpackage;

import java.lang.reflect.Field;
import java.nio.Buffer;
import java.nio.ByteOrder;
import java.security.AccessController;
import java.util.logging.Level;
import java.util.logging.Logger;
import libcore.io.Memory;
import sun.misc.Unsafe;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class fm9 {
    public static final Unsafe a;
    public static final Class b;
    public static final cm9 c;
    public static final boolean d;
    public static final boolean e;
    public static final boolean f;

    /* JADX WARN: Code duplicated, block: B:11:0x0043  */
    static {
        boolean z;
        boolean z2;
        cm9 cm9Var;
        Unsafe unsafeE = e();
        a = unsafeE;
        int i = nf9.a;
        b = Memory.class;
        Class cls = Long.TYPE;
        boolean zM = m(cls);
        Class cls2 = Integer.TYPE;
        boolean zM2 = m(cls2);
        cm9 wl9Var = null;
        if (unsafeE != null) {
            if (zM) {
                wl9Var = new zl9(unsafeE);
            } else if (zM2) {
                wl9Var = new wl9(unsafeE);
            }
        }
        c = wl9Var;
        if (wl9Var == null) {
            z = false;
        } else {
            try {
                Class<?> cls3 = wl9Var.a.getClass();
                cls3.getMethod("objectFieldOffset", Field.class);
                cls3.getMethod("getLong", Object.class, cls);
                if (p() == null) {
                    z = false;
                } else {
                    z = true;
                }
            } catch (Throwable th) {
                Logger.getLogger(fm9.class.getName()).logp(Level.WARNING, "com.google.protobuf.UnsafeUtil", "logMissingMethod", "platform method missing - proto runtime falling back to safer methods: ".concat(th.toString()));
            }
        }
        d = z;
        cm9 cm9Var2 = c;
        if (cm9Var2 == null) {
            z2 = false;
        } else {
            try {
                Class<?> cls4 = cm9Var2.a.getClass();
                cls4.getMethod("objectFieldOffset", Field.class);
                cls4.getMethod("arrayBaseOffset", Class.class);
                cls4.getMethod("arrayIndexScale", Class.class);
                cls4.getMethod("getInt", Object.class, cls);
                cls4.getMethod("putInt", Object.class, cls, cls2);
                cls4.getMethod("getLong", Object.class, cls);
                cls4.getMethod("putLong", Object.class, cls, cls);
                cls4.getMethod("getObject", Object.class, cls);
                cls4.getMethod("putObject", Object.class, cls, Object.class);
                z2 = true;
            } catch (Throwable th2) {
                Logger.getLogger(fm9.class.getName()).logp(Level.WARNING, "com.google.protobuf.UnsafeUtil", "logMissingMethod", "platform method missing - proto runtime falling back to safer methods: ".concat(th2.toString()));
                z2 = false;
            }
        }
        e = z2;
        n(byte[].class);
        n(boolean[].class);
        o(boolean[].class);
        n(int[].class);
        o(int[].class);
        n(long[].class);
        o(long[].class);
        n(float[].class);
        o(float[].class);
        n(double[].class);
        o(double[].class);
        n(Object[].class);
        o(Object[].class);
        Field fieldP = p();
        if (fieldP != null && (cm9Var = c) != null) {
            cm9Var.a.objectFieldOffset(fieldP);
        }
        f = ByteOrder.nativeOrder() == ByteOrder.BIG_ENDIAN;
    }

    public static int a(Object obj, long j) {
        return c.a.getInt(obj, j);
    }

    public static long b(Object obj, long j) {
        return c.a.getLong(obj, j);
    }

    public static Object c(Class cls) {
        try {
            return a.allocateInstance(cls);
        } catch (InstantiationException e2) {
            throw new IllegalStateException(e2);
        }
    }

    public static Object d(Object obj, long j) {
        return c.a.getObject(obj, j);
    }

    public static Unsafe e() {
        try {
            return (Unsafe) AccessController.doPrivileged(new ul9());
        } catch (Throwable unused) {
            return null;
        }
    }

    public static /* synthetic */ void f(Object obj, long j, boolean z) {
        cm9 cm9Var = c;
        long j2 = (-4) & j;
        int i = cm9Var.a.getInt(obj, j2);
        int i2 = ((~((int) j)) & 3) << 3;
        cm9Var.a.putInt(obj, j2, ((z ? 1 : 0) << i2) | ((~(255 << i2)) & i));
    }

    public static /* synthetic */ void g(Object obj, long j, boolean z) {
        cm9 cm9Var = c;
        long j2 = (-4) & j;
        int i = (((int) j) & 3) << 3;
        cm9Var.a.putInt(obj, j2, ((z ? 1 : 0) << i) | ((~(255 << i)) & cm9Var.a.getInt(obj, j2)));
    }

    public static void h(Object obj, long j, int i) {
        c.a.putInt(obj, j, i);
    }

    public static void i(Object obj, long j, long j2) {
        c.a.putLong(obj, j, j2);
    }

    public static void j(Object obj, long j, Object obj2) {
        c.a.putObject(obj, j, obj2);
    }

    public static /* bridge */ /* synthetic */ boolean k(Object obj, long j) {
        return ((byte) ((c.a.getInt(obj, (-4) & j) >>> ((int) (((~j) & 3) << 3))) & 255)) != 0;
    }

    public static /* bridge */ /* synthetic */ boolean l(Object obj, long j) {
        return ((byte) ((c.a.getInt(obj, (-4) & j) >>> ((int) ((j & 3) << 3))) & 255)) != 0;
    }

    public static boolean m(Class cls) {
        int i = nf9.a;
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

    public static void n(Class cls) {
        if (e) {
            c.a.arrayBaseOffset(cls);
        }
    }

    public static void o(Class cls) {
        if (e) {
            c.a.arrayIndexScale(cls);
        }
    }

    public static Field p() {
        Field declaredField;
        Field declaredField2;
        int i = nf9.a;
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
}
