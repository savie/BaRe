package defpackage;

import java.security.GeneralSecurityException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class ao9 {
    public static final ht9 a;
    public static final ft9 b;
    public static final fs9 c;
    public static final ds9 d;

    static {
        d2a d2aVarC = au9.c("type.googleapis.com/google.crypto.tink.XChaCha20Poly1305Key");
        a = new ht9(ik9.class, new cz4(25));
        b = new ft9(d2aVarC, new ns0(25));
        c = new fs9(ck9.class, new nh4(19));
        d = new ds9(d2aVarC, new hx0(22));
    }

    public static sg9 a(r0a r0aVar) throws GeneralSecurityException {
        int i = bo9.a[r0aVar.ordinal()];
        if (i == 1) {
            return sg9.f;
        }
        if (i == 2 || i == 3) {
            return sg9.g;
        }
        if (i == 4) {
            return sg9.h;
        }
        throw new GeneralSecurityException(fz5.j(r0aVar.zza(), "Unable to parse OutputPrefixType: "));
    }

    public static r0a b(sg9 sg9Var) throws GeneralSecurityException {
        if (sg9.f == sg9Var) {
            return r0a.TINK;
        }
        if (sg9.g == sg9Var) {
            return r0a.CRUNCHY;
        }
        if (sg9.h == sg9Var) {
            return r0a.RAW;
        }
        throw new GeneralSecurityException("Unable to serialize variant: ".concat(String.valueOf(sg9Var)));
    }
}
