package defpackage;

import java.security.GeneralSecurityException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class sk9 {
    public static final ht9 a;
    public static final ft9 b;
    public static final fs9 c;
    public static final ds9 d;

    static {
        d2a d2aVarC = au9.c("type.googleapis.com/google.crypto.tink.AesEaxKey");
        a = new ht9(sf9.class, new nh4(17));
        b = new ft9(d2aVarC, new b05());
        c = new fs9(hf9.class, new hx0(20));
        d = new ds9(d2aVarC, new ns0(22));
    }

    public static rf9 a(r0a r0aVar) throws GeneralSecurityException {
        int i = zk9.a[r0aVar.ordinal()];
        if (i == 1) {
            return rf9.c;
        }
        if (i == 2 || i == 3) {
            return rf9.d;
        }
        if (i == 4) {
            return rf9.e;
        }
        throw new GeneralSecurityException(fz5.j(r0aVar.zza(), "Unable to parse OutputPrefixType: "));
    }

    public static r0a b(rf9 rf9Var) throws GeneralSecurityException {
        if (rf9.c == rf9Var) {
            return r0a.TINK;
        }
        if (rf9.d == rf9Var) {
            return r0a.CRUNCHY;
        }
        if (rf9.e == rf9Var) {
            return r0a.RAW;
        }
        throw new GeneralSecurityException("Unable to serialize variant: ".concat(String.valueOf(rf9Var)));
    }

    public static iw9 c(sf9 sf9Var) {
        if (sf9Var.c != 16) {
            throw new GeneralSecurityException(String.format("Invalid tag size in bytes %d. Currently Tink only supports aes eax keys with tag size equal to 16 bytes.", Integer.valueOf(sf9Var.c)));
        }
        hw9 hw9VarV = iw9.v();
        int i = sf9Var.b;
        hw9VarV.c();
        ((iw9) hw9VarV.b).zze = i;
        return (iw9) hw9VarV.b();
    }
}
