package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class hx9 extends k79 {
    private static final hx9 zzc;
    private static volatile a89 zzd;

    static {
        hx9 hx9Var = new hx9();
        zzc = hx9Var;
        k79.j(hx9.class, hx9Var);
    }

    public static void t(t69 t69Var, f79 f79Var) {
    }

    public static hx9 u() {
        return zzc;
    }

    @Override // defpackage.k79
    public final Object d(int i) {
        a89 i79Var;
        switch (fx9.a[i - 1]) {
            case 1:
                return new hx9();
            case 2:
                return new gx9(zzc);
            case 3:
                return new d89(zzc, "\u0000\u0000", null);
            case 4:
                return zzc;
            case 5:
                a89 a89Var = zzd;
                if (a89Var != null) {
                    return a89Var;
                }
                synchronized (hx9.class) {
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
}
