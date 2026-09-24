package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class cw9 extends k79 {
    private static final cw9 zzc;
    private static volatile a89 zzd;
    private int zze;
    private int zzf;
    private iw9 zzg;
    private t69 zzh = t69.b;

    static {
        cw9 cw9Var = new cw9();
        zzc = cw9Var;
        k79.j(cw9.class, cw9Var);
    }

    public static a89 A() {
        return (a89) zzc.d(7);
    }

    public static cw9 u(t69 t69Var, f79 f79Var) {
        return (cw9) k79.h(zzc, t69Var, f79Var);
    }

    public static /* synthetic */ void v(cw9 cw9Var, x69 x69Var) {
        x69Var.getClass();
        cw9Var.zzh = x69Var;
    }

    public static /* synthetic */ void w(cw9 cw9Var, iw9 iw9Var) {
        cw9Var.zzg = iw9Var;
        cw9Var.zze |= 1;
    }

    public static bw9 x() {
        return (bw9) zzc.o();
    }

    @Override // defpackage.k79
    public final Object d(int i) {
        a89 i79Var;
        switch (aw9.a[i - 1]) {
            case 1:
                return new cw9();
            case 2:
                return new bw9(zzc);
            case 3:
                return new d89(zzc, "\u0000\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002ဉ\u0000\u0003\n", new Object[]{"zze", "zzf", "zzg", "zzh"});
            case 4:
                return zzc;
            case 5:
                a89 a89Var = zzd;
                if (a89Var != null) {
                    return a89Var;
                }
                synchronized (cw9.class) {
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

    public final iw9 y() {
        iw9 iw9Var = this.zzg;
        return iw9Var == null ? iw9.w() : iw9Var;
    }

    public final t69 z() {
        return this.zzh;
    }
}
