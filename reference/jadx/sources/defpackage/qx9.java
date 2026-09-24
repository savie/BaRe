package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class qx9 extends k79 {
    private static final qx9 zzc;
    private static volatile a89 zzd;
    private int zze;
    private by9 zzf;
    private jx9 zzg;
    private int zzh;

    static {
        qx9 qx9Var = new qx9();
        zzc = qx9Var;
        k79.j(qx9.class, qx9Var);
    }

    public static /* synthetic */ void u(qx9 qx9Var, jx9 jx9Var) {
        qx9Var.zzg = jx9Var;
        qx9Var.zze |= 2;
    }

    public static /* synthetic */ void w(qx9 qx9Var, by9 by9Var) {
        qx9Var.zzf = by9Var;
        qx9Var.zze |= 1;
    }

    public static px9 y() {
        return (px9) zzc.o();
    }

    public static qx9 z() {
        return zzc;
    }

    public final by9 A() {
        by9 by9Var = this.zzf;
        return by9Var == null ? by9.x() : by9Var;
    }

    @Override // defpackage.k79
    public final Object d(int i) {
        a89 i79Var;
        switch (rx9.a[i - 1]) {
            case 1:
                return new qx9();
            case 2:
                return new px9(zzc);
            case 3:
                return new d89(zzc, "\u0000\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဉ\u0000\u0002ဉ\u0001\u0003\f", new Object[]{"zze", "zzf", "zzg", "zzh"});
            case 4:
                return zzc;
            case 5:
                a89 a89Var = zzd;
                if (a89Var != null) {
                    return a89Var;
                }
                synchronized (qx9.class) {
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

    public final kx9 t() {
        kx9 kx9Var;
        int i = this.zzh;
        if (i == 0) {
            kx9Var = kx9.UNKNOWN_FORMAT;
        } else if (i == 1) {
            kx9Var = kx9.UNCOMPRESSED;
        } else if (i != 2) {
            kx9Var = i != 3 ? null : kx9.DO_NOT_USE_CRUNCHY_UNCOMPRESSED;
        } else {
            kx9Var = kx9.COMPRESSED;
        }
        return kx9Var == null ? kx9.UNRECOGNIZED : kx9Var;
    }

    public final jx9 x() {
        jx9 jx9Var = this.zzg;
        return jx9Var == null ? jx9.v() : jx9Var;
    }
}
