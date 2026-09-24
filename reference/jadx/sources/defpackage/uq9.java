package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class uq9 extends xi9 {
    private static final uq9 zzb;
    private int zzd;
    private int zze;
    private boolean zzf;
    private long zzg;
    private boolean zzh;
    private int zzi;
    private int zzj;

    static {
        uq9 uq9Var = new uq9();
        zzb = uq9Var;
        xi9.f(uq9.class, uq9Var);
    }

    public static tq9 p() {
        return (tq9) zzb.k();
    }

    public static /* synthetic */ void q(uq9 uq9Var, boolean z) {
        uq9Var.zzd |= 8;
        uq9Var.zzh = z;
    }

    public static /* synthetic */ void r(uq9 uq9Var) {
        uq9Var.zzd |= 16;
        uq9Var.zzi = 0;
    }

    public static /* synthetic */ void s(uq9 uq9Var, long j) {
        uq9Var.zzd |= 4;
        uq9Var.zzg = j;
    }

    public static /* synthetic */ void t(uq9 uq9Var) {
        uq9Var.zzd |= 32;
        uq9Var.zzj = 0;
    }

    public static /* synthetic */ void u(uq9 uq9Var) {
        uq9Var.zzd |= 2;
        uq9Var.zzf = true;
    }

    @Override // defpackage.xi9
    public final Object j(int i) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new hm9(zzb, "\u0004\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001င\u0000\u0002ဇ\u0001\u0003ဂ\u0002\u0004ဇ\u0003\u0005င\u0004\u0006င\u0005", new Object[]{"zzd", "zze", "zzf", "zzg", "zzh", "zzi", "zzj"});
        }
        if (i2 == 3) {
            return new uq9();
        }
        if (i2 == 4) {
            return new tq9(zzb);
        }
        if (i2 == 5) {
            return zzb;
        }
        throw null;
    }
}
