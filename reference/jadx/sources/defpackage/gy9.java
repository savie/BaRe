package defpackage;

import java.io.ByteArrayInputStream;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class gy9 extends k79 {
    private static final gy9 zzc;
    private static volatile a89 zzd;
    private int zze;
    private t69 zzf = t69.b;
    private zz9 zzg;

    static {
        gy9 gy9Var = new gy9();
        zzc = gy9Var;
        k79.j(gy9.class, gy9Var);
    }

    public static gy9 t(ByteArrayInputStream byteArrayInputStream, f79 f79Var) throws p79 {
        k79 k79VarG = k79.g(zzc, new z69(byteArrayInputStream), f79Var);
        k79.l(k79VarG);
        return (gy9) k79VarG;
    }

    public static /* synthetic */ void u(gy9 gy9Var, x69 x69Var) {
        x69Var.getClass();
        gy9Var.zzf = x69Var;
    }

    public static /* synthetic */ void v(gy9 gy9Var, zz9 zz9Var) {
        gy9Var.zzg = zz9Var;
        gy9Var.zze |= 1;
    }

    public static fy9 w() {
        return (fy9) zzc.o();
    }

    @Override // defpackage.k79
    public final Object d(int i) {
        a89 i79Var;
        switch (ey9.a[i - 1]) {
            case 1:
                return new gy9();
            case 2:
                return new fy9(zzc);
            case 3:
                return new d89(zzc, "\u0000\u0002\u0000\u0001\u0002\u0003\u0002\u0000\u0000\u0000\u0002\n\u0003ဉ\u0000", new Object[]{"zze", "zzf", "zzg"});
            case 4:
                return zzc;
            case 5:
                a89 a89Var = zzd;
                if (a89Var != null) {
                    return a89Var;
                }
                synchronized (gy9.class) {
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

    public final t69 x() {
        return this.zzf;
    }
}
