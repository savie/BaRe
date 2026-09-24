package defpackage;

import java.math.BigInteger;
import java.security.GeneralSecurityException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class rq9 {
    public static final ht9 a;
    public static final ft9 b;
    public static final fs9 c;
    public static final ds9 d;
    public static final fs9 e;
    public static final ds9 f;
    public static final ot9 g;
    public static final ot9 h;
    public static final ot9 i;
    public static final ot9 j;

    static {
        d2a d2aVarC = au9.c("type.googleapis.com/google.crypto.tink.HpkePrivateKey");
        d2a d2aVarC2 = au9.c("type.googleapis.com/google.crypto.tink.HpkePublicKey");
        a = new ht9(lq9.class, new cz4(27));
        b = new ft9(d2aVarC, new hx0(23));
        c = new fs9(vq9.class, new ns0(26));
        d = new ds9(d2aVarC2, new ma2(27));
        e = new fs9(oq9.class, new q34(22));
        f = new ds9(d2aVarC, new fk8(7));
        yf1 yf1VarJ = ot9.j();
        yf1VarJ.u(r0a.RAW, iq9.d);
        yf1VarJ.u(r0a.TINK, iq9.b);
        r0a r0aVar = r0a.LEGACY;
        iq9 iq9Var = iq9.c;
        yf1VarJ.u(r0aVar, iq9Var);
        yf1VarJ.u(r0a.CRUNCHY, iq9Var);
        g = yf1VarJ.t();
        yf1 yf1VarJ2 = ot9.j();
        yf1VarJ2.u(sy9.DHKEM_P256_HKDF_SHA256, jq9.d);
        yf1VarJ2.u(sy9.DHKEM_P384_HKDF_SHA384, jq9.e);
        yf1VarJ2.u(sy9.DHKEM_P521_HKDF_SHA512, jq9.f);
        yf1VarJ2.u(sy9.DHKEM_X25519_HKDF_SHA256, jq9.g);
        h = yf1VarJ2.t();
        yf1 yf1VarJ3 = ot9.j();
        yf1VarJ3.u(ty9.HKDF_SHA256, hq9.d);
        yf1VarJ3.u(ty9.HKDF_SHA384, hq9.e);
        yf1VarJ3.u(ty9.HKDF_SHA512, hq9.f);
        i = yf1VarJ3.t();
        yf1 yf1VarJ4 = ot9.j();
        yf1VarJ4.u(ry9.AES_128_GCM, gq9.d);
        yf1VarJ4.u(ry9.AES_256_GCM, gq9.e);
        yf1VarJ4.u(ry9.CHACHA20_POLY1305, gq9.f);
        j = yf1VarJ4.t();
    }

    public static lq9 a(r0a r0aVar, az9 az9Var) {
        l40 l40VarB = lq9.b();
        l40VarB.e = (iq9) g.l(r0aVar);
        l40VarB.b = (jq9) h.l(az9Var.y());
        l40VarB.c = (hq9) i.l(az9Var.x());
        l40VarB.d = (gq9) j.l(az9Var.t());
        return l40VarB.c();
    }

    public static gz9 b(vq9 vq9Var) {
        fz9 fz9VarZ = gz9.z();
        fz9VarZ.c();
        ((gz9) fz9VarZ.b).zzf = 0;
        az9 az9VarD = d(vq9Var.d);
        fz9VarZ.c();
        gz9.x((gz9) fz9VarZ.b, az9VarD);
        byte[] bArrB = vq9Var.e.b();
        x69 x69VarG = t69.g(bArrB, 0, bArrB.length);
        fz9VarZ.c();
        gz9.w((gz9) fz9VarZ.b, x69VarG);
        return (gz9) fz9VarZ.b();
    }

    public static d2a c(jq9 jq9Var, byte[] bArr) throws GeneralSecurityException {
        int i2;
        BigInteger bigIntegerG = wx3.G(bArr);
        byte[] bArr2 = or9.a;
        if (jq9Var == jq9.g) {
            i2 = 32;
        } else if (jq9Var == jq9.d) {
            i2 = 65;
        } else if (jq9Var == jq9.e) {
            i2 = 97;
        } else {
            if (jq9Var != jq9.f) {
                m0.h("Unrecognized HPKE KEM identifier");
                return null;
            }
            i2 = 133;
        }
        return d2a.a(wx3.I(i2, bigIntegerG));
    }

    public static az9 d(lq9 lq9Var) {
        zy9 zy9VarZ = az9.z();
        sy9 sy9Var = (sy9) h.k(lq9Var.a);
        zy9VarZ.c();
        ((az9) zy9VarZ.b).zze = sy9Var.zza();
        ty9 ty9Var = (ty9) i.k(lq9Var.b);
        zy9VarZ.c();
        ((az9) zy9VarZ.b).zzf = ty9Var.zza();
        ry9 ry9Var = (ry9) j.k(lq9Var.c);
        zy9VarZ.c();
        ((az9) zy9VarZ.b).zzg = ry9Var.zza();
        return (az9) zy9VarZ.b();
    }
}
