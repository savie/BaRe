package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class zz9 extends k79 {
    private static final zz9 zzc;
    private static volatile a89 zzd;
    private int zze;
    private o79 zzf = b89.e;

    static {
        zz9 zz9Var = new zz9();
        zzc = zz9Var;
        k79.j(zz9.class, zz9Var);
    }

    public static void u(zz9 zz9Var, xz9 xz9Var) {
        o79 o79Var = zz9Var.zzf;
        if (!((b89) o79Var).a) {
            b89 b89Var = (b89) o79Var;
            zz9Var.zzf = b89Var.d(b89Var.c << 1);
        }
        ((b89) zz9Var.zzf).add(xz9Var);
    }

    public static yz9 v() {
        return (yz9) zzc.o();
    }

    @Override // defpackage.k79
    public final Object d(int i) {
        a89 i79Var;
        switch (vz9.a[i - 1]) {
            case 1:
                return new zz9();
            case 2:
                return new yz9(zzc);
            case 3:
                return new d89(zzc, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u000b\u0002\u001b", new Object[]{"zze", "zzf", xz9.class});
            case 4:
                return zzc;
            case 5:
                a89 a89Var = zzd;
                if (a89Var != null) {
                    return a89Var;
                }
                synchronized (zz9.class) {
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
