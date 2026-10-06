package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class rv9 extends k79 {
    private static final rv9 zzc;
    private static volatile a89 zzd;
    private int zze;
    private int zzf;
    private zv9 zzg;
    private t69 zzh = t69.b;

    static {
        rv9 rv9Var = new rv9();
        zzc = rv9Var;
        k79.j(rv9.class, rv9Var);
    }

    public static /* synthetic */ void u(rv9 rv9Var, x69 x69Var) {
        x69Var.getClass();
        rv9Var.zzh = x69Var;
    }

    public static /* synthetic */ void v(rv9 rv9Var, zv9 zv9Var) {
        rv9Var.zzg = zv9Var;
        rv9Var.zze |= 1;
    }

    public static qv9 w() {
        return (qv9) zzc.o();
    }

    public static rv9 x() {
        return zzc;
    }

    @Override // defpackage.k79
    public final Object d(int i) {
        a89 i79Var;
        switch (pv9.a[i - 1]) {
            case 1:
                return new rv9();
            case 2:
                return new qv9(zzc);
            case 3:
                return new d89(zzc, "\u0000\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002ဉ\u0000\u0003\n", new Object[]{"zze", "zzf", "zzg", "zzh"});
            case 4:
                return zzc;
            case 5:
                a89 a89Var = zzd;
                if (a89Var != null) {
                    return a89Var;
                }
                synchronized (rv9.class) {
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

    public final zv9 y() {
        zv9 zv9Var = this.zzg;
        return zv9Var == null ? zv9.w() : zv9Var;
    }

    public final t69 z() {
        return this.zzh;
    }
}
