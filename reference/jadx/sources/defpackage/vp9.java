package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class vp9 extends xi9 {
    private static final vp9 zzb;
    private int zzd;
    private ej9 zze = em9.e;
    private String zzf = "";
    private boolean zzg;

    static {
        vp9 vp9Var = new vp9();
        zzb = vp9Var;
        xi9.f(vp9.class, vp9Var);
    }

    public static vp9 p() {
        return zzb;
    }

    public static /* synthetic */ void q(vp9 vp9Var, boolean z) {
        vp9Var.zzd |= 2;
        vp9Var.zzg = z;
    }

    @Override // defpackage.xi9
    public final Object j(int i) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new hm9(zzb, "\u0004\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0001\u0000\u0001\u001b\u0002ဈ\u0000\u0003ဇ\u0001", new Object[]{"zzd", "zze", up9.class, "zzf", "zzg"});
        }
        if (i2 == 3) {
            return new vp9();
        }
        if (i2 == 4) {
            return new op9(zzb);
        }
        if (i2 == 5) {
            return zzb;
        }
        throw null;
    }
}
