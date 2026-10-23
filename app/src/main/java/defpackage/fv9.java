package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class fv9 extends k79 {
    private static final fv9 zzc;
    private static volatile a89 zzd;
    private int zze;
    private int zzf;
    private iv9 zzg;

    static {
        fv9 fv9Var = new fv9();
        zzc = fv9Var;
        k79.j(fv9.class, fv9Var);
    }

    public static fv9 u(t69 t69Var, f79 f79Var) {
        return (fv9) k79.h(zzc, t69Var, f79Var);
    }

    public static /* synthetic */ void w(fv9 fv9Var, iv9 iv9Var) {
        fv9Var.zzg = iv9Var;
        fv9Var.zze |= 1;
    }

    public static ev9 x() {
        return (ev9) zzc.o();
    }

    @Override // defpackage.k79
    public final Object d(int i) {
        a89 i79Var;
        switch (dv9.a[i - 1]) {
            case 1:
                return new fv9();
            case 2:
                return new ev9(zzc);
            case 3:
                return new d89(zzc, "\u0000\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000b\u0002ဉ\u0000", new Object[]{"zze", "zzf", "zzg"});
            case 4:
                return zzc;
            case 5:
                a89 a89Var = zzd;
                if (a89Var != null) {
                    return a89Var;
                }
                synchronized (fv9.class) {
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

    public final iv9 y() {
        iv9 iv9Var = this.zzg;
        return iv9Var == null ? iv9.w() : iv9Var;
    }
}
