package defpackage;

import java.security.GeneralSecurityException;
import java.security.spec.ECPoint;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class hi9 implements gt9, cs9, es9, et9, ba9 {
    public final /* synthetic */ int a;

    public /* synthetic */ hi9(int i) {
        this.a = i;
    }

    @Override // defpackage.es9
    public pt9 f(vm4 vm4Var) throws GeneralSecurityException {
        r0a r0aVar;
        mj9 mj9Var = (mj9) vm4Var;
        t0a t0aVarX = u0a.x();
        byte[] bArrB = ((d2a) mj9Var.e.a).b();
        x69 x69VarG = t69.g(bArrB, 0, bArrB.length);
        t0aVarX.c();
        u0a.v((u0a) t0aVarX.b, x69VarG);
        z0a z0aVarV = a1a.v();
        xj9 xj9Var = mj9Var.d;
        int i = xj9Var.b;
        z0aVarV.c();
        ((a1a) z0aVarV.b).zze = i;
        a1a a1aVar = (a1a) z0aVarV.b();
        t0aVarX.c();
        u0a.w((u0a) t0aVarX.b, a1aVar);
        x69 x69VarB = ((u0a) t0aVarX.b()).b();
        rf9 rf9Var = xj9Var.a;
        if (rf9Var == rf9.f) {
            r0aVar = r0a.TINK;
        } else {
            if (rf9Var != rf9.k) {
                throw new GeneralSecurityException("Unable to serialize variant: ".concat(String.valueOf(rf9Var)));
            }
            r0aVar = r0a.RAW;
        }
        return pt9.a("type.googleapis.com/google.crypto.tink.XAesGcmKey", x69VarB, 2, r0aVar, mj9Var.k);
    }

    @Override // defpackage.et9
    public bd9 g(ot9 ot9Var) throws GeneralSecurityException {
        mz9 mz9Var = (mz9) ot9Var.b;
        if (!mz9Var.B().equals("type.googleapis.com/google.crypto.tink.AesSivKey")) {
            c6.f(xs1.j("Wrong type URL in call to AesSivParameters.parseParameters: ", mz9Var.B()));
            return null;
        }
        try {
            bx9 bx9VarU = bx9.u(mz9Var.A(), f79.a);
            if (bx9VarU.w() != 0) {
                throw new GeneralSecurityException("Only version 0 keys are accepted");
            }
            wc9 wc9VarB = dp9.b();
            wc9VarB.g(bx9VarU.t());
            wc9VarB.c = lp9.a(mz9Var.z());
            return wc9VarB.f();
        } catch (p79 e) {
            throw new GeneralSecurityException("Parsing AesSivParameters failed: ", e);
        }
    }

    @Override // defpackage.cs9
    public vm4 n(pt9 pt9Var) throws GeneralSecurityException {
        switch (this.a) {
            case 2:
                if (!pt9Var.a.equals("type.googleapis.com/google.crypto.tink.AesGcmSivKey")) {
                    c6.f("Wrong type URL in call to AesGcmSivProtoSerialization.parseKey");
                    return null;
                }
                try {
                    rw9 rw9VarU = rw9.u(pt9Var.c, f79.a);
                    if (rw9VarU.t() != 0) {
                        throw new GeneralSecurityException("Only version 0 keys are accepted");
                    }
                    cd cdVarB = tg9.b();
                    cdVarB.o(rw9VarU.x().d());
                    cdVarB.c = sl9.a(pt9Var.e);
                    tg9 tg9VarN = cdVarB.n();
                    gh ghVar = new gh();
                    ghVar.b = null;
                    ghVar.c = null;
                    ghVar.a = tg9VarN;
                    ghVar.b = new km8(d2a.a(rw9VarU.x().w()));
                    ghVar.c = pt9Var.f;
                    return ghVar.p();
                } catch (p79 unused) {
                    m0.h("Parsing AesGcmSivKey failed");
                    return null;
                }
            default:
                String str = pt9Var.a;
                Integer num = pt9Var.f;
                if (!str.equals("type.googleapis.com/google.crypto.tink.EciesAeadHkdfPublicKey")) {
                    c6.f(xs1.j("Wrong type URL in call to EciesProtoSerialization.parsePublicKey: ", str));
                    return null;
                }
                try {
                    wx9 wx9VarU = wx9.u(pt9Var.c, f79.a);
                    if (wx9VarU.t() != 0) {
                        throw new GeneralSecurityException("Only version 0 keys are accepted");
                    }
                    cq9 cq9VarB = gr9.b(pt9Var.e, wx9VarU.y());
                    if (!cq9VarB.a.equals(yp9.e)) {
                        return nq9.K(cq9VarB, new ECPoint(wx3.G(wx9VarU.C().w()), wx3.G(wx9VarU.D().w())), num);
                    }
                    if (wx9VarU.D().d() == 0) {
                        return nq9.L(cq9VarB, d2a.a(wx9VarU.C().w()), num);
                    }
                    throw new GeneralSecurityException("Y must be empty for X25519 points");
                } catch (IllegalArgumentException | p79 unused2) {
                    m0.h("Parsing EcdsaPublicKey failed");
                    return null;
                }
        }
    }

    @Override // defpackage.gt9
    public ot9 p(bd9 bd9Var) throws GeneralSecurityException {
        r0a r0aVar;
        switch (this.a) {
            case 0:
                di9 di9Var = (di9) bd9Var;
                lz9 lz9VarT = mz9.t();
                lz9VarT.f("type.googleapis.com/google.crypto.tink.KmsEnvelopeAeadKey");
                lz9VarT.h(ki9.b(di9Var).b());
                ci9 ci9Var = di9Var.a;
                if (ci9.c == ci9Var) {
                    r0aVar = r0a.TINK;
                } else {
                    if (ci9.d != ci9Var) {
                        throw new GeneralSecurityException("Unable to serialize variant: ".concat(String.valueOf(ci9Var)));
                    }
                    r0aVar = r0a.RAW;
                }
                lz9VarT.e(r0aVar);
                return ot9.m((mz9) lz9VarT.b());
            default:
                kg9 kg9Var = (kg9) bd9Var;
                al9.c(kg9Var);
                lz9 lz9VarT2 = mz9.t();
                lz9VarT2.f("type.googleapis.com/google.crypto.tink.AesGcmKey");
                nw9 nw9VarX = ow9.x();
                int i = kg9Var.a;
                nw9VarX.c();
                ((ow9) nw9VarX.b).zze = i;
                lz9VarT2.h(((ow9) nw9VarX.b()).b());
                lz9VarT2.e(al9.b(kg9Var.d));
                return ot9.m((mz9) lz9VarT2.b());
        }
    }
}
