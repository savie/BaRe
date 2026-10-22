package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class jx9 extends k79 {
    private static final jx9 zzc;
    private static volatile a89 zzd;
    private int zze;
    private mz9 zzf;

    static {
        jx9 jx9Var = new jx9();
        zzc = jx9Var;
        k79.j(jx9.class, jx9Var);
    }

    public static ix9 t() {
        return (ix9) zzc.o();
    }

    public static /* synthetic */ void u(jx9 jx9Var, mz9 mz9Var) {
        mz9Var.getClass();
        jx9Var.zzf = mz9Var;
        jx9Var.zze |= 1;
    }

    public static jx9 v() {
        return zzc;
    }

    @Override // defpackage.k79
    public final Object d(int i) {
        a89 i79Var;
        switch (lx9.a[i - 1]) {
            case 1:
                return new jx9();
            case 2:
                return new ix9(zzc);
            case 3:
                return new d89(zzc, "\u0000\u0001\u0000\u0001\u0002\u0002\u0001\u0000\u0000\u0000\u0002ဉ\u0000", new Object[]{"zze", "zzf"});
            case 4:
                return zzc;
            case 5:
                a89 a89Var = zzd;
                if (a89Var != null) {
                    return a89Var;
                }
                synchronized (jx9.class) {
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

    public final mz9 w() {
        mz9 mz9Var = this.zzf;
        return mz9Var == null ? mz9.y() : mz9Var;
    }
}
