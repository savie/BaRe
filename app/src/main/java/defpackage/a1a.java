package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class a1a extends k79 {
    private static final a1a zzc;
    private static volatile a89 zzd;
    private int zze;

    static {
        a1a a1aVar = new a1a();
        zzc = a1aVar;
        k79.j(a1a.class, a1aVar);
    }

    public static z0a v() {
        return (z0a) zzc.o();
    }

    public static a1a w() {
        return zzc;
    }

    @Override // defpackage.k79
    public final Object d(int i) {
        a89 i79Var;
        switch (b1a.a[i - 1]) {
            case 1:
                return new a1a();
            case 2:
                return new z0a(zzc);
            case 3:
                return new d89(zzc, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u000b", new Object[]{"zze"});
            case 4:
                return zzc;
            case 5:
                a89 a89Var = zzd;
                if (a89Var != null) {
                    return a89Var;
                }
                synchronized (a1a.class) {
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
