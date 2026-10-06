package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class x0a extends k79 {
    private static final x0a zzc;
    private static volatile a89 zzd;
    private int zze;
    private int zzf;
    private a1a zzg;

    static {
        x0a x0aVar = new x0a();
        zzc = x0aVar;
        k79.j(x0a.class, x0aVar);
    }

    public static x0a u(t69 t69Var, f79 f79Var) {
        return (x0a) k79.h(zzc, t69Var, f79Var);
    }

    public static /* synthetic */ void v(x0a x0aVar, a1a a1aVar) {
        x0aVar.zzg = a1aVar;
        x0aVar.zze |= 1;
    }

    public static w0a w() {
        return (w0a) zzc.o();
    }

    @Override // defpackage.k79
    public final Object d(int i) {
        a89 i79Var;
        switch (y0a.a[i - 1]) {
            case 1:
                return new x0a();
            case 2:
                return new w0a(zzc);
            case 3:
                return new d89(zzc, "\u0000\u0002\u0000\u0001\u0001\u0003\u0002\u0000\u0000\u0000\u0001\u000b\u0003ဉ\u0000", new Object[]{"zze", "zzf", "zzg"});
            case 4:
                return zzc;
            case 5:
                a89 a89Var = zzd;
                if (a89Var != null) {
                    return a89Var;
                }
                synchronized (x0a.class) {
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

    public final a1a x() {
        a1a a1aVar = this.zzg;
        return a1aVar == null ? a1a.w() : a1aVar;
    }
}
