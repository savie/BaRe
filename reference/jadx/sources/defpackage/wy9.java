package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class wy9 extends k79 {
    private static final wy9 zzc;
    private static volatile a89 zzd;
    private int zze;
    private az9 zzf;

    static {
        wy9 wy9Var = new wy9();
        zzc = wy9Var;
        k79.j(wy9.class, wy9Var);
    }

    public static wy9 t(t69 t69Var, f79 f79Var) {
        return (wy9) k79.h(zzc, t69Var, f79Var);
    }

    public static /* synthetic */ void u(wy9 wy9Var, az9 az9Var) {
        wy9Var.zzf = az9Var;
        wy9Var.zze |= 1;
    }

    public static vy9 v() {
        return (vy9) zzc.o();
    }

    @Override // defpackage.k79
    public final Object d(int i) {
        a89 i79Var;
        switch (uy9.a[i - 1]) {
            case 1:
                return new wy9();
            case 2:
                return new vy9(zzc);
            case 3:
                return new d89(zzc, "\u0000\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001ဉ\u0000", new Object[]{"zze", "zzf"});
            case 4:
                return zzc;
            case 5:
                a89 a89Var = zzd;
                if (a89Var != null) {
                    return a89Var;
                }
                synchronized (wy9.class) {
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

    public final az9 w() {
        az9 az9Var = this.zzf;
        return az9Var == null ? az9.A() : az9Var;
    }
}
