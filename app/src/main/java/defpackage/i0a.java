package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class i0a extends k79 {
    private static final i0a zzc;
    private static volatile a89 zzd;
    private String zze = "";

    static {
        i0a i0aVar = new i0a();
        zzc = i0aVar;
        k79.j(i0a.class, i0aVar);
    }

    public static h0a t() {
        return (h0a) zzc.o();
    }

    public static i0a u(t69 t69Var, f79 f79Var) {
        return (i0a) k79.h(zzc, t69Var, f79Var);
    }

    public static /* synthetic */ void v(i0a i0aVar, String str) {
        str.getClass();
        i0aVar.zze = str;
    }

    public static i0a w() {
        return zzc;
    }

    @Override // defpackage.k79
    public final Object d(int i) {
        a89 i79Var;
        switch (g0a.a[i - 1]) {
            case 1:
                return new i0a();
            case 2:
                return new h0a(zzc);
            case 3:
                return new d89(zzc, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001Ȉ", new Object[]{"zze"});
            case 4:
                return zzc;
            case 5:
                a89 a89Var = zzd;
                if (a89Var != null) {
                    return a89Var;
                }
                synchronized (i0a.class) {
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

    public final String x() {
        return this.zze;
    }
}
