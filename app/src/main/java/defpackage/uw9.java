package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class uw9 extends k79 {
    private static final uw9 zzc;
    private static volatile a89 zzd;
    private int zze;
    private int zzf;

    static {
        uw9 uw9Var = new uw9();
        zzc = uw9Var;
        k79.j(uw9.class, uw9Var);
    }

    public static uw9 u(t69 t69Var, f79 f79Var) {
        return (uw9) k79.h(zzc, t69Var, f79Var);
    }

    public static tw9 x() {
        return (tw9) zzc.o();
    }

    @Override // defpackage.k79
    public final Object d(int i) {
        a89 i79Var;
        switch (sw9.a[i - 1]) {
            case 1:
                return new uw9();
            case 2:
                return new tw9(zzc);
            case 3:
                return new d89(zzc, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000b\u0002\u000b", new Object[]{"zzf", "zze"});
            case 4:
                return zzc;
            case 5:
                a89 a89Var = zzd;
                if (a89Var != null) {
                    return a89Var;
                }
                synchronized (uw9.class) {
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
