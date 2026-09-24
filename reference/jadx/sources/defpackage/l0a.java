package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class l0a extends k79 {
    private static final l0a zzc;
    private static volatile a89 zzd;
    private int zze;
    private int zzf;
    private o0a zzg;

    static {
        l0a l0aVar = new l0a();
        zzc = l0aVar;
        k79.j(l0a.class, l0aVar);
    }

    public static l0a u(t69 t69Var, f79 f79Var) {
        return (l0a) k79.h(zzc, t69Var, f79Var);
    }

    public static /* synthetic */ void v(l0a l0aVar, o0a o0aVar) {
        l0aVar.zzg = o0aVar;
        l0aVar.zze |= 1;
    }

    public static k0a w() {
        return (k0a) zzc.o();
    }

    public static a89 y() {
        return (a89) zzc.d(7);
    }

    @Override // defpackage.k79
    public final Object d(int i) {
        a89 i79Var;
        switch (j0a.a[i - 1]) {
            case 1:
                return new l0a();
            case 2:
                return new k0a(zzc);
            case 3:
                return new d89(zzc, "\u0000\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000b\u0002ဉ\u0000", new Object[]{"zze", "zzf", "zzg"});
            case 4:
                return zzc;
            case 5:
                a89 a89Var = zzd;
                if (a89Var != null) {
                    return a89Var;
                }
                synchronized (l0a.class) {
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

    public final o0a x() {
        o0a o0aVar = this.zzg;
        return o0aVar == null ? o0a.y() : o0aVar;
    }
}
