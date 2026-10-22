package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class d1a extends k79 {
    private static final d1a zzc;
    private static volatile a89 zzd;
    private int zze;
    private t69 zzf = t69.b;

    static {
        d1a d1aVar = new d1a();
        zzc = d1aVar;
        k79.j(d1a.class, d1aVar);
    }

    public static d1a u(t69 t69Var, f79 f79Var) {
        return (d1a) k79.h(zzc, t69Var, f79Var);
    }

    public static /* synthetic */ void v(d1a d1aVar, x69 x69Var) {
        x69Var.getClass();
        d1aVar.zzf = x69Var;
    }

    public static c1a w() {
        return (c1a) zzc.o();
    }

    public static a89 y() {
        return (a89) zzc.d(7);
    }

    @Override // defpackage.k79
    public final Object d(int i) {
        a89 i79Var;
        switch (e1a.a[i - 1]) {
            case 1:
                return new d1a();
            case 2:
                return new c1a(zzc);
            case 3:
                return new d89(zzc, "\u0000\u0002\u0000\u0000\u0001\u0003\u0002\u0000\u0000\u0000\u0001\u000b\u0003\n", new Object[]{"zze", "zzf"});
            case 4:
                return zzc;
            case 5:
                a89 a89Var = zzd;
                if (a89Var != null) {
                    return a89Var;
                }
                synchronized (d1a.class) {
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

    public final t69 x() {
        return this.zzf;
    }
}
