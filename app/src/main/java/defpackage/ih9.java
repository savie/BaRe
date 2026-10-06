package defpackage;

import com.jcraft.jsch.SftpATTRS;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class ih9 extends jf9 {
    private static final Map zzb = new ConcurrentHashMap();
    protected il9 zzc;
    private int zzd;

    public ih9() {
        this.zza = 0;
        this.zzd = -1;
        this.zzc = il9.e;
    }

    public static ih9 a(Class cls) {
        Map map = zzb;
        ih9 ih9Var = (ih9) map.get(cls);
        if (ih9Var == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                ih9Var = (ih9) map.get(cls);
            } catch (ClassNotFoundException e) {
                e6.j("Class initialization cannot fail.", e);
                return null;
            }
        }
        if (ih9Var != null) {
            return ih9Var;
        }
        ih9 ih9Var2 = (ih9) ((ih9) fm9.c(cls)).h(6);
        if (ih9Var2 != null) {
            map.put(cls, ih9Var2);
            return ih9Var2;
        }
        g84.c();
        return null;
    }

    public static Object c(Method method, ih9 ih9Var, Object... objArr) {
        try {
            return method.invoke(ih9Var, objArr);
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

    public static void e(wm9 wm9Var) {
        wm9Var.d();
        zzb.put(wm9.class, wm9Var);
    }

    public final ih9 b() {
        return (ih9) h(4);
    }

    public final void d() {
        this.zzd &= Integer.MAX_VALUE;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return dk9.c.a(getClass()).b(this, (ih9) obj);
    }

    public final void f() {
        this.zzd = (this.zzd & SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED) | Integer.MAX_VALUE;
    }

    public final boolean g() {
        return (this.zzd & SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED) != 0;
    }

    public abstract Object h(int i);

    public final int hashCode() {
        if (g()) {
            return dk9.c.a(getClass()).e(this);
        }
        int i = this.zza;
        if (i != 0) {
            return i;
        }
        int iE = dk9.c.a(getClass()).e(this);
        this.zza = iE;
        return iE;
    }

    public final String toString() {
        String string = super.toString();
        char[] cArr = fj9.a;
        StringBuilder sb = new StringBuilder();
        sb.append("# ");
        sb.append(string);
        fj9.c(this, sb, 0);
        return sb.toString();
    }
}
