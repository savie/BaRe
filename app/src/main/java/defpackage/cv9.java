package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class cv9 extends k79 {
    private static final cv9 zzc;
    private static volatile a89 zzd;
    private int zze;
    private int zzf;
    private t69 zzg = t69.b;
    private iv9 zzh;

    static {
        cv9 cv9Var = new cv9();
        zzc = cv9Var;
        k79.j(cv9.class, cv9Var);
    }

    public static a89 A() {
        return (a89) zzc.d(7);
    }

    public static cv9 u(t69 t69Var, f79 f79Var) {
        return (cv9) k79.h(zzc, t69Var, f79Var);
    }

    public static /* synthetic */ void v(cv9 cv9Var, x69 x69Var) {
        x69Var.getClass();
        cv9Var.zzg = x69Var;
    }

    public static /* synthetic */ void w(cv9 cv9Var, iv9 iv9Var) {
        cv9Var.zzh = iv9Var;
        cv9Var.zze |= 1;
    }

    public static bv9 x() {
        return (bv9) zzc.o();
    }

    @Override // defpackage.k79
    public final Object d(int i) {
        a89 i79Var;
        switch (av9.a[i - 1]) {
            case 1:
                return new cv9();
            case 2:
                return new bv9(zzc);
            case 3:
                return new d89(zzc, "\u0000\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002\n\u0003ဉ\u0000", new Object[]{"zze", "zzf", "zzg", "zzh"});
            case 4:
                return zzc;
            case 5:
                a89 a89Var = zzd;
                if (a89Var != null) {
                    return a89Var;
                }
                synchronized (cv9.class) {
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
        iv9 iv9Var = this.zzh;
        return iv9Var == null ? iv9.w() : iv9Var;
    }

    public final t69 z() {
        return this.zzg;
    }
}
