package defpackage;

import com.jcraft.jsch.SftpATTRS;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class k79 extends o69 {
    private static final Map<Class<?>, k79> zzc = new ConcurrentHashMap();
    protected l89 zzb;
    private int zzd;

    public k79() {
        this.zza = 0;
        this.zzd = -1;
        this.zzb = l89.f;
    }

    public static Object e(Method method, k79 k79Var, Object... objArr) {
        try {
            return method.invoke(k79Var, objArr);
        } catch (IllegalAccessException e) {
            e6.i("Couldn't use Java reflection to implement protocol message reflection.", e);
            return null;
        } catch (InvocationTargetException e2) {
            Throwable cause = e2.getCause();
            if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            }
            if (cause instanceof Error) {
                throw ((Error) cause);
            }
            e6.i("Unexpected exception thrown by generated accessor method.", cause);
            return null;
        }
    }

    public static k79 f(Class cls) {
        Map<Class<?>, k79> map = zzc;
        k79 k79Var = map.get(cls);
        if (k79Var == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                k79Var = map.get(cls);
            } catch (ClassNotFoundException e) {
                e6.j("Class initialization cannot fail.", e);
                return null;
            }
        }
        if (k79Var != null) {
            return k79Var;
        }
        k79 k79Var2 = (k79) ((k79) q89.a(cls)).d(6);
        if (k79Var2 != null) {
            map.put(cls, k79Var2);
            return k79Var2;
        }
        g84.c();
        return null;
    }

    public static k79 g(k79 k79Var, gk1 gk1Var, f79 f79Var) throws p79 {
        k79 k79VarP = k79Var.p();
        try {
            c89 c89Var = c89.c;
            c89Var.getClass();
            e89 e89VarA = c89Var.a(k79VarP.getClass());
            lb4 lb4Var = (lb4) gk1Var.b;
            if (lb4Var == null) {
                lb4Var = new lb4(gk1Var);
            }
            e89VarA.h(k79VarP, lb4Var, f79Var);
            e89VarA.e(k79VarP);
            return k79VarP;
        } catch (IOException e) {
            if (e.getCause() instanceof p79) {
                throw ((p79) e.getCause());
            }
            throw new p79(e.getMessage(), e);
        } catch (k89 e2) {
            throw new p79(e2.getMessage());
        } catch (RuntimeException e3) {
            if (e3.getCause() instanceof p79) {
                throw ((p79) e3.getCause());
            }
            throw e3;
        } catch (p79 e4) {
            if (e4.a) {
                throw new p79(e4.getMessage(), e4);
            }
            throw e4;
        }
    }

    public static k79 h(k79 k79Var, t69 t69Var, f79 f79Var) throws p79 {
        y69 y69VarT = t69Var.t();
        k79 k79VarG = g(k79Var, y69VarT, f79Var);
        y69VarT.K(0);
        l(k79VarG);
        return k79VarG;
    }

    public static k79 i(k79 k79Var, byte[] bArr, f79 f79Var) throws p79 {
        int length = bArr.length;
        if (length != 0) {
            k79 k79VarP = k79Var.p();
            try {
                c89 c89Var = c89.c;
                c89Var.getClass();
                e89 e89VarA = c89Var.a(k79VarP.getClass());
                s69 s69Var = new s69();
                f79Var.getClass();
                e89VarA.f(k79VarP, bArr, 0, length, s69Var);
                e89VarA.e(k79VarP);
                k79Var = k79VarP;
            } catch (IOException e) {
                if (e.getCause() instanceof p79) {
                    throw ((p79) e.getCause());
                }
                throw new p79(e.getMessage(), e);
            } catch (IndexOutOfBoundsException unused) {
                throw p79.g();
            } catch (k89 e2) {
                throw new p79(e2.getMessage());
            } catch (p79 e3) {
                if (e3.a) {
                    throw new p79(e3.getMessage(), e3);
                }
                throw e3;
            }
        }
        l(k79Var);
        return k79Var;
    }

    public static void j(Class cls, k79 k79Var) {
        k79Var.r();
        zzc.put(cls, k79Var);
    }

    public static void l(k79 k79Var) throws p79 {
        if (k79Var != null && !n(k79Var, true)) {
            throw new p79(new k89().getMessage());
        }
    }

    public static final boolean n(k79 k79Var, boolean z) {
        byte bByteValue = ((Byte) k79Var.d(1)).byteValue();
        if (bByteValue == 1) {
            return true;
        }
        if (bByteValue == 0) {
            return false;
        }
        c89 c89Var = c89.c;
        c89Var.getClass();
        boolean zA = c89Var.a(k79Var.getClass()).a(k79Var);
        if (z) {
            k79Var.d(2);
        }
        return zA;
    }

    @Override // defpackage.o69
    public final int a(e89 e89Var) {
        int iG;
        int iG2;
        if (s()) {
            if (e89Var == null) {
                c89 c89Var = c89.c;
                c89Var.getClass();
                iG2 = c89Var.a(getClass()).g(this);
            } else {
                iG2 = e89Var.g(this);
            }
            if (iG2 >= 0) {
                return iG2;
            }
            l0.e(fz5.j(iG2, "serialized size must be non-negative, was "));
            return 0;
        }
        int i = this.zzd;
        if ((i & Integer.MAX_VALUE) != Integer.MAX_VALUE) {
            return i & Integer.MAX_VALUE;
        }
        if (e89Var == null) {
            c89 c89Var2 = c89.c;
            c89Var2.getClass();
            iG = c89Var2.a(getClass()).g(this);
        } else {
            iG = e89Var.g(this);
        }
        m(iG);
        return iG;
    }

    public abstract Object d(int i);

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        c89 c89Var = c89.c;
        c89Var.getClass();
        return c89Var.a(getClass()).b(this, (k79) obj);
    }

    public final int hashCode() {
        if (s()) {
            c89 c89Var = c89.c;
            c89Var.getClass();
            return c89Var.a(getClass()).d(this);
        }
        if (this.zza == 0) {
            c89 c89Var2 = c89.c;
            c89Var2.getClass();
            this.zza = c89Var2.a(getClass()).d(this);
        }
        return this.zza;
    }

    public final void k(c79 c79Var) {
        c89 c89Var = c89.c;
        c89Var.getClass();
        e89 e89VarA = c89Var.a(getClass());
        jq6 jq6Var = c79Var.a;
        if (jq6Var == null) {
            jq6Var = new jq6(c79Var);
        }
        e89VarA.c(this, jq6Var);
    }

    public final void m(int i) {
        if (i < 0) {
            l0.e(fz5.j(i, "serialized size must be non-negative, was "));
        } else {
            this.zzd = (i & Integer.MAX_VALUE) | (this.zzd & SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED);
        }
    }

    public final j79 o() {
        return (j79) d(5);
    }

    public final k79 p() {
        return (k79) d(4);
    }

    public final void q() {
        c89 c89Var = c89.c;
        c89Var.getClass();
        c89Var.a(getClass()).e(this);
        r();
    }

    public final void r() {
        this.zzd &= Integer.MAX_VALUE;
    }

    public final boolean s() {
        return (this.zzd & SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED) != 0;
    }

    public final String toString() {
        String string = super.toString();
        char[] cArr = y79.a;
        StringBuilder sb = new StringBuilder();
        sb.append("# ");
        sb.append(string);
        y79.c(this, sb, 0);
        return sb.toString();
    }
}
