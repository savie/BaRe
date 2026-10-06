package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ov9 extends k79 {
    private static final ov9 zzc;
    private static volatile a89 zzd;
    private int zze;
    private wv9 zzf;
    private my9 zzg;

    static {
        ov9 ov9Var = new ov9();
        zzc = ov9Var;
        k79.j(ov9.class, ov9Var);
    }

    public static nv9 t() {
        return (nv9) zzc.o();
    }

    public static ov9 u(t69 t69Var, f79 f79Var) {
        return (ov9) k79.h(zzc, t69Var, f79Var);
    }

    public static /* synthetic */ void v(ov9 ov9Var, wv9 wv9Var) {
        ov9Var.zzf = wv9Var;
        ov9Var.zze |= 1;
    }

    public static /* synthetic */ void w(ov9 ov9Var, my9 my9Var) {
        ov9Var.zzg = my9Var;
        ov9Var.zze |= 2;
    }

    @Override // defpackage.k79
    public final Object d(int i) {
        a89 i79Var;
        switch (mv9.a[i - 1]) {
            case 1:
                return new ov9();
            case 2:
                return new nv9(zzc);
            case 3:
                return new d89(zzc, "\u0000\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဉ\u0000\u0002ဉ\u0001", new Object[]{"zze", "zzf", "zzg"});
            case 4:
                return zzc;
            case 5:
                a89 a89Var = zzd;
                if (a89Var != null) {
                    return a89Var;
                }
                synchronized (ov9.class) {
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

    public final wv9 x() {
        wv9 wv9Var = this.zzf;
        return wv9Var == null ? wv9.x() : wv9Var;
    }

    public final my9 y() {
        my9 my9Var = this.zzg;
        return my9Var == null ? my9.z() : my9Var;
    }
}
