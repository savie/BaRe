package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class mz9 extends k79 {
    private static final mz9 zzc;
    private static volatile a89 zzd;
    private String zze = "";
    private t69 zzf = t69.b;
    private int zzg;

    static {
        mz9 mz9Var = new mz9();
        zzc = mz9Var;
        k79.j(mz9.class, mz9Var);
    }

    public static lz9 t() {
        return (lz9) zzc.o();
    }

    public static mz9 u(byte[] bArr, f79 f79Var) {
        return (mz9) k79.i(zzc, bArr, f79Var);
    }

    public static /* synthetic */ void v(mz9 mz9Var, String str) {
        str.getClass();
        mz9Var.zze = str;
    }

    public static /* synthetic */ void w(mz9 mz9Var, t69 t69Var) {
        t69Var.getClass();
        mz9Var.zzf = t69Var;
    }

    public static mz9 y() {
        return zzc;
    }

    public final t69 A() {
        return this.zzf;
    }

    public final String B() {
        return this.zze;
    }

    @Override // defpackage.k79
    public final Object d(int i) {
        a89 i79Var;
        switch (kz9.a[i - 1]) {
            case 1:
                return new mz9();
            case 2:
                return new lz9(zzc);
            case 3:
                return new d89(zzc, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001Ȉ\u0002\n\u0003\f", new Object[]{"zze", "zzf", "zzg"});
            case 4:
                return zzc;
            case 5:
                a89 a89Var = zzd;
                if (a89Var != null) {
                    return a89Var;
                }
                synchronized (mz9.class) {
                    try {
                        i79Var = zzd;
                        if (i79Var == null) {
                            i79Var = new i79();
                            zzd = i79Var;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                    break;
                }
                return i79Var;
            case 6:
                return (byte) 1;
            default:
                throw null;
        }
    }

    public final r0a z() {
        r0a r0aVarA = r0a.a(this.zzg);
        return r0aVarA == null ? r0a.UNRECOGNIZED : r0aVarA;
    }
}
