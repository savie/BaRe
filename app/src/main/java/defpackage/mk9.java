package defpackage;

import java.security.GeneralSecurityException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class mk9 {
    public static final ht9 a;
    public static final ft9 b;
    public static final fs9 c;
    public static final ds9 d;

    static {
        d2a d2aVarC = au9.c("type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey");
        a = new ht9(gf9.class, new ma2(25));
        b = new ft9(d2aVarC, new q34(18));
        c = new fs9(te9.class, new fk8(5));
        d = new ds9(d2aVarC, new lv1(22));
    }

    public static ef9 a(r0a r0aVar) throws GeneralSecurityException {
        int i = tk9.a[r0aVar.ordinal()];
        if (i == 1) {
            return ef9.c;
        }
        if (i == 2 || i == 3) {
            return ef9.d;
        }
        if (i == 4) {
            return ef9.e;
        }
        throw new GeneralSecurityException(fz5.j(r0aVar.zza(), "Unable to parse OutputPrefixType: "));
    }

    public static ff9 b(jy9 jy9Var) throws GeneralSecurityException {
        int i = tk9.b[jy9Var.ordinal()];
        if (i == 1) {
            return ff9.c;
        }
        if (i == 2) {
            return ff9.d;
        }
        if (i == 3) {
            return ff9.e;
        }
        if (i == 4) {
            return ff9.f;
        }
        if (i == 5) {
            return ff9.k;
        }
        throw new GeneralSecurityException(fz5.j(jy9Var.zza(), "Unable to parse HashType: "));
    }

    public static r0a c(ef9 ef9Var) throws GeneralSecurityException {
        if (ef9.c == ef9Var) {
            return r0a.TINK;
        }
        if (ef9.d == ef9Var) {
            return r0a.CRUNCHY;
        }
        if (ef9.e == ef9Var) {
            return r0a.RAW;
        }
        throw new GeneralSecurityException("Unable to serialize variant: ".concat(String.valueOf(ef9Var)));
    }

    public static py9 d(gf9 gf9Var) {
        jy9 jy9Var;
        oy9 oy9VarX = py9.x();
        int i = gf9Var.d;
        oy9VarX.c();
        ((py9) oy9VarX.b).zzf = i;
        ff9 ff9Var = gf9Var.f;
        if (ff9.c == ff9Var) {
            jy9Var = jy9.SHA1;
        } else if (ff9.d == ff9Var) {
            jy9Var = jy9.SHA224;
        } else if (ff9.e == ff9Var) {
            jy9Var = jy9.SHA256;
        } else if (ff9.f == ff9Var) {
            jy9Var = jy9.SHA384;
        } else {
            if (ff9.k != ff9Var) {
                throw new GeneralSecurityException("Unable to serialize HashType ".concat(String.valueOf(ff9Var)));
            }
            jy9Var = jy9.SHA512;
        }
        oy9VarX.c();
        ((py9) oy9VarX.b).zze = jy9Var.zza();
        return (py9) oy9VarX.b();
    }
}
