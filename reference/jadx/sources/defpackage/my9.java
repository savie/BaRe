package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class my9 extends k79 {
    private static final my9 zzc;
    private static volatile a89 zzd;
    private int zze;
    private py9 zzf;
    private int zzg;
    private int zzh;

    static {
        my9 my9Var = new my9();
        zzc = my9Var;
        k79.j(my9.class, my9Var);
    }

    public static my9 u(t69 t69Var, f79 f79Var) {
        return (my9) k79.h(zzc, t69Var, f79Var);
    }

    public static /* synthetic */ void w(my9 my9Var, py9 py9Var) {
        my9Var.zzf = py9Var;
        my9Var.zze |= 1;
    }

    public static ly9 y() {
        return (ly9) zzc.o();
    }

    public static my9 z() {
        return zzc;
    }

    public final py9 A() {
        py9 py9Var = this.zzf;
        return py9Var == null ? py9.y() : py9Var;
    }

    @Override // defpackage.k79
    public final Object d(int i) {
        a89 i79Var;
        switch (ny9.a[i - 1]) {
            case 1:
                return new my9();
            case 2:
                return new ly9(zzc);
            case 3:
                return new d89(zzc, "\u0000\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဉ\u0000\u0002\u000b\u0003\u000b", new Object[]{"zze", "zzf", "zzg", "zzh"});
            case 4:
                return zzc;
            case 5:
                a89 a89Var = zzd;
                if (a89Var != null) {
                    return a89Var;
                }
                synchronized (my9.class) {
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

    public final int x() {
        return this.zzh;
    }
}
