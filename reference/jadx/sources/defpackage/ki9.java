package defpackage;

import java.security.GeneralSecurityException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class ki9 {
    public static final ht9 a;
    public static final ft9 b;
    public static final fs9 c;
    public static final ds9 d;

    static {
        d2a d2aVarC = au9.c("type.googleapis.com/google.crypto.tink.KmsEnvelopeAeadKey");
        a = new ht9(di9.class, new hi9(0));
        b = new ft9(d2aVarC, new ns0(21));
        c = new fs9(ei9.class, new nh4(16));
        d = new ds9(d2aVarC, new q34(17));
    }

    public static di9 a(o0a o0aVar, r0a r0aVar) throws GeneralSecurityException {
        bi9 bi9Var;
        ci9 ci9Var;
        lz9 lz9VarT = mz9.t();
        lz9VarT.f(o0aVar.t().B());
        lz9VarT.h(o0aVar.t().A());
        lz9VarT.e(r0a.RAW);
        bd9 bd9VarT0 = nc8.t0(((mz9) lz9VarT.b()).c());
        boolean z = bd9VarT0 instanceof kg9;
        bi9 bi9Var2 = bi9.n;
        bi9 bi9Var3 = bi9.k;
        bi9 bi9Var4 = bi9.f;
        bi9 bi9Var5 = bi9.d;
        bi9 bi9Var6 = bi9.e;
        bi9 bi9Var7 = bi9.c;
        if (z) {
            bi9Var = bi9Var7;
        } else if (bd9VarT0 instanceof ah9) {
            bi9Var = bi9Var6;
        } else if (bd9VarT0 instanceof ik9) {
            bi9Var = bi9Var5;
        } else if (bd9VarT0 instanceof gf9) {
            bi9Var = bi9Var4;
        } else if (bd9VarT0 instanceof sf9) {
            bi9Var = bi9Var3;
        } else {
            if (!(bd9VarT0 instanceof tg9)) {
                throw new GeneralSecurityException("Unsupported DEK parameters when parsing ".concat(String.valueOf(bd9VarT0)));
            }
            bi9Var = bi9Var2;
        }
        int i = mi9.a[r0aVar.ordinal()];
        if (i == 1) {
            ci9Var = ci9.c;
        } else {
            if (i != 2) {
                throw new GeneralSecurityException(fz5.j(r0aVar.zza(), "Unable to parse OutputPrefixType: "));
            }
            ci9Var = ci9.d;
        }
        String strZ = o0aVar.z();
        se9 se9Var = (se9) bd9VarT0;
        if (strZ == null) {
            m0.h("kekUri must be set");
            return null;
        }
        if (se9Var.a()) {
            m0.h("dekParametersForNewKeys must not have ID Requirements");
            return null;
        }
        if ((bi9Var == bi9Var7 && (se9Var instanceof kg9)) || ((bi9Var == bi9Var6 && (se9Var instanceof ah9)) || ((bi9Var == bi9Var5 && (se9Var instanceof ik9)) || ((bi9Var == bi9Var4 && (se9Var instanceof gf9)) || ((bi9Var == bi9Var3 && (se9Var instanceof sf9)) || (bi9Var == bi9Var2 && (se9Var instanceof tg9))))))) {
            return new di9(ci9Var, strZ, bi9Var, se9Var);
        }
        throw new GeneralSecurityException(eq3.l("Cannot use parsing strategy ", bi9Var.b, " when new keys are picked according to ", String.valueOf(se9Var), "."));
    }

    public static o0a b(di9 di9Var) {
        try {
            mz9 mz9VarU = mz9.u(nc8.u0(di9Var.d), f79.a);
            n0a n0aVarX = o0a.x();
            String str = di9Var.b;
            n0aVarX.c();
            o0a.v((o0a) n0aVarX.b, str);
            n0aVarX.c();
            o0a.w((o0a) n0aVarX.b, mz9VarU);
            return (o0a) n0aVarX.b();
        } catch (p79 e) {
            throw new GeneralSecurityException("Parsing KmsEnvelopeAeadKeyFormat failed: ", e);
        }
    }
}
