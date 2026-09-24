package defpackage;

import java.security.GeneralSecurityException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class tn9 {
    public static final ht9 a;
    public static final ft9 b;
    public static final fs9 c;
    public static final ds9 d;

    static {
        d2a d2aVarC = au9.c("type.googleapis.com/google.crypto.tink.XAesGcmKey");
        a = new ht9(xj9.class, new fa9());
        b = new ft9(d2aVarC, new fo8(25));
        c = new fs9(mj9.class, new hi9(3));
        d = new ds9(d2aVarC, new b05());
    }

    public static rf9 a(r0a r0aVar) throws GeneralSecurityException {
        int i = zn9.a[r0aVar.ordinal()];
        if (i == 1) {
            return rf9.f;
        }
        if (i == 2) {
            return rf9.k;
        }
        throw new GeneralSecurityException(fz5.j(r0aVar.zza(), "Unable to parse OutputPrefixType: "));
    }
}
