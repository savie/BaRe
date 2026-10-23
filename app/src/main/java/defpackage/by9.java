package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class by9 extends k79 {
    private static final by9 zzc;
    private static volatile a89 zzd;
    private int zze;
    private int zzf;
    private t69 zzg = t69.b;

    static {
        by9 by9Var = new by9();
        zzc = by9Var;
        k79.j(by9.class, by9Var);
    }

    public static ay9 t() {
        return (ay9) zzc.o();
    }

    public static /* synthetic */ void u(by9 by9Var, t69 t69Var) {
        t69Var.getClass();
        by9Var.zzg = t69Var;
    }

    public static by9 x() {
        return zzc;
    }

    public final t69 A() {
        return this.zzg;
    }

    @Override // defpackage.k79
    public final Object d(int i) {
        a89 i79Var;
        switch (cy9.a[i - 1]) {
            case 1:
                return new by9();
            case 2:
                return new ay9(zzc);
            case 3:
                return new d89(zzc, "\u0000\u0003\u0000\u0000\u0001\u000b\u0003\u0000\u0000\u0000\u0001\f\u0002\f\u000b\n", new Object[]{"zze", "zzf", "zzg"});
            case 4:
                return zzc;
            case 5:
                a89 a89Var = zzd;
                if (a89Var != null) {
                    return a89Var;
                }
                synchronized (by9.class) {
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

    public final dy9 y() {
        dy9 dy9Var;
        int i = this.zze;
        if (i == 0) {
            dy9Var = dy9.UNKNOWN_CURVE;
        } else if (i == 2) {
            dy9Var = dy9.NIST_P256;
        } else if (i == 3) {
            dy9Var = dy9.NIST_P384;
        } else if (i != 4) {
            dy9Var = i != 5 ? null : dy9.CURVE25519;
        } else {
            dy9Var = dy9.NIST_P521;
        }
        return dy9Var == null ? dy9.UNRECOGNIZED : dy9Var;
    }

    public final jy9 z() {
        jy9 jy9VarA = jy9.a(this.zzf);
        return jy9VarA == null ? jy9.UNRECOGNIZED : jy9VarA;
    }
}
