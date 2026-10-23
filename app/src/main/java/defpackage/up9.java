package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class up9 extends xi9 {
    private static final up9 zzb;
    private int zzd;
    private int zze;
    private String zzf = "";

    static {
        up9 up9Var = new up9();
        zzb = up9Var;
        xi9.f(up9.class, up9Var);
    }

    @Override // defpackage.xi9
    public final Object j(int i) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new hm9(zzb, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001᠌\u0000\u0002ဈ\u0001", new Object[]{"zzd", "zze", sp9.a, "zzf"});
        }
        if (i2 == 3) {
            return new up9();
        }
        if (i2 == 4) {
            return new rp9(zzb);
        }
        if (i2 == 5) {
            return zzb;
        }
        throw null;
    }
}
