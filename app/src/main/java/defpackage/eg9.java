package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class eg9 extends xi9 {
    private static final eg9 zzb;
    private int zzd;
    private String zze = "";

    static {
        eg9 eg9Var = new eg9();
        zzb = eg9Var;
        xi9.f(eg9.class, eg9Var);
    }

    @Override // defpackage.xi9
    public final Object j(int i) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new hm9(zzb, "\u0004\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001ဈ\u0000", new Object[]{"zzd", "zze"});
        }
        if (i2 == 3) {
            return new eg9();
        }
        if (i2 == 4) {
            return new cg9(zzb);
        }
        if (i2 == 5) {
            return zzb;
        }
        throw null;
    }
}
