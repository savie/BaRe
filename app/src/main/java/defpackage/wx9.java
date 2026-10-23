package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class wx9 extends k79 {
    private static final wx9 zzc;
    private static volatile a89 zzd;
    private int zze;
    private int zzf;
    private qx9 zzg;
    private t69 zzh;
    private t69 zzi;

    static {
        wx9 wx9Var = new wx9();
        zzc = wx9Var;
        k79.j(wx9.class, wx9Var);
    }

    public wx9() {
        x69 x69Var = t69.b;
        this.zzh = x69Var;
        this.zzi = x69Var;
    }

    public static vx9 A() {
        return (vx9) zzc.o();
    }

    public static wx9 B() {
        return zzc;
    }

    public static a89 E() {
        return (a89) zzc.d(7);
    }

    public static wx9 u(t69 t69Var, f79 f79Var) {
        return (wx9) k79.h(zzc, t69Var, f79Var);
    }

    public static /* synthetic */ void w(wx9 wx9Var, t69 t69Var) {
        t69Var.getClass();
        wx9Var.zzh = t69Var;
    }

    public static /* synthetic */ void x(wx9 wx9Var, qx9 qx9Var) {
        wx9Var.zzg = qx9Var;
        wx9Var.zze |= 1;
    }

    public static /* synthetic */ void z(wx9 wx9Var, t69 t69Var) {
        t69Var.getClass();
        wx9Var.zzi = t69Var;
    }

    public final t69 C() {
        return this.zzh;
    }

    public final t69 D() {
        return this.zzi;
    }

    @Override // defpackage.k79
    public final Object d(int i) {
        a89 i79Var;
        switch (zx9.a[i - 1]) {
            case 1:
                return new wx9();
            case 2:
                return new vx9(zzc);
            case 3:
                return new d89(zzc, "\u0000\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u000b\u0002ဉ\u0000\u0003\n\u0004\n", new Object[]{"zze", "zzf", "zzg", "zzh", "zzi"});
            case 4:
                return zzc;
            case 5:
                a89 a89Var = zzd;
                if (a89Var != null) {
                    return a89Var;
                }
                synchronized (wx9.class) {
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

    public final qx9 y() {
        qx9 qx9Var = this.zzg;
        return qx9Var == null ? qx9.z() : qx9Var;
    }
}
