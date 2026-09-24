package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ro9 extends xi9 {
    private static final ro9 zzb;
    private int zzd;
    private int zze;
    private int zzg;
    private int zzi;
    private int zzj;
    private String zzf = "";
    private String zzh = "";

    static {
        ro9 ro9Var = new ro9();
        zzb = ro9Var;
        xi9.f(ro9.class, ro9Var);
    }

    public static /* synthetic */ void p(ro9 ro9Var, int i) {
        ro9Var.zzd |= 1;
        ro9Var.zze = i;
    }

    public static oo9 q() {
        return (oo9) zzb.k();
    }

    public static /* synthetic */ void r(ro9 ro9Var, String str) {
        ro9Var.zzd |= 8;
        ro9Var.zzh = str;
    }

    public static /* synthetic */ void s(ro9 ro9Var, String str) {
        str.getClass();
        ro9Var.zzd |= 2;
        ro9Var.zzf = str;
    }

    public static /* synthetic */ void t(ro9 ro9Var) {
        ro9Var.zzd |= 32;
        ro9Var.zzj = 0;
    }

    public static /* synthetic */ void u(ro9 ro9Var, int i) {
        ro9Var.zzd |= 16;
        ro9Var.zzi = i;
    }

    public static void v(ro9 ro9Var, int i) {
        ro9Var.zzg = u48.g(i);
        ro9Var.zzd |= 4;
    }

    @Override // defpackage.xi9
    public final Object j(int i) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new hm9(zzb, "\u0004\u0006\u0000\u0001\u0001\b\u0006\u0000\u0000\u0000\u0001င\u0000\u0002ဈ\u0001\u0004᠌\u0002\u0005ဈ\u0003\u0007င\u0004\bင\u0005", new Object[]{"zzd", "zze", "zzf", "zzg", qo9.a, "zzh", "zzi", "zzj"});
        }
        if (i2 == 3) {
            return new ro9();
        }
        if (i2 == 4) {
            return new oo9(zzb);
        }
        if (i2 == 5) {
            return zzb;
        }
        throw null;
    }
}
