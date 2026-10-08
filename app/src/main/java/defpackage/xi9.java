package defpackage;

import com.jcraft.jsch.SftpATTRS;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class xi9 extends mg9 {
    private static final Map zzb = new ConcurrentHashMap();
    protected mn9 zzc;
    private int zzd;

    public xi9() {
        this.zza = 0;
        this.zzd = -1;
        this.zzc = mn9.f;
    }

    public static void f(Class cls, xi9 xi9Var) {
        xi9Var.e();
        zzb.put(cls, xi9Var);
    }

    public static final boolean i(xi9 xi9Var, boolean z) {
        byte bByteValue = ((Byte) xi9Var.j(1)).byteValue();
        if (bByteValue == 1) {
            return true;
        }
        if (bByteValue == 0) {
            return false;
        }
        boolean zD = bm9.c.a(xi9Var.getClass()).d(xi9Var);
        if (z) {
            xi9Var.j(2);
        }
        return zD;
    }

    public static xi9 m(Class cls) {
        Map map = zzb;
        xi9 xi9Var = (xi9) map.get(cls);
        if (xi9Var == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                xi9Var = (xi9) map.get(cls);
            } catch (ClassNotFoundException e) {
                e6.j("Class initialization cannot fail.", e);
                return null;
            }
        }
        if (xi9Var != null) {
            return xi9Var;
        }
        xi9 xi9Var2 = (xi9) ((xi9) un9.g(cls)).j(6);
        if (xi9Var2 != null) {
            map.put(cls, xi9Var2);
            return xi9Var2;
        }
        g84.c();
        return null;
    }

    public static Object o(Method method, xi9 xi9Var, Object... objArr) {
        try {
            return method.invoke(xi9Var, objArr);
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

    @Override // defpackage.mg9
    public final void a(nh9 nh9Var) {
        jm9 jm9VarA = bm9.c.a(getClass());
        om5 om5Var = nh9Var.a;
        if (om5Var == null) {
            om5Var = new om5(nh9Var);
        }
        jm9VarA.c(this, om5Var);
    }

    @Override // defpackage.mg9
    public final int c(jm9 jm9Var) {
        if (h()) {
            int iF = jm9Var.f(this);
            if (iF >= 0) {
                return iF;
            }
            l0.e(fz5.j(iF, "serialized size must be non-negative, was "));
            return 0;
        }
        int i = this.zzd & Integer.MAX_VALUE;
        if (i != Integer.MAX_VALUE) {
            return i;
        }
        int iF2 = jm9Var.f(this);
        if (iF2 >= 0) {
            this.zzd = (this.zzd & SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED) | iF2;
            return iF2;
        }
        l0.e(fz5.j(iF2, "serialized size must be non-negative, was "));
        return 0;
    }

    @Override // defpackage.mg9
    public final int d() {
        if (h()) {
            int iF = bm9.c.a(getClass()).f(this);
            if (iF >= 0) {
                return iF;
            }
            l0.e(fz5.j(iF, "serialized size must be non-negative, was "));
            return 0;
        }
        int i = this.zzd & Integer.MAX_VALUE;
        if (i != Integer.MAX_VALUE) {
            return i;
        }
        int iF2 = bm9.c.a(getClass()).f(this);
        if (iF2 >= 0) {
            this.zzd = (this.zzd & SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED) | iF2;
            return iF2;
        }
        l0.e(fz5.j(iF2, "serialized size must be non-negative, was "));
        return 0;
    }

    public final void e() {
        this.zzd &= Integer.MAX_VALUE;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return bm9.c.a(getClass()).e(this, (xi9) obj);
    }

    public final void g() {
        this.zzd = (this.zzd & SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED) | Integer.MAX_VALUE;
    }

    public final boolean h() {
        return (this.zzd & SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED) != 0;
    }

    public final int hashCode() {
        if (h()) {
            return bm9.c.a(getClass()).a(this);
        }
        int i = this.zza;
        if (i != 0) {
            return i;
        }
        int iA = bm9.c.a(getClass()).a(this);
        this.zza = iA;
        return iA;
    }

    public abstract Object j(int i);

    public final ri9 k() {
        return (ri9) j(5);
    }

    public final ri9 l() {
        ri9 ri9Var = (ri9) j(5);
        if (!ri9Var.a.equals(this)) {
            if (!ri9Var.b.h()) {
                xi9 xi9VarN = ri9Var.a.n();
                bm9.c.a(xi9VarN.getClass()).zzg(xi9VarN, ri9Var.b);
                ri9Var.b = xi9VarN;
            }
            xi9 xi9Var = ri9Var.b;
            bm9.c.a(xi9Var.getClass()).zzg(xi9Var, this);
        }
        return ri9Var;
    }

    public final xi9 n() {
        return (xi9) j(4);
    }

    public final String toString() {
        String string = super.toString();
        char[] cArr = nl9.a;
        StringBuilder sb = new StringBuilder();
        sb.append("# ");
        sb.append(string);
        nl9.c(this, sb, 0);
        return sb.toString();
    }
}
