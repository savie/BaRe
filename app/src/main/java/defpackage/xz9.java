package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class xz9 extends k79 {
    private static final xz9 zzc;
    private static volatile a89 zzd;
    private String zze = "";
    private int zzf;
    private int zzg;
    private int zzh;

    static {
        xz9 xz9Var = new xz9();
        zzc = xz9Var;
        k79.j(xz9.class, xz9Var);
    }

    public static /* synthetic */ void u(xz9 xz9Var, String str) {
        str.getClass();
        xz9Var.zze = str;
    }

    public static wz9 x() {
        return (wz9) zzc.o();
    }

    @Override // defpackage.k79
    public final Object d(int i) {
        a89 i79Var;
        switch (vz9.a[i - 1]) {
            case 1:
                return new xz9();
            case 2:
                return new wz9(zzc);
            case 3:
                return new d89(zzc, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001Ȉ\u0002\f\u0003\u000b\u0004\f", new Object[]{"zze", "zzf", "zzg", "zzh"});
            case 4:
                return zzc;
            case 5:
                a89 a89Var = zzd;
                if (a89Var != null) {
                    return a89Var;
                }
                synchronized (xz9.class) {
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
