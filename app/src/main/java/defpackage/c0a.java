package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class c0a extends k79 {
    private static final c0a zzc;
    private static volatile a89 zzd;
    private int zze;
    private int zzf;
    private i0a zzg;

    static {
        c0a c0aVar = new c0a();
        zzc = c0aVar;
        k79.j(c0a.class, c0aVar);
    }

    public static c0a u(t69 t69Var, f79 f79Var) {
        return (c0a) k79.h(zzc, t69Var, f79Var);
    }

    public static /* synthetic */ void v(c0a c0aVar, i0a i0aVar) {
        c0aVar.zzg = i0aVar;
        c0aVar.zze |= 1;
    }

    public static b0a w() {
        return (b0a) zzc.o();
    }

    public static a89 y() {
        return (a89) zzc.d(7);
    }

    @Override // defpackage.k79
    public final Object d(int i) {
        a89 i79Var;
        switch (a0a.a[i - 1]) {
            case 1:
                return new c0a();
            case 2:
                return new b0a(zzc);
            case 3:
                return new d89(zzc, "\u0000\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000b\u0002ဉ\u0000", new Object[]{"zze", "zzf", "zzg"});
            case 4:
                return zzc;
            case 5:
                a89 a89Var = zzd;
                if (a89Var != null) {
                    return a89Var;
                }
                synchronized (c0a.class) {
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

    public final i0a x() {
        i0a i0aVar = this.zzg;
        return i0aVar == null ? i0a.w() : i0aVar;
    }
}
