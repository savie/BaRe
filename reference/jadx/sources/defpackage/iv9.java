package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class iv9 extends k79 {
    private static final iv9 zzc;
    private static volatile a89 zzd;
    private int zze;

    static {
        iv9 iv9Var = new iv9();
        zzc = iv9Var;
        k79.j(iv9.class, iv9Var);
    }

    public static hv9 v() {
        return (hv9) zzc.o();
    }

    public static iv9 w() {
        return zzc;
    }

    @Override // defpackage.k79
    public final Object d(int i) {
        a89 i79Var;
        switch (gv9.a[i - 1]) {
            case 1:
                return new iv9();
            case 2:
                return new hv9(zzc);
            case 3:
                return new d89(zzc, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u000b", new Object[]{"zze"});
            case 4:
                return zzc;
            case 5:
                a89 a89Var = zzd;
                if (a89Var != null) {
                    return a89Var;
                }
                synchronized (iv9.class) {
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
