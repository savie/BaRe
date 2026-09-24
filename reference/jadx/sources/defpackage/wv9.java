package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class wv9 extends k79 {
    private static final wv9 zzc;
    private static volatile a89 zzd;
    private int zze;
    private zv9 zzf;
    private int zzg;

    static {
        wv9 wv9Var = new wv9();
        zzc = wv9Var;
        k79.j(wv9.class, wv9Var);
    }

    public static /* synthetic */ void v(wv9 wv9Var, zv9 zv9Var) {
        wv9Var.zzf = zv9Var;
        wv9Var.zze |= 1;
    }

    public static vv9 w() {
        return (vv9) zzc.o();
    }

    public static wv9 x() {
        return zzc;
    }

    @Override // defpackage.k79
    public final Object d(int i) {
        a89 i79Var;
        switch (sv9.a[i - 1]) {
            case 1:
                return new wv9();
            case 2:
                return new vv9(zzc);
            case 3:
                return new d89(zzc, "\u0000\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဉ\u0000\u0002\u000b", new Object[]{"zze", "zzf", "zzg"});
            case 4:
                return zzc;
            case 5:
                a89 a89Var = zzd;
                if (a89Var != null) {
                    return a89Var;
                }
                synchronized (wv9.class) {
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
        return this.zzg;
    }

    public final zv9 y() {
        zv9 zv9Var = this.zzf;
        return zv9Var == null ? zv9.w() : zv9Var;
    }
}
