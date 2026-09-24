package defpackage;

import java.security.GeneralSecurityException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class wh9 {
    public static final ht9 a;
    public static final ft9 b;
    public static final fs9 c;
    public static final ds9 d;

    static {
        d2a d2aVarC = au9.c("type.googleapis.com/google.crypto.tink.KmsAeadKey");
        a = new ht9(mh9.class, new hx0(18));
        b = new ft9(d2aVarC, new fk8(4));
        c = new fs9(kh9.class, new ma2(24));
        d = new ds9(d2aVarC, new fo8(23));
    }

    public static lh9 a(r0a r0aVar) throws GeneralSecurityException {
        int i = yh9.a[r0aVar.ordinal()];
        if (i == 1) {
            return lh9.c;
        }
        if (i == 2) {
            return lh9.d;
        }
        throw new GeneralSecurityException(fz5.j(r0aVar.zza(), "Unable to parse OutputPrefixType: "));
    }
}
