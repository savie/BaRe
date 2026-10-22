package defpackage;

import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.HashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class he9 {
    static {
        int i = q0a.a;
        try {
            a();
        } catch (GeneralSecurityException e) {
            throw new ExceptionInInitializerError(e);
        }
    }

    public static void a() {
        ys9 ys9Var = ys9.b;
        ys9Var.b(pe9.b);
        ys9Var.a(pe9.c);
        nu9.a();
        int i = ze9.e;
        if (!u48.c(i)) {
            m0.h("Can not use AES-CTR-HMAC in FIPS-mode, as BoringCrypto module is not available.");
            return;
        }
        ht9 ht9Var = mk9.a;
        xs9 xs9Var = xs9.b;
        xs9Var.h(mk9.a);
        xs9Var.g(mk9.b);
        xs9Var.f(mk9.c);
        xs9Var.e(mk9.d);
        ys9Var.a(ze9.a);
        ws9 ws9Var = ws9.b;
        HashMap map = new HashMap();
        map.put("AES128_CTR_HMAC_SHA256", qi9.e);
        fm1 fm1VarB = gf9.b();
        fm1VarB.d(16);
        fm1VarB.e(32);
        fm1VarB.g(16);
        fm1VarB.f(16);
        ff9 ff9Var = ff9.e;
        fm1VarB.a = ff9Var;
        ef9 ef9Var = ef9.e;
        fm1VarB.f = ef9Var;
        map.put("AES128_CTR_HMAC_SHA256_RAW", fm1VarB.c());
        map.put("AES256_CTR_HMAC_SHA256", qi9.f);
        fm1 fm1VarB2 = gf9.b();
        fm1VarB2.d(32);
        fm1VarB2.e(32);
        fm1VarB2.g(32);
        fm1VarB2.f(16);
        fm1VarB2.a = ff9Var;
        fm1VarB2.f = ef9Var;
        map.put("AES256_CTR_HMAC_SHA256_RAW", fm1VarB2.c());
        ws9Var.b(Collections.unmodifiableMap(map));
        vs9 vs9Var = vs9.b;
        vs9Var.a(ze9.c, gf9.class);
        ts9 ts9Var = ts9.b;
        ts9Var.b(ze9.d, gf9.class);
        bs9 bs9Var = bs9.d;
        bs9Var.b(ze9.b, i, true);
        int i2 = dg9.e;
        if (!u48.c(i2)) {
            m0.h("Can not use AES-GCM in FIPS-mode, as BoringCrypto module is not available.");
            return;
        }
        xs9Var.h(al9.a);
        xs9Var.g(al9.b);
        xs9Var.f(al9.c);
        xs9Var.e(al9.d);
        ys9Var.a(dg9.a);
        HashMap map2 = new HashMap();
        map2.put("AES128_GCM", qi9.a);
        bs2 bs2VarB = kg9.b();
        bs2VarB.l();
        bs2VarB.m(16);
        bs2VarB.n();
        ig9 ig9Var = ig9.e;
        bs2VarB.e = ig9Var;
        map2.put("AES128_GCM_RAW", bs2VarB.k());
        map2.put("AES256_GCM", qi9.b);
        bs2 bs2VarB2 = kg9.b();
        bs2VarB2.l();
        bs2VarB2.m(32);
        bs2VarB2.n();
        bs2VarB2.e = ig9Var;
        map2.put("AES256_GCM_RAW", bs2VarB2.k());
        ws9Var.b(Collections.unmodifiableMap(map2));
        vs9Var.a(dg9.c, kg9.class);
        ts9Var.b(dg9.d, kg9.class);
        bs9Var.b(dg9.b, i2, true);
        if (po9.a()) {
            return;
        }
        kt9 kt9Var = pf9.a;
        if (!u48.e(1)) {
            m0.h("Registering AES EAX is not supported in FIPS mode");
            return;
        }
        xs9Var.h(sk9.a);
        xs9Var.g(sk9.b);
        xs9Var.f(sk9.c);
        xs9Var.e(sk9.d);
        ys9Var.a(pf9.a);
        HashMap map3 = new HashMap();
        map3.put("AES128_EAX", qi9.c);
        ju7 ju7VarB = sf9.b();
        ju7VarB.j(16);
        ju7VarB.k(16);
        ju7VarB.l();
        rf9 rf9Var = rf9.e;
        ju7VarB.e = rf9Var;
        map3.put("AES128_EAX_RAW", ju7VarB.i());
        map3.put("AES256_EAX", qi9.d);
        ju7 ju7VarB2 = sf9.b();
        ju7VarB2.j(16);
        ju7VarB2.k(32);
        ju7VarB2.l();
        ju7VarB2.e = rf9Var;
        map3.put("AES256_EAX_RAW", ju7VarB2.i());
        ws9Var.b(Collections.unmodifiableMap(map3));
        ts9Var.b(pf9.c, sf9.class);
        bs9Var.c(pf9.b, true);
        kt9 kt9Var2 = ng9.a;
        if (!u48.e(1)) {
            m0.h("Registering AES GCM SIV is not supported in FIPS mode");
            return;
        }
        xs9Var.h(sl9.a);
        xs9Var.g(sl9.b);
        xs9Var.f(sl9.c);
        xs9Var.e(sl9.d);
        HashMap map4 = new HashMap();
        cd cdVarB = tg9.b();
        cdVarB.o(16);
        sg9 sg9Var = sg9.c;
        cdVarB.c = sg9Var;
        map4.put("AES128_GCM_SIV", cdVarB.n());
        cd cdVarB2 = tg9.b();
        cdVarB2.o(16);
        sg9 sg9Var2 = sg9.e;
        cdVarB2.c = sg9Var2;
        map4.put("AES128_GCM_SIV_RAW", cdVarB2.n());
        cd cdVarB3 = tg9.b();
        cdVarB3.o(32);
        cdVarB3.c = sg9Var;
        map4.put("AES256_GCM_SIV", cdVarB3.n());
        cd cdVarB4 = tg9.b();
        cdVarB4.o(32);
        cdVarB4.c = sg9Var2;
        map4.put("AES256_GCM_SIV_RAW", cdVarB4.n());
        ws9Var.b(Collections.unmodifiableMap(map4));
        vs9Var.a(ng9.c, tg9.class);
        ts9Var.b(ng9.b, tg9.class);
        ys9Var.a(ng9.a);
        bs9Var.c(ng9.d, true);
        kt9 kt9Var3 = zg9.a;
        if (!u48.e(1)) {
            m0.h("Registering ChaCha20Poly1305 is not supported in FIPS mode");
            return;
        }
        xs9Var.h(pm9.a);
        xs9Var.g(pm9.b);
        xs9Var.f(pm9.c);
        xs9Var.e(pm9.d);
        ys9Var.a(zg9.a);
        ts9Var.b(zg9.b, ah9.class);
        HashMap map5 = new HashMap();
        map5.put("CHACHA20_POLY1305", new ah9(ef9.f));
        map5.put("CHACHA20_POLY1305_RAW", new ah9(ef9.n));
        ws9Var.b(Collections.unmodifiableMap(map5));
        bs9Var.c(zg9.c, true);
        kt9 kt9Var4 = ch9.a;
        if (!u48.e(1)) {
            m0.h("Registering KMS AEAD is not supported in FIPS mode");
            return;
        }
        xs9Var.h(wh9.a);
        xs9Var.g(wh9.b);
        xs9Var.f(wh9.c);
        xs9Var.e(wh9.d);
        ys9Var.a(ch9.a);
        ts9Var.b(ch9.c, mh9.class);
        bs9Var.c(ch9.b, true);
        gs9 gs9Var = jh9.a;
        if (!u48.e(1)) {
            m0.h("Registering KMS Envelope AEAD is not supported in FIPS mode");
            return;
        }
        xs9Var.h(ki9.a);
        xs9Var.g(ki9.b);
        xs9Var.f(ki9.c);
        xs9Var.e(ki9.d);
        ts9Var.b(jh9.b, di9.class);
        ys9Var.a(jh9.c);
        bs9Var.c(jh9.a, true);
        kt9 kt9Var5 = ak9.a;
        if (!u48.e(1)) {
            m0.h("Registering XChaCha20Poly1305 is not supported in FIPS mode");
            return;
        }
        xs9Var.h(ao9.a);
        xs9Var.g(ao9.b);
        xs9Var.f(ao9.c);
        xs9Var.e(ao9.d);
        ys9Var.a(ak9.a);
        HashMap map6 = new HashMap();
        map6.put("XCHACHA20_POLY1305", new ik9(sg9.f));
        map6.put("XCHACHA20_POLY1305_RAW", new ik9(sg9.h));
        ws9Var.b(Collections.unmodifiableMap(map6));
        ts9Var.b(ak9.d, ik9.class);
        vs9Var.a(ak9.c, ik9.class);
        bs9Var.c(ak9.b, true);
        xs9Var.h(tn9.a);
        xs9Var.g(tn9.b);
        xs9Var.f(tn9.c);
        xs9Var.e(tn9.d);
        HashMap map7 = new HashMap();
        map7.put("XAES_256_GCM_192_BIT_NONCE", qi9.g);
        map7.put("XAES_256_GCM_192_BIT_NONCE_NO_PREFIX", qi9.h);
        map7.put("XAES_256_GCM_160_BIT_NONCE_NO_PREFIX", qi9.i);
        map7.put("X_AES_GCM_8_BYTE_SALT_NO_PREFIX", qi9.j);
        ws9Var.b(Collections.unmodifiableMap(map7));
        ys9Var.a(iz1.f);
        ts9Var.b(iz1.e, xj9.class);
    }
}
