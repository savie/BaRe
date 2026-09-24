package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class su9 {
    public static final ot9 a;
    public static final ot9 b;
    public static final ht9 c;
    public static final ft9 d;
    public static final fs9 e;
    public static final ds9 f;

    static {
        d2a d2aVarC = au9.c("type.googleapis.com/google.crypto.tink.HmacKey");
        yf1 yf1VarJ = ot9.j();
        yf1VarJ.u(r0a.RAW, ku9.e);
        yf1VarJ.u(r0a.TINK, ku9.b);
        yf1VarJ.u(r0a.LEGACY, ku9.d);
        yf1VarJ.u(r0a.CRUNCHY, ku9.c);
        a = yf1VarJ.t();
        yf1 yf1VarJ2 = ot9.j();
        yf1VarJ2.u(jy9.SHA1, lu9.b);
        yf1VarJ2.u(jy9.SHA224, lu9.c);
        yf1VarJ2.u(jy9.SHA256, lu9.d);
        yf1VarJ2.u(jy9.SHA384, lu9.e);
        yf1VarJ2.u(jy9.SHA512, lu9.f);
        b = yf1VarJ2.t();
        c = new ht9(mu9.class, new fk8(9));
        d = new ft9(d2aVarC, new lv1(25));
        e = new fs9(hu9.class, new fa9());
        f = new ds9(d2aVarC, new fo8(28));
    }
}
