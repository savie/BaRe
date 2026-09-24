package defpackage;

import java.security.GeneralSecurityException;
import java.security.spec.ECPoint;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class gr9 {
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
        d2a d2aVarC = au9.c("type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey");
        d2a d2aVarC2 = au9.c("type.googleapis.com/google.crypto.tink.EciesAeadHkdfPublicKey");
        a = new ht9(cq9.class, new fk8(8));
        b = new ft9(d2aVarC, new fa9());
        c = new fs9(nq9.class, new fo8(27));
        d = new ds9(d2aVarC2, new hi9(5));
        e = new fs9(fq9.class, new b05());
        f = new ds9(d2aVarC, new cz4(28));
        yf1 yf1VarJ = ot9.j();
        yf1VarJ.u(r0a.RAW, zp9.d);
        yf1VarJ.u(r0a.TINK, zp9.b);
        r0a r0aVar = r0a.LEGACY;
        zp9 zp9Var = zp9.c;
        yf1VarJ.u(r0aVar, zp9Var);
        yf1VarJ.u(r0a.CRUNCHY, zp9Var);
        g = yf1VarJ.t();
        yf1 yf1VarJ2 = ot9.j();
        yf1VarJ2.u(jy9.SHA1, xp9.b);
        yf1VarJ2.u(jy9.SHA224, xp9.c);
        yf1VarJ2.u(jy9.SHA256, xp9.d);
        yf1VarJ2.u(jy9.SHA384, xp9.e);
        yf1VarJ2.u(jy9.SHA512, xp9.f);
        h = yf1VarJ2.t();
        yf1 yf1VarJ3 = ot9.j();
        yf1VarJ3.u(dy9.NIST_P256, yp9.b);
        yf1VarJ3.u(dy9.NIST_P384, yp9.c);
        yf1VarJ3.u(dy9.NIST_P521, yp9.d);
        yf1VarJ3.u(dy9.CURVE25519, yp9.e);
        i = yf1VarJ3.t();
        yf1 yf1VarJ4 = ot9.j();
        yf1VarJ4.u(kx9.UNCOMPRESSED, aq9.c);
        yf1VarJ4.u(kx9.COMPRESSED, aq9.b);
        yf1VarJ4.u(kx9.DO_NOT_USE_CRUNCHY_UNCOMPRESSED, aq9.d);
        j = yf1VarJ4.t();
    }

    public static int a(yp9 yp9Var) throws GeneralSecurityException {
        if (yp9.b == yp9Var) {
            return 33;
        }
        if (yp9.c == yp9Var) {
            return 49;
        }
        if (yp9.d == yp9Var) {
            return 67;
        }
        throw new GeneralSecurityException("Unable to serialize CurveType ".concat(String.valueOf(yp9Var)));
    }

    public static cq9 b(r0a r0aVar, qx9 qx9Var) {
        lz9 lz9VarT = mz9.t();
        lz9VarT.f(qx9Var.x().w().B());
        lz9VarT.e(r0a.RAW);
        lz9VarT.h(qx9Var.x().w().A());
        mz9 mz9Var = (mz9) lz9VarT.b();
        wp9 wp9VarB = cq9.b();
        wp9VarB.e = (zp9) g.l(r0aVar);
        wp9VarB.a = (yp9) i.l(qx9Var.A().y());
        wp9VarB.b = (xp9) h.l(qx9Var.A().z());
        wp9VarB.b(nc8.t0(mz9Var.c()));
        d2a d2aVarA = d2a.a(qx9Var.A().A().w());
        if (d2aVarA.a.length == 0) {
            wp9VarB.f = null;
        } else {
            wp9VarB.f = d2aVarA;
        }
        if (!qx9Var.A().y().equals(dy9.CURVE25519)) {
            wp9VarB.c = (aq9) j.l(qx9Var.t());
        } else if (!qx9Var.t().equals(kx9.COMPRESSED)) {
            m0.h("For CURVE25519 EcPointFormat must be compressed");
            return null;
        }
        return wp9VarB.a();
    }

    public static wx9 c(nq9 nq9Var) {
        cq9 cq9Var = nq9Var.d;
        if (cq9Var.a.equals(yp9.e)) {
            vx9 vx9VarA = wx9.A();
            vx9VarA.c();
            ((wx9) vx9VarA.b).zzf = 0;
            qx9 qx9VarD = d(cq9Var);
            vx9VarA.c();
            wx9.x((wx9) vx9VarA.b, qx9VarD);
            byte[] bArrB = nq9Var.f.b();
            x69 x69VarG = t69.g(bArrB, 0, bArrB.length);
            vx9VarA.c();
            wx9.w((wx9) vx9VarA.b, x69VarG);
            x69 x69Var = t69.b;
            vx9VarA.c();
            wx9.z((wx9) vx9VarA.b, x69Var);
            return (wx9) vx9VarA.b();
        }
        int iA = a(cq9Var.a);
        ECPoint eCPoint = nq9Var.e;
        if (eCPoint == null) {
            m0.h("NistCurvePoint was null for NIST curve");
            return null;
        }
        vx9 vx9VarA2 = wx9.A();
        vx9VarA2.c();
        ((wx9) vx9VarA2.b).zzf = 0;
        qx9 qx9VarD2 = d(cq9Var);
        vx9VarA2.c();
        wx9.x((wx9) vx9VarA2.b, qx9VarD2);
        byte[] bArrI = wx3.I(iA, eCPoint.getAffineX());
        x69 x69VarG2 = t69.g(bArrI, 0, bArrI.length);
        vx9VarA2.c();
        wx9.w((wx9) vx9VarA2.b, x69VarG2);
        byte[] bArrI2 = wx3.I(iA, eCPoint.getAffineY());
        x69 x69VarG3 = t69.g(bArrI2, 0, bArrI2.length);
        vx9VarA2.c();
        wx9.z((wx9) vx9VarA2.b, x69VarG3);
        return (wx9) vx9VarA2.b();
    }

    public static qx9 d(cq9 cq9Var) {
        ay9 ay9VarT = by9.t();
        dy9 dy9Var = (dy9) i.k(cq9Var.a);
        ay9VarT.c();
        ((by9) ay9VarT.b).zze = dy9Var.zza();
        jy9 jy9Var = (jy9) h.k(cq9Var.b);
        ay9VarT.c();
        ((by9) ay9VarT.b).zzf = jy9Var.zza();
        d2a d2aVar = cq9Var.f;
        if (d2aVar != null && d2aVar.a.length > 0) {
            byte[] bArrB = d2aVar.b();
            x69 x69VarG = t69.g(bArrB, 0, bArrB.length);
            ay9VarT.c();
            by9.u((by9) ay9VarT.b, x69VarG);
        }
        by9 by9Var = (by9) ay9VarT.b();
        try {
            mz9 mz9VarU = mz9.u(nc8.u0(cq9Var.e), f79.a);
            ix9 ix9VarT = jx9.t();
            lz9 lz9VarT = mz9.t();
            lz9VarT.f(mz9VarU.B());
            lz9VarT.e(r0a.TINK);
            lz9VarT.h(mz9VarU.A());
            mz9 mz9Var = (mz9) lz9VarT.b();
            ix9VarT.c();
            jx9.u((jx9) ix9VarT.b, mz9Var);
            jx9 jx9Var = (jx9) ix9VarT.b();
            aq9 aq9Var = cq9Var.c;
            if (aq9Var == null) {
                aq9Var = aq9.b;
            }
            px9 px9VarY = qx9.y();
            px9VarY.c();
            qx9.w((qx9) px9VarY.b, by9Var);
            px9VarY.c();
            qx9.u((qx9) px9VarY.b, jx9Var);
            kx9 kx9Var = (kx9) j.k(aq9Var);
            px9VarY.c();
            ((qx9) px9VarY.b).zzh = kx9Var.zza();
            return (qx9) px9VarY.b();
        } catch (p79 e2) {
            throw new GeneralSecurityException("Parsing EciesParameters failed: ", e2);
        }
    }
}
