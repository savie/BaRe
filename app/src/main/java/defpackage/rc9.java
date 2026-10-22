package defpackage;

import java.security.AccessController;
import java.security.PrivilegedActionException;
import sun.misc.Unsafe;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class rc9 extends ho6 {
    public static final Unsafe f;
    public static final long k;
    public static final long n;
    public static final long p;
    public static final long q;
    public static final long r;

    static {
        Unsafe unsafe;
        try {
            try {
                unsafe = Unsafe.getUnsafe();
            } catch (SecurityException unused) {
                unsafe = (Unsafe) AccessController.doPrivileged(new cd9());
            }
            try {
                n = unsafe.objectFieldOffset(uc9.class.getDeclaredField("c"));
                k = unsafe.objectFieldOffset(uc9.class.getDeclaredField("b"));
                p = unsafe.objectFieldOffset(uc9.class.getDeclaredField("a"));
                q = unsafe.objectFieldOffset(sc9.class.getDeclaredField("a"));
                r = unsafe.objectFieldOffset(sc9.class.getDeclaredField("b"));
                f = unsafe;
            } catch (NoSuchFieldException e) {
                y5.k(e);
            }
        } catch (PrivilegedActionException e2) {
            e6.i("Could not initialize intrinsics", e2.getCause());
        }
    }

    @Override // defpackage.ho6
    public final nc9 b0(ue9 ue9Var) {
        nc9 nc9Var;
        nc9 nc9Var2 = nc9.d;
        do {
            nc9Var = ue9Var.b;
            if (nc9Var2 == nc9Var) {
                break;
            }
        } while (!g0(ue9Var, nc9Var, nc9Var2));
        return nc9Var;
    }

    @Override // defpackage.ho6
    public final sc9 d0(ue9 ue9Var) {
        sc9 sc9Var;
        sc9 sc9Var2 = sc9.c;
        do {
            sc9Var = ue9Var.c;
            if (sc9Var2 == sc9Var) {
                break;
            }
        } while (!i0(ue9Var, sc9Var, sc9Var2));
        return sc9Var;
    }

    @Override // defpackage.ho6
    public final void e0(sc9 sc9Var, sc9 sc9Var2) {
        f.putObject(sc9Var, r, sc9Var2);
    }

    @Override // defpackage.ho6
    public final void f0(sc9 sc9Var, Thread thread) {
        f.putObject(sc9Var, q, thread);
    }

    @Override // defpackage.ho6
    public final boolean g0(ue9 ue9Var, nc9 nc9Var, nc9 nc9Var2) {
        return zc9.a(f, ue9Var, k, nc9Var, nc9Var2);
    }

    @Override // defpackage.ho6
    public final boolean h0(uc9 uc9Var, Object obj, Object obj2) {
        return zc9.a(f, uc9Var, p, obj, obj2);
    }

    @Override // defpackage.ho6
    public final boolean i0(uc9 uc9Var, sc9 sc9Var, sc9 sc9Var2) {
        return zc9.a(f, uc9Var, n, sc9Var, sc9Var2);
    }
}
