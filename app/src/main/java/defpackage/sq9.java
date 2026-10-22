package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class sq9 extends xi9 {
    private static final sq9 zzb;
    private int zzd;
    private int zze;

    static {
        sq9 sq9Var = new sq9();
        zzb = sq9Var;
        xi9.f(sq9.class, sq9Var);
    }

    public static sq9 p() {
        return zzb;
    }

    @Override // defpackage.xi9
    public final Object j(int i) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new hm9(zzb, "\u0004\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001᠌\u0000", new Object[]{"zzd", "zze", vo9.c});
        }
        if (i2 == 3) {
            return new sq9();
        }
        if (i2 == 4) {
            return new qq9(zzb);
        }
        if (i2 == 5) {
            return zzb;
        }
        throw null;
    }
}
