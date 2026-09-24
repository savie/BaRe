package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class iy9 extends k79 {
    private static final iy9 zzc;
    private static volatile a89 zzd;
    private int zze;
    private int zzf;
    private py9 zzg;
    private t69 zzh = t69.b;

    static {
        iy9 iy9Var = new iy9();
        zzc = iy9Var;
        k79.j(iy9.class, iy9Var);
    }

    public static a89 B() {
        return (a89) zzc.d(7);
    }

    public static iy9 u(t69 t69Var, f79 f79Var) {
        return (iy9) k79.h(zzc, t69Var, f79Var);
    }

    public static /* synthetic */ void v(iy9 iy9Var, t69 t69Var) {
        t69Var.getClass();
        iy9Var.zzh = t69Var;
    }

    public static /* synthetic */ void w(iy9 iy9Var, py9 py9Var) {
        iy9Var.zzg = py9Var;
        iy9Var.zze |= 1;
    }

    public static hy9 x() {
        return (hy9) zzc.o();
    }

    public static iy9 y() {
        return zzc;
    }

    public final t69 A() {
        return this.zzh;
    }

    @Override // defpackage.k79
    public final Object d(int i) {
        a89 i79Var;
        switch (ky9.a[i - 1]) {
            case 1:
                return new iy9();
            case 2:
                return new hy9(zzc);
            case 3:
                return new d89(zzc, "\u0000\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002ဉ\u0000\u0003\n", new Object[]{"zze", "zzf", "zzg", "zzh"});
            case 4:
                return zzc;
            case 5:
                a89 a89Var = zzd;
                if (a89Var != null) {
                    return a89Var;
                }
                synchronized (iy9.class) {
                    try {
                        i79Var = zzd;
                        if (i79Var == null) {
                            i79Var = new i79();
                            zzd = i79Var;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                    break;
                }
                return i79Var;
            case 6:
                return (byte) 1;
            default:
                throw null;
        }
    }

    public final int t() {
        return this.zzf;
    }

    public final py9 z() {
        py9 py9Var = this.zzg;
        return py9Var == null ? py9.y() : py9Var;
    }
}
