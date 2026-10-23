package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class o0a extends k79 {
    private static final o0a zzc;
    private static volatile a89 zzd;
    private int zze;
    private String zzf = "";
    private mz9 zzg;

    static {
        o0a o0aVar = new o0a();
        zzc = o0aVar;
        k79.j(o0a.class, o0aVar);
    }

    public static o0a u(t69 t69Var, f79 f79Var) {
        return (o0a) k79.h(zzc, t69Var, f79Var);
    }

    public static /* synthetic */ void v(o0a o0aVar, String str) {
        str.getClass();
        o0aVar.zzf = str;
    }

    public static /* synthetic */ void w(o0a o0aVar, mz9 mz9Var) {
        mz9Var.getClass();
        o0aVar.zzg = mz9Var;
        o0aVar.zze |= 1;
    }

    public static n0a x() {
        return (n0a) zzc.o();
    }

    public static o0a y() {
        return zzc;
    }

    @Override // defpackage.k79
    public final Object d(int i) {
        a89 i79Var;
        switch (m0a.a[i - 1]) {
            case 1:
                return new o0a();
            case 2:
                return new n0a(zzc);
            case 3:
                return new d89(zzc, "\u0000\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001Ȉ\u0002ဉ\u0000", new Object[]{"zze", "zzf", "zzg"});
            case 4:
                return zzc;
            case 5:
                a89 a89Var = zzd;
                if (a89Var != null) {
                    return a89Var;
                }
                synchronized (o0a.class) {
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

    public final mz9 t() {
        mz9 mz9Var = this.zzg;
        return mz9Var == null ? mz9.y() : mz9Var;
    }

    public final String z() {
        return this.zzf;
    }
}
