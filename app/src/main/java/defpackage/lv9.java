package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class lv9 extends k79 {
    private static final lv9 zzc;
    private static volatile a89 zzd;
    private int zze;
    private int zzf;
    private rv9 zzg;
    private iy9 zzh;

    static {
        lv9 lv9Var = new lv9();
        zzc = lv9Var;
        k79.j(lv9.class, lv9Var);
    }

    public static a89 A() {
        return (a89) zzc.d(7);
    }

    public static lv9 u(t69 t69Var, f79 f79Var) {
        return (lv9) k79.h(zzc, t69Var, f79Var);
    }

    public static /* synthetic */ void v(lv9 lv9Var, rv9 rv9Var) {
        lv9Var.zzg = rv9Var;
        lv9Var.zze |= 1;
    }

    public static /* synthetic */ void w(lv9 lv9Var, iy9 iy9Var) {
        lv9Var.zzh = iy9Var;
        lv9Var.zze |= 2;
    }

    public static kv9 x() {
        return (kv9) zzc.o();
    }

    @Override // defpackage.k79
    public final Object d(int i) {
        a89 i79Var;
        switch (jv9.a[i - 1]) {
            case 1:
                return new lv9();
            case 2:
                return new kv9(zzc);
            case 3:
                return new d89(zzc, "\u0000\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002ဉ\u0000\u0003ဉ\u0001", new Object[]{"zze", "zzf", "zzg", "zzh"});
            case 4:
                return zzc;
            case 5:
                a89 a89Var = zzd;
                if (a89Var != null) {
                    return a89Var;
                }
                synchronized (lv9.class) {
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

    public final rv9 y() {
        rv9 rv9Var = this.zzg;
        return rv9Var == null ? rv9.x() : rv9Var;
    }

    public final iy9 z() {
        iy9 iy9Var = this.zzh;
        return iy9Var == null ? iy9.y() : iy9Var;
    }
}
