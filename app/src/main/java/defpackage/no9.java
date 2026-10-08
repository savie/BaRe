package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class no9 extends xi9 {
    private static final no9 zzb;
    private int zzd;
    private int zze = 0;
    private Object zzf;
    private int zzg;
    private int zzh;

    static {
        no9 no9Var = new no9();
        zzb = no9Var;
        xi9.f(no9.class, no9Var);
    }

    public static /* synthetic */ void p(no9 no9Var, int i) {
        no9Var.zzg = i - 1;
        no9Var.zzd |= 1;
    }

    public static ho9 q() {
        return (ho9) zzb.k();
    }

    public static void s(no9 no9Var, wo9 wo9Var) {
        no9Var.zzh = wo9Var.a;
        no9Var.zzd |= 2;
    }

    public static /* synthetic */ void t(no9 no9Var, vp9 vp9Var) {
        no9Var.zzf = vp9Var;
        no9Var.zze = 4;
    }

    public static /* synthetic */ void u(no9 no9Var, uq9 uq9Var) {
        no9Var.zzf = uq9Var;
        no9Var.zze = 3;
    }

    @Override // defpackage.xi9
    public final Object j(int i) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new hm9(zzb, "\u0004\u0005\u0001\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001᠌\u0000\u0002<\u0000\u0003<\u0000\u0004<\u0000\u0005᠌\u0001", new Object[]{"zzf", "zze", "zzd", "zzg", fo9.a, np9.class, uq9.class, vp9.class, "zzh", vo9.b});
        }
        if (i2 == 3) {
            return new no9();
        }
        if (i2 == 4) {
            return new ho9(zzb);
        }
        if (i2 == 5) {
            return zzb;
        }
        throw null;
    }

    public final vp9 r() {
        return this.zze == 4 ? (vp9) this.zzf : vp9.p();
    }
}
