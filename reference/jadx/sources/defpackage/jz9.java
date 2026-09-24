package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class jz9 extends k79 {
    private static final jz9 zzc;
    private static volatile a89 zzd;
    private String zze = "";
    private t69 zzf = t69.b;
    private int zzg;

    static {
        jz9 jz9Var = new jz9();
        zzc = jz9Var;
        k79.j(jz9.class, jz9Var);
    }

    public static iz9 t() {
        return (iz9) zzc.o();
    }

    public static void u(jz9 jz9Var, int i) {
        int i2;
        if (i == 6) {
            l79.c();
            throw null;
        }
        switch (i) {
            case 1:
                i2 = 0;
                break;
            case 2:
                i2 = 1;
                break;
            case 3:
                i2 = 2;
                break;
            case 4:
                i2 = 3;
                break;
            case 5:
                i2 = 4;
                break;
            case 6:
                i2 = -1;
                break;
            default:
                throw null;
        }
        jz9Var.zzg = i2;
    }

    public static /* synthetic */ void v(jz9 jz9Var, String str) {
        str.getClass();
        jz9Var.zze = str;
    }

    public static /* synthetic */ void w(jz9 jz9Var, t69 t69Var) {
        t69Var.getClass();
        jz9Var.zzf = t69Var;
    }

    public static jz9 y() {
        return zzc;
    }

    public final String A() {
        return this.zze;
    }

    @Override // defpackage.k79
    public final Object d(int i) {
        a89 i79Var;
        switch (hz9.a[i - 1]) {
            case 1:
                return new jz9();
            case 2:
                return new iz9(zzc);
            case 3:
                return new d89(zzc, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001Ȉ\u0002\n\u0003\f", new Object[]{"zze", "zzf", "zzg"});
            case 4:
                return zzc;
            case 5:
                a89 a89Var = zzd;
                if (a89Var != null) {
                    return a89Var;
                }
                synchronized (jz9.class) {
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

    /* JADX WARN: Code duplicated, block: B:13:0x0014 A[PHI: r1
      0x0014: PHI (r1v1 int) = (r1v0 int), (r1v2 int) binds: [B:5:0x0006, B:9:0x000c] A[DONT_GENERATE, DONT_INLINE]] */
    public final int x() {
        int i = this.zzg;
        int i2 = 1;
        if (i != 0) {
            int i3 = 2;
            if (i != 1) {
                i2 = 3;
                if (i != 2) {
                    i3 = 4;
                    if (i != 3) {
                        i2 = i != 4 ? 0 : 5;
                    } else {
                        i2 = i3;
                    }
                }
            } else {
                i2 = i3;
            }
        }
        if (i2 == 0) {
            return 6;
        }
        return i2;
    }

    public final t69 z() {
        return this.zzf;
    }
}
