package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class dq9 extends xi9 {
    private static final dq9 zzb;
    private int zzd;
    private int zze = 0;
    private Object zzf;
    private hp9 zzg;
    private jp9 zzh;

    static {
        dq9 dq9Var = new dq9();
        zzb = dq9Var;
        xi9.f(dq9.class, dq9Var);
    }

    public static /* synthetic */ void p(dq9 dq9Var, sq9 sq9Var) {
        dq9Var.zzf = sq9Var;
        dq9Var.zze = 4;
    }

    public static bq9 q() {
        return (bq9) zzb.k();
    }

    public static /* synthetic */ void r(dq9 dq9Var, do9 do9Var) {
        dq9Var.zzf = do9Var;
        dq9Var.zze = 2;
    }

    public static /* synthetic */ void s(dq9 dq9Var, no9 no9Var) {
        dq9Var.zzf = no9Var;
        dq9Var.zze = 3;
    }

    public static /* synthetic */ void t(dq9 dq9Var, uo9 uo9Var) {
        uo9Var.getClass();
        dq9Var.zzf = uo9Var;
        dq9Var.zze = 7;
    }

    public static /* synthetic */ void u(dq9 dq9Var, hp9 hp9Var) {
        hp9Var.getClass();
        dq9Var.zzg = hp9Var;
        dq9Var.zzd |= 1;
    }

    public static /* synthetic */ void v(dq9 dq9Var, pq9 pq9Var) {
        dq9Var.zzf = pq9Var;
        dq9Var.zze = 8;
    }

    @Override // defpackage.xi9
    public final Object j(int i) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new hm9(zzb, "\u0004\b\u0001\u0001\u0001\b\b\u0000\u0000\u0000\u0001ဉ\u0000\u0002<\u0000\u0003<\u0000\u0004<\u0000\u0005<\u0000\u0006ဉ\u0001\u0007<\u0000\b<\u0000", new Object[]{"zzf", "zze", "zzd", "zzg", do9.class, no9.class, sq9.class, ep9.class, "zzh", uo9.class, pq9.class});
        }
        if (i2 == 3) {
            return new dq9();
        }
        if (i2 == 4) {
            return new bq9(zzb);
        }
        if (i2 == 5) {
            return zzb;
        }
        throw null;
    }
}
