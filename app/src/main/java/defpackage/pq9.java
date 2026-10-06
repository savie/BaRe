package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class pq9 extends xi9 {
    private static final pq9 zzb;
    private int zzd;
    private ro9 zze;
    private long zzf;

    static {
        pq9 pq9Var = new pq9();
        zzb = pq9Var;
        xi9.f(pq9.class, pq9Var);
    }

    public static mq9 p() {
        return (mq9) zzb.k();
    }

    public static /* synthetic */ void q(pq9 pq9Var, ro9 ro9Var) {
        pq9Var.zze = ro9Var;
        pq9Var.zzd |= 1;
    }

    public static /* synthetic */ void r(pq9 pq9Var, long j) {
        pq9Var.zzd |= 2;
        pq9Var.zzf = j;
    }

    @Override // defpackage.xi9
    public final Object j(int i) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new hm9(zzb, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဉ\u0000\u0002ဂ\u0001", new Object[]{"zzd", "zze", "zzf"});
        }
        if (i2 == 3) {
            return new pq9();
        }
        if (i2 == 4) {
            return new mq9(zzb);
        }
        if (i2 == 5) {
            return zzb;
        }
        throw null;
    }
}
