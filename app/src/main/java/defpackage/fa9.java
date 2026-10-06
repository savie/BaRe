package defpackage;

import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.util.Collections;
import java.util.HashSet;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class fa9 implements dl9, gt9, et9, es9 {
    public Object a() throws InvalidAlgorithmParameterException {
        HashSet hashSet = new HashSet();
        bs2 bs2VarB = kg9.b();
        bs2VarB.l();
        bs2VarB.m(16);
        bs2VarB.n();
        ig9 ig9Var = ig9.e;
        bs2VarB.e = ig9Var;
        hashSet.add(bs2VarB.k());
        bs2 bs2VarB2 = kg9.b();
        bs2VarB2.l();
        bs2VarB2.m(32);
        bs2VarB2.n();
        bs2VarB2.e = ig9Var;
        hashSet.add(bs2VarB2.k());
        fm1 fm1VarB = gf9.b();
        fm1VarB.d(16);
        fm1VarB.e(32);
        fm1VarB.g(16);
        fm1VarB.f(16);
        ff9 ff9Var = ff9.e;
        fm1VarB.a = ff9Var;
        ef9 ef9Var = ef9.e;
        fm1VarB.f = ef9Var;
        hashSet.add(fm1VarB.c());
        fm1 fm1VarB2 = gf9.b();
        fm1VarB2.d(32);
        fm1VarB2.e(32);
        fm1VarB2.g(32);
        fm1VarB2.f(16);
        fm1VarB2.a = ff9Var;
        fm1VarB2.f = ef9Var;
        hashSet.add(fm1VarB2.c());
        hashSet.add(new ik9(sg9.h));
        wc9 wc9VarB = dp9.b();
        wc9VarB.g(64);
        wc9VarB.c = cp9.d;
        hashSet.add(wc9VarB.f());
        return Collections.unmodifiableSet(hashSet);
    }

    @Override // defpackage.es9
    public pt9 f(vm4 vm4Var) {
        hu9 hu9Var = (hu9) vm4Var;
        hy9 hy9VarX = iy9.x();
        mu9 mu9Var = hu9Var.d;
        oy9 oy9VarX = py9.x();
        int i = mu9Var.b;
        oy9VarX.c();
        ((py9) oy9VarX.b).zzf = i;
        jy9 jy9Var = (jy9) su9.b.k(mu9Var.d);
        oy9VarX.c();
        ((py9) oy9VarX.b).zze = jy9Var.zza();
        py9 py9Var = (py9) oy9VarX.b();
        hy9VarX.c();
        iy9.w((iy9) hy9VarX.b, py9Var);
        byte[] bArrB = ((d2a) hu9Var.e.a).b();
        x69 x69VarG = t69.g(bArrB, 0, bArrB.length);
        hy9VarX.c();
        iy9.v((iy9) hy9VarX.b, x69VarG);
        return pt9.a("type.googleapis.com/google.crypto.tink.HmacKey", ((iy9) hy9VarX.b()).b(), 2, (r0a) su9.a.k(hu9Var.d.c), hu9Var.f);
    }

    @Override // defpackage.et9
    public bd9 g(ot9 ot9Var) throws GeneralSecurityException {
        mz9 mz9Var = (mz9) ot9Var.b;
        if (!mz9Var.B().equals("type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey")) {
            c6.f(xs1.j("Wrong type URL in call to EciesProtoSerialization.parseParameters: ", mz9Var.B()));
            return null;
        }
        try {
            return gr9.b(mz9Var.z(), nx9.u(mz9Var.A(), f79.a).w());
        } catch (p79 e) {
            throw new GeneralSecurityException("Parsing EciesParameters failed: ", e);
        }
    }

    @Override // defpackage.gt9
    public ot9 p(bd9 bd9Var) throws GeneralSecurityException {
        r0a r0aVar;
        xj9 xj9Var = (xj9) bd9Var;
        lz9 lz9VarT = mz9.t();
        lz9VarT.f("type.googleapis.com/google.crypto.tink.XAesGcmKey");
        w0a w0aVarW = x0a.w();
        z0a z0aVarV = a1a.v();
        int i = xj9Var.b;
        z0aVarV.c();
        ((a1a) z0aVarV.b).zze = i;
        a1a a1aVar = (a1a) z0aVarV.b();
        w0aVarW.c();
        x0a.v((x0a) w0aVarW.b, a1aVar);
        lz9VarT.h(((x0a) w0aVarW.b()).b());
        rf9 rf9Var = xj9Var.a;
        if (rf9Var == rf9.f) {
            r0aVar = r0a.TINK;
        } else {
            if (rf9Var != rf9.k) {
                throw new GeneralSecurityException("Unable to serialize variant: ".concat(String.valueOf(rf9Var)));
            }
            r0aVar = r0a.RAW;
        }
        lz9VarT.e(r0aVar);
        return ot9.m((mz9) lz9VarT.b());
    }

    @Override // defpackage.dl9
    public hm9 zzb(Class cls) {
        throw new IllegalStateException("This should never be called.");
    }

    @Override // defpackage.dl9
    public boolean zzc(Class cls) {
        return false;
    }
}
