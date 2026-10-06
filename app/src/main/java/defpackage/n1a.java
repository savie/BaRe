package defpackage;

import java.security.GeneralSecurityException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class n1a implements ba9 {
    public static final ot9 a;
    public static final ot9 b;

    static {
        yf1 yf1VarJ = ot9.j();
        yf1VarJ.u(p1a.a, yp9.b);
        yf1VarJ.u(p1a.b, yp9.c);
        yf1VarJ.u(p1a.c, yp9.d);
        a = yf1VarJ.t();
        yf1 yf1VarJ2 = ot9.j();
        yf1VarJ2.u(r1a.a, aq9.c);
        yf1VarJ2.u(r1a.b, aq9.b);
        yf1VarJ2.u(r1a.c, aq9.d);
        b = yf1VarJ2.t();
    }

    public static final String a(xp9 xp9Var) {
        if (xp9Var.equals(xp9.b)) {
            return "HmacSha1";
        }
        if (xp9Var == xp9.c) {
            return "HmacSha224";
        }
        if (xp9Var == xp9.d) {
            return "HmacSha256";
        }
        if (xp9Var == xp9.e) {
            return "HmacSha384";
        }
        if (xp9Var == xp9.f) {
            return "HmacSha512";
        }
        throw new GeneralSecurityException("hash unsupported for EciesAeadHkdf: ".concat(String.valueOf(xp9Var)));
    }
}
