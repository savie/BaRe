package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class nx9 extends k79 {
    private static final nx9 zzc;
    private static volatile a89 zzd;
    private int zze;
    private qx9 zzf;

    static {
        nx9 nx9Var = new nx9();
        zzc = nx9Var;
        k79.j(nx9.class, nx9Var);
    }

    public static mx9 t() {
        return (mx9) zzc.o();
    }

    public static nx9 u(t69 t69Var, f79 f79Var) {
        return (nx9) k79.h(zzc, t69Var, f79Var);
    }

    public static /* synthetic */ void v(nx9 nx9Var, qx9 qx9Var) {
        nx9Var.zzf = qx9Var;
        nx9Var.zze |= 1;
    }

    @Override // defpackage.k79
    public final Object d(int i) {
        a89 i79Var;
        switch (ox9.a[i - 1]) {
            case 1:
                return new nx9();
            case 2:
                return new mx9(zzc);
            case 3:
                return new d89(zzc, "\u0000\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001ဉ\u0000", new Object[]{"zze", "zzf"});
            case 4:
                return zzc;
            case 5:
                a89 a89Var = zzd;
                if (a89Var != null) {
                    return a89Var;
                }
                synchronized (nx9.class) {
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

    public final qx9 w() {
        qx9 qx9Var = this.zzf;
        return qx9Var == null ? qx9.z() : qx9Var;
    }
}
