package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class fw9 extends k79 {
    private static final fw9 zzc;
    private static volatile a89 zzd;
    private int zze;
    private iw9 zzf;
    private int zzg;

    static {
        fw9 fw9Var = new fw9();
        zzc = fw9Var;
        k79.j(fw9.class, fw9Var);
    }

    public static fw9 u(t69 t69Var, f79 f79Var) {
        return (fw9) k79.h(zzc, t69Var, f79Var);
    }

    public static /* synthetic */ void w(fw9 fw9Var, iw9 iw9Var) {
        fw9Var.zzf = iw9Var;
        fw9Var.zze |= 1;
    }

    public static ew9 x() {
        return (ew9) zzc.o();
    }

    @Override // defpackage.k79
    public final Object d(int i) {
        a89 i79Var;
        switch (dw9.a[i - 1]) {
            case 1:
                return new fw9();
            case 2:
                return new ew9(zzc);
            case 3:
                return new d89(zzc, "\u0000\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဉ\u0000\u0002\u000b", new Object[]{"zze", "zzf", "zzg"});
            case 4:
                return zzc;
            case 5:
                a89 a89Var = zzd;
                if (a89Var != null) {
                    return a89Var;
                }
                synchronized (fw9.class) {
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
        return this.zzg;
    }

    public final iw9 y() {
        iw9 iw9Var = this.zzf;
        return iw9Var == null ? iw9.w() : iw9Var;
    }
}
