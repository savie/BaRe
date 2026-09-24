package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ex9 extends k79 {
    private static final ex9 zzc;
    private static volatile a89 zzd;
    private int zze;
    private t69 zzf = t69.b;

    static {
        ex9 ex9Var = new ex9();
        zzc = ex9Var;
        k79.j(ex9.class, ex9Var);
    }

    public static ex9 u(t69 t69Var, f79 f79Var) {
        return (ex9) k79.h(zzc, t69Var, f79Var);
    }

    public static /* synthetic */ void v(ex9 ex9Var, x69 x69Var) {
        x69Var.getClass();
        ex9Var.zzf = x69Var;
    }

    public static dx9 w() {
        return (dx9) zzc.o();
    }

    public static a89 y() {
        return (a89) zzc.d(7);
    }

    @Override // defpackage.k79
    public final Object d(int i) {
        a89 i79Var;
        switch (cx9.a[i - 1]) {
            case 1:
                return new ex9();
            case 2:
                return new dx9(zzc);
            case 3:
                return new d89(zzc, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000b\u0002\n", new Object[]{"zze", "zzf"});
            case 4:
                return zzc;
            case 5:
                a89 a89Var = zzd;
                if (a89Var != null) {
                    return a89Var;
                }
                synchronized (ex9.class) {
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
        return this.zze;
    }

    public final t69 x() {
        return this.zzf;
    }
}
