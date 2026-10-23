package defpackage;

import java.security.GeneralSecurityException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class al9 {
    public static final ht9 a;
    public static final ft9 b;
    public static final fs9 c;
    public static final ds9 d;

    static {
        d2a d2aVarC = au9.c("type.googleapis.com/google.crypto.tink.AesGcmKey");
        a = new ht9(kg9.class, new hi9(1));
        b = new ft9(d2aVarC, new lv1(23));
        c = new fs9(uf9.class, new cz4(24));
        d = new ds9(d2aVarC, new lk());
    }

    public static ig9 a(r0a r0aVar) throws GeneralSecurityException {
        int i = ol9.a[r0aVar.ordinal()];
        if (i == 1) {
            return ig9.c;
        }
        if (i == 2 || i == 3) {
            return ig9.d;
        }
        if (i == 4) {
            return ig9.e;
        }
        throw new GeneralSecurityException(fz5.j(r0aVar.zza(), "Unable to parse OutputPrefixType: "));
    }

    public static r0a b(ig9 ig9Var) throws GeneralSecurityException {
        if (ig9.c == ig9Var) {
            return r0a.TINK;
        }
        if (ig9.d == ig9Var) {
            return r0a.CRUNCHY;
        }
        if (ig9.e == ig9Var) {
            return r0a.RAW;
        }
        throw new GeneralSecurityException("Unable to serialize variant: ".concat(String.valueOf(ig9Var)));
    }

    public static void c(kg9 kg9Var) {
        int i = kg9Var.c;
        int i2 = kg9Var.b;
        if (i != 16) {
            throw new GeneralSecurityException(String.format("Invalid tag size in bytes %d. Currently Tink only supports serialization of AES GCM keys with tag size equal to 16 bytes.", Integer.valueOf(kg9Var.c)));
        }
        if (i2 != 12) {
            throw new GeneralSecurityException(String.format("Invalid IV size in bytes %d. Currently Tink only supports serialization of AES GCM keys with IV size equal to 12 bytes.", Integer.valueOf(i2)));
        }
    }
}
