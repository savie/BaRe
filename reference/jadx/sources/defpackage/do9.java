package defpackage;

import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class do9 extends xi9 {
    private static final do9 zzb;
    private int zzd;
    private int zze = 0;
    private Object zzf;
    private int zzg;
    private ro9 zzh;
    private int zzi;

    static {
        do9 do9Var = new do9();
        zzb = do9Var;
        xi9.f(do9.class, do9Var);
    }

    public static /* synthetic */ void p(do9 do9Var, vp9 vp9Var) {
        do9Var.zzf = vp9Var;
        do9Var.zze = 7;
    }

    public static /* synthetic */ void q(do9 do9Var, uq9 uq9Var) {
        do9Var.zzf = uq9Var;
        do9Var.zze = 6;
    }

    public static /* synthetic */ void r(do9 do9Var, int i) {
        do9Var.zzg = i - 1;
        do9Var.zzd |= 1;
    }

    public static co9 s() {
        return (co9) zzb.k();
    }

    public static do9 t(byte[] bArr) throws uj9 {
        xi9 xi9Var = zzb;
        int length = bArr.length;
        fi9 fi9Var = fi9.a;
        int i = pg9.a;
        fi9 fi9Var2 = fi9.a;
        if (length != 0) {
            xi9 xi9VarN = xi9Var.n();
            try {
                jm9 jm9VarA = bm9.c.a(xi9VarN.getClass());
                rg9 rg9Var = new rg9();
                fi9Var2.getClass();
                jm9VarA.b(xi9VarN, bArr, 0, length, rg9Var);
                jm9VarA.zzf(xi9VarN);
                xi9Var = xi9VarN;
            } catch (IndexOutOfBoundsException unused) {
                b6.f("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                return null;
            } catch (jn9 e) {
                b6.f(e.getMessage());
                return null;
            } catch (uj9 e2) {
                throw e2;
            } catch (IOException e3) {
                if (e3.getCause() instanceof uj9) {
                    throw ((uj9) e3.getCause());
                }
                throw new uj9(e3.getMessage(), e3);
            }
        }
        if (xi9Var == null || xi9.i(xi9Var, true)) {
            return (do9) xi9Var;
        }
        b6.f(new jn9().getMessage());
        return null;
    }

    public static void v(do9 do9Var, wo9 wo9Var) {
        do9Var.zzi = wo9Var.a;
        do9Var.zzd |= 4;
    }

    public static /* synthetic */ void w(do9 do9Var, ro9 ro9Var) {
        do9Var.zzh = ro9Var;
        do9Var.zzd |= 2;
    }

    @Override // defpackage.xi9
    public final Object j(int i) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new hm9(zzb, "\u0004\u0006\u0001\u0001\u0001\u0007\u0006\u0000\u0000\u0000\u0001᠌\u0000\u0002ဉ\u0001\u0004<\u0000\u0005᠌\u0002\u0006<\u0000\u0007<\u0000", new Object[]{"zzf", "zze", "zzd", "zzg", fo9.a, "zzh", np9.class, "zzi", vo9.b, uq9.class, vp9.class});
        }
        if (i2 == 3) {
            return new do9();
        }
        if (i2 == 4) {
            return new co9(zzb);
        }
        if (i2 == 5) {
            return zzb;
        }
        throw null;
    }

    public final vp9 u() {
        return this.zze == 7 ? (vp9) this.zzf : vp9.p();
    }
}
