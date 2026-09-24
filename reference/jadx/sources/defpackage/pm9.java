package defpackage;

import java.security.GeneralSecurityException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class pm9 {
    public static final ht9 a;
    public static final ft9 b;
    public static final fs9 c;
    public static final ds9 d;

    static {
        d2a d2aVarC = au9.c("type.googleapis.com/google.crypto.tink.ChaCha20Poly1305Key");
        a = new ht9(ah9.class, new ns0(23));
        b = new ft9(d2aVarC, new q34(20));
        c = new fs9(vg9.class, new hx0(21));
        d = new ds9(d2aVarC, new fk8(6));
    }

    public static ef9 a(r0a r0aVar) throws GeneralSecurityException {
        int i = tm9.a[r0aVar.ordinal()];
        if (i == 1) {
            return ef9.f;
        }
        if (i == 2 || i == 3) {
            return ef9.k;
        }
        if (i == 4) {
            return ef9.n;
        }
        throw new GeneralSecurityException(fz5.j(r0aVar.zza(), "Unable to parse OutputPrefixType: "));
    }

    public static r0a b(ef9 ef9Var) throws GeneralSecurityException {
        if (ef9.f == ef9Var) {
            return r0a.TINK;
        }
        if (ef9.k == ef9Var) {
            return r0a.CRUNCHY;
        }
        if (ef9.n == ef9Var) {
            return r0a.RAW;
        }
        throw new GeneralSecurityException("Unable to serialize variant: ".concat(String.valueOf(ef9Var)));
    }
}
