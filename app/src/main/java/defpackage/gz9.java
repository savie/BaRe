package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class gz9 extends k79 {
    private static final gz9 zzc;
    private static volatile a89 zzd;
    private int zze;
    private int zzf;
    private az9 zzg;
    private t69 zzh = t69.b;

    static {
        gz9 gz9Var = new gz9();
        zzc = gz9Var;
        k79.j(gz9.class, gz9Var);
    }

    public static gz9 A() {
        return zzc;
    }

    public static a89 C() {
        return (a89) zzc.d(7);
    }

    public static gz9 u(t69 t69Var, f79 f79Var) {
        return (gz9) k79.h(zzc, t69Var, f79Var);
    }

    public static /* synthetic */ void w(gz9 gz9Var, x69 x69Var) {
        x69Var.getClass();
        gz9Var.zzh = x69Var;
    }

    public static /* synthetic */ void x(gz9 gz9Var, az9 az9Var) {
        gz9Var.zzg = az9Var;
        gz9Var.zze |= 1;
    }

    public static fz9 z() {
        return (fz9) zzc.o();
    }

    public final t69 B() {
        return this.zzh;
    }

    @Override // defpackage.k79
    public final Object d(int i) {
        a89 i79Var;
        switch (ez9.a[i - 1]) {
            case 1:
                return new gz9();
            case 2:
                return new fz9(zzc);
            case 3:
                return new d89(zzc, "\u0000\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002ဉ\u0000\u0003\n", new Object[]{"zze", "zzf", "zzg", "zzh"});
            case 4:
                return zzc;
            case 5:
                a89 a89Var = zzd;
                if (a89Var != null) {
                    return a89Var;
                }
                synchronized (gz9.class) {
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

    public final az9 y() {
        az9 az9Var = this.zzg;
        return az9Var == null ? az9.A() : az9Var;
    }
}
