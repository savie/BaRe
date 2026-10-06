package defpackage;

import java.io.ByteArrayInputStream;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class uz9 extends k79 {
    private static final uz9 zzc;
    private static volatile a89 zzd;
    private int zze;
    private o79 zzf = b89.e;

    static {
        uz9 uz9Var = new uz9();
        zzc = uz9Var;
        k79.j(uz9.class, uz9Var);
    }

    public static tz9 A() {
        return (tz9) zzc.o();
    }

    public static uz9 v(ByteArrayInputStream byteArrayInputStream, f79 f79Var) throws p79 {
        k79 k79VarG = k79.g(zzc, new z69(byteArrayInputStream), f79Var);
        k79.l(k79VarG);
        return (uz9) k79VarG;
    }

    public static uz9 w(byte[] bArr, f79 f79Var) {
        return (uz9) k79.i(zzc, bArr, f79Var);
    }

    public static void y(uz9 uz9Var, sz9 sz9Var) {
        o79 o79Var = uz9Var.zzf;
        if (!((b89) o79Var).a) {
            b89 b89Var = (b89) o79Var;
            uz9Var.zzf = b89Var.d(b89Var.c << 1);
        }
        ((b89) uz9Var.zzf).add(sz9Var);
    }

    public final o79 B() {
        return this.zzf;
    }

    @Override // defpackage.k79
    public final Object d(int i) {
        a89 i79Var;
        switch (qz9.a[i - 1]) {
            case 1:
                return new uz9();
            case 2:
                return new tz9(zzc);
            case 3:
                return new d89(zzc, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u000b\u0002\u001b", new Object[]{"zze", "zzf", sz9.class});
            case 4:
                return zzc;
            case 5:
                a89 a89Var = zzd;
                if (a89Var != null) {
                    return a89Var;
                }
                synchronized (uz9.class) {
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
        return ((b89) this.zzf).size();
    }

    public final sz9 u(int i) {
        return (sz9) ((b89) this.zzf).get(i);
    }

    public final int z() {
        return this.zze;
    }
}
