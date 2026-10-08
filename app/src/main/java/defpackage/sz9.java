package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class sz9 extends k79 {
    private static final sz9 zzc;
    private static volatile a89 zzd;
    private int zze;
    private jz9 zzf;
    private int zzg;
    private int zzh;
    private int zzi;

    static {
        sz9 sz9Var = new sz9();
        zzc = sz9Var;
        k79.j(sz9.class, sz9Var);
    }

    public static rz9 A() {
        return (rz9) zzc.o();
    }

    public static /* synthetic */ void v(sz9 sz9Var, jz9 jz9Var) {
        sz9Var.zzf = jz9Var;
        sz9Var.zze |= 1;
    }

    public final r0a B() {
        r0a r0aVarA = r0a.a(this.zzi);
        return r0aVarA == null ? r0a.UNRECOGNIZED : r0aVarA;
    }

    public final boolean C() {
        return (this.zze & 1) != 0;
    }

    @Override // defpackage.k79
    public final Object d(int i) {
        a89 i79Var;
        switch (qz9.a[i - 1]) {
            case 1:
                return new sz9();
            case 2:
                return new rz9(zzc);
            case 3:
                return new d89(zzc, "\u0000\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001ဉ\u0000\u0002\f\u0003\u000b\u0004\f", new Object[]{"zze", "zzf", "zzg", "zzh", "zzi"});
            case 4:
                return zzc;
            case 5:
                a89 a89Var = zzd;
                if (a89Var != null) {
                    return a89Var;
                }
                synchronized (sz9.class) {
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
        return this.zzh;
    }

    public final jz9 y() {
        jz9 jz9Var = this.zzf;
        return jz9Var == null ? jz9.y() : jz9Var;
    }

    public final int z() {
        int i = this.zzg;
        int i2 = 1;
        if (i != 0) {
            if (i != 1) {
                i2 = 3;
                if (i != 2) {
                    i2 = i != 3 ? 0 : 4;
                }
            } else {
                i2 = 2;
            }
        }
        if (i2 == 0) {
            return 5;
        }
        return i2;
    }
}
