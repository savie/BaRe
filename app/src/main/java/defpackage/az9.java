package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class az9 extends k79 {
    private static final az9 zzc;
    private static volatile a89 zzd;
    private int zze;
    private int zzf;
    private int zzg;

    static {
        az9 az9Var = new az9();
        zzc = az9Var;
        k79.j(az9.class, az9Var);
    }

    public static az9 A() {
        return zzc;
    }

    public static zy9 z() {
        return (zy9) zzc.o();
    }

    @Override // defpackage.k79
    public final Object d(int i) {
        a89 i79Var;
        switch (xy9.a[i - 1]) {
            case 1:
                return new az9();
            case 2:
                return new zy9(zzc);
            case 3:
                return new d89(zzc, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\f\u0002\f\u0003\f", new Object[]{"zze", "zzf", "zzg"});
            case 4:
                return zzc;
            case 5:
                a89 a89Var = zzd;
                if (a89Var != null) {
                    return a89Var;
                }
                synchronized (az9.class) {
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

    public final ry9 t() {
        ry9 ry9Var;
        int i = this.zzg;
        if (i == 0) {
            ry9Var = ry9.AEAD_UNKNOWN;
        } else if (i == 1) {
            ry9Var = ry9.AES_128_GCM;
        } else if (i != 2) {
            ry9Var = i != 3 ? null : ry9.CHACHA20_POLY1305;
        } else {
            ry9Var = ry9.AES_256_GCM;
        }
        return ry9Var == null ? ry9.UNRECOGNIZED : ry9Var;
    }

    public final ty9 x() {
        ty9 ty9Var;
        int i = this.zzf;
        if (i == 0) {
            ty9Var = ty9.KDF_UNKNOWN;
        } else if (i == 1) {
            ty9Var = ty9.HKDF_SHA256;
        } else if (i != 2) {
            ty9Var = i != 3 ? null : ty9.HKDF_SHA512;
        } else {
            ty9Var = ty9.HKDF_SHA384;
        }
        return ty9Var == null ? ty9.UNRECOGNIZED : ty9Var;
    }

    public final sy9 y() {
        sy9 sy9Var;
        switch (this.zze) {
            case 0:
                sy9Var = sy9.KEM_UNKNOWN;
                break;
            case 1:
                sy9Var = sy9.DHKEM_X25519_HKDF_SHA256;
                break;
            case 2:
                sy9Var = sy9.DHKEM_P256_HKDF_SHA256;
                break;
            case 3:
                sy9Var = sy9.DHKEM_P384_HKDF_SHA384;
                break;
            case 4:
                sy9Var = sy9.DHKEM_P521_HKDF_SHA512;
                break;
            case 5:
                sy9Var = sy9.X_WING;
                break;
            case 6:
                sy9Var = sy9.ML_KEM768;
                break;
            case 7:
                sy9Var = sy9.ML_KEM1024;
                break;
            default:
                sy9Var = null;
                break;
        }
        return sy9Var == null ? sy9.UNRECOGNIZED : sy9Var;
    }
}
