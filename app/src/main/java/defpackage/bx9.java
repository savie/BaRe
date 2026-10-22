package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class bx9 extends k79 {
    private static final bx9 zzc;
    private static volatile a89 zzd;
    private int zze;
    private int zzf;

    static {
        bx9 bx9Var = new bx9();
        zzc = bx9Var;
        k79.j(bx9.class, bx9Var);
    }

    public static bx9 u(t69 t69Var, f79 f79Var) {
        return (bx9) k79.h(zzc, t69Var, f79Var);
    }

    public static ax9 x() {
        return (ax9) zzc.o();
    }

    @Override // defpackage.k79
    public final Object d(int i) {
        a89 i79Var;
        switch (zw9.a[i - 1]) {
            case 1:
                return new bx9();
            case 2:
                return new ax9(zzc);
            case 3:
                return new d89(zzc, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000b\u0002\u000b", new Object[]{"zze", "zzf"});
            case 4:
                return zzc;
            case 5:
                a89 a89Var = zzd;
                if (a89Var != null) {
                    return a89Var;
                }
                synchronized (bx9.class) {
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

    public final int w() {
        return this.zzf;
    }
}
