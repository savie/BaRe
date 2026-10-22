package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class py9 extends k79 {
    private static final py9 zzc;
    private static volatile a89 zzd;
    private int zze;
    private int zzf;

    static {
        py9 py9Var = new py9();
        zzc = py9Var;
        k79.j(py9.class, py9Var);
    }

    public static oy9 x() {
        return (oy9) zzc.o();
    }

    public static py9 y() {
        return zzc;
    }

    @Override // defpackage.k79
    public final Object d(int i) {
        a89 i79Var;
        switch (qy9.a[i - 1]) {
            case 1:
                return new py9();
            case 2:
                return new oy9(zzc);
            case 3:
                return new d89(zzc, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\f\u0002\u000b", new Object[]{"zze", "zzf"});
            case 4:
                return zzc;
            case 5:
                a89 a89Var = zzd;
                if (a89Var != null) {
                    return a89Var;
                }
                synchronized (py9.class) {
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

    public final int t() {
        return this.zzf;
    }

    public final jy9 w() {
        jy9 jy9VarA = jy9.a(this.zze);
        return jy9VarA == null ? jy9.UNRECOGNIZED : jy9VarA;
    }
}
