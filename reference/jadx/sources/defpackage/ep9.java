package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ep9 extends xi9 {
    private static final ep9 zzb;
    private int zzd;
    private int zzf;
    private ro9 zzi;
    private boolean zzj;
    private boolean zzk;
    private String zze = "";
    private dj9 zzg = yi9.e;
    private ej9 zzh = em9.e;

    static {
        ep9 ep9Var = new ep9();
        zzb = ep9Var;
        xi9.f(ep9.class, ep9Var);
    }

    @Override // defpackage.xi9
    public final Object j(int i) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new hm9(zzb, "\u0004\u0007\u0000\u0001\u0001\u0007\u0007\u0000\u0002\u0000\u0001ဈ\u0000\u0002᠌\u0001\u0003ࠬ\u0004\u001b\u0005ဉ\u0002\u0006ဇ\u0003\u0007ဇ\u0004", new Object[]{"zzd", "zze", "zzf", ap9.a, "zzg", vo9.b, "zzh", kq9.class, "zzi", "zzj", "zzk"});
        }
        if (i2 == 3) {
            return new ep9();
        }
        if (i2 == 4) {
            return new yo9(zzb);
        }
        if (i2 == 5) {
            return zzb;
        }
        throw null;
    }
}
