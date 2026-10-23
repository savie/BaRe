package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class u0a extends k79 {
    private static final u0a zzc;
    private static volatile a89 zzd;
    private int zze;
    private int zzf;
    private a1a zzg;
    private t69 zzh = t69.b;

    static {
        u0a u0aVar = new u0a();
        zzc = u0aVar;
        k79.j(u0a.class, u0aVar);
    }

    public static u0a u(t69 t69Var, f79 f79Var) {
        return (u0a) k79.h(zzc, t69Var, f79Var);
    }

    public static /* synthetic */ void v(u0a u0aVar, x69 x69Var) {
        x69Var.getClass();
        u0aVar.zzh = x69Var;
    }

    public static /* synthetic */ void w(u0a u0aVar, a1a a1aVar) {
        u0aVar.zzg = a1aVar;
        u0aVar.zze |= 1;
    }

    public static t0a x() {
        return (t0a) zzc.o();
    }

    @Override // defpackage.k79
    public final Object d(int i) {
        a89 i79Var;
        switch (v0a.a[i - 1]) {
            case 1:
                return new u0a();
            case 2:
                return new t0a(zzc);
            case 3:
                return new d89(zzc, "\u0000\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002ဉ\u0000\u0003\n", new Object[]{"zze", "zzf", "zzg", "zzh"});
            case 4:
                return zzc;
            case 5:
                a89 a89Var = zzd;
                if (a89Var != null) {
                    return a89Var;
                }
                synchronized (u0a.class) {
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

    public final a1a y() {
        a1a a1aVar = this.zzg;
        return a1aVar == null ? a1a.w() : a1aVar;
    }

    public final t69 z() {
        return this.zzh;
    }
}
