package defpackage;

import java.security.GeneralSecurityException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class qu9 {
    public static final ht9 a;
    public static final ft9 b;
    public static final fs9 c;
    public static final ds9 d;

    static {
        d2a d2aVarC = au9.c("type.googleapis.com/google.crypto.tink.AesCmacKey");
        a = new ht9(eu9.class, new ns0(27));
        b = new ft9(d2aVarC, new q34(23));
        c = new fs9(zt9.class, new hx0(25));
        d = new ds9(d2aVarC, new ma2(28));
    }

    public static du9 a(r0a r0aVar) throws GeneralSecurityException {
        int i = ru9.a[r0aVar.ordinal()];
        if (i == 1) {
            return du9.c;
        }
        if (i == 2) {
            return du9.d;
        }
        if (i == 3) {
            return du9.e;
        }
        if (i == 4) {
            return du9.f;
        }
        throw new GeneralSecurityException(fz5.j(r0aVar.zza(), "Unable to parse OutputPrefixType: "));
    }

    public static r0a b(du9 du9Var) throws GeneralSecurityException {
        if (du9.c == du9Var) {
            return r0a.TINK;
        }
        if (du9.d == du9Var) {
            return r0a.CRUNCHY;
        }
        if (du9.f == du9Var) {
            return r0a.RAW;
        }
        if (du9.e == du9Var) {
            return r0a.LEGACY;
        }
        throw new GeneralSecurityException("Unable to serialize variant: ".concat(String.valueOf(du9Var)));
    }
}
