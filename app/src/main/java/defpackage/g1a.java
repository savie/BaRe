package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class g1a extends k79 {
    private static final g1a zzc;
    private static volatile a89 zzd;
    private int zze;

    static {
        g1a g1aVar = new g1a();
        zzc = g1aVar;
        k79.j(g1a.class, g1aVar);
    }

    public static g1a u(t69 t69Var, f79 f79Var) {
        return (g1a) k79.h(zzc, t69Var, f79Var);
    }

    public static g1a v() {
        return zzc;
    }

    @Override // defpackage.k79
    public final Object d(int i) {
        a89 i79Var;
        switch (i1a.a[i - 1]) {
            case 1:
                return new g1a();
            case 2:
                return new f1a(zzc);
            case 3:
                return new d89(zzc, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u000b", new Object[]{"zze"});
            case 4:
                return zzc;
            case 5:
                a89 a89Var = zzd;
                if (a89Var != null) {
                    return a89Var;
                }
                synchronized (g1a.class) {
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
}
