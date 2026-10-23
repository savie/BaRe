package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class dz9 extends k79 {
    private static final dz9 zzc;
    private static volatile a89 zzd;
    private int zze;
    private int zzf;
    private gz9 zzg;
    private t69 zzh = t69.b;

    static {
        dz9 dz9Var = new dz9();
        zzc = dz9Var;
        k79.j(dz9.class, dz9Var);
    }

    public static a89 B() {
        return (a89) zzc.d(7);
    }

    public static dz9 u(t69 t69Var, f79 f79Var) {
        return (dz9) k79.h(zzc, t69Var, f79Var);
    }

    public static /* synthetic */ void w(dz9 dz9Var, x69 x69Var) {
        x69Var.getClass();
        dz9Var.zzh = x69Var;
    }

    public static /* synthetic */ void x(dz9 dz9Var, gz9 gz9Var) {
        dz9Var.zzg = gz9Var;
        dz9Var.zze |= 1;
    }

    public static cz9 y() {
        return (cz9) zzc.o();
    }

    public final t69 A() {
        return this.zzh;
    }

    @Override // defpackage.k79
    public final Object d(int i) {
        a89 i79Var;
        switch (bz9.a[i - 1]) {
            case 1:
                return new dz9();
            case 2:
                return new cz9(zzc);
            case 3:
                return new d89(zzc, "\u0000\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002ဉ\u0000\u0003\n", new Object[]{"zze", "zzf", "zzg", "zzh"});
            case 4:
                return zzc;
            case 5:
                a89 a89Var = zzd;
                if (a89Var != null) {
                    return a89Var;
                }
                synchronized (dz9.class) {
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

    public final gz9 z() {
        gz9 gz9Var = this.zzg;
        return gz9Var == null ? gz9.A() : gz9Var;
    }
}
