package defpackage;

import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.HashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class nu9 {
    static {
        int i = q0a.a;
        try {
            a();
        } catch (GeneralSecurityException e) {
            throw new ExceptionInInitializerError(e);
        }
    }

    public static void a() throws GeneralSecurityException {
        ys9 ys9Var = ys9.b;
        ys9Var.b(ou9.a);
        ys9Var.a(ou9.b);
        ys9Var.b(fu9.a);
        int i = iu9.f;
        if (!u48.c(i)) {
            m0.h("Can not use HMAC in FIPS-mode, as BoringCrypto module is not available.");
            return;
        }
        ot9 ot9Var = su9.a;
        xs9 xs9Var = xs9.b;
        xs9Var.h(su9.c);
        xs9Var.g(su9.d);
        xs9Var.f(su9.e);
        xs9Var.e(su9.f);
        ys9Var.a(iu9.a);
        ys9Var.a(iu9.b);
        ws9 ws9Var = ws9.b;
        HashMap map = new HashMap();
        map.put("HMAC_SHA256_128BITTAG", pu9.a);
        kc kcVarB = mu9.b();
        kcVarB.b = 32;
        kcVarB.c = 16;
        ku9 ku9Var = ku9.e;
        kcVarB.e = ku9Var;
        lu9 lu9Var = lu9.d;
        kcVarB.d = lu9Var;
        map.put("HMAC_SHA256_128BITTAG_RAW", kcVarB.c());
        kc kcVarB2 = mu9.b();
        kcVarB2.b = 32;
        kcVarB2.c = 32;
        ku9 ku9Var2 = ku9.b;
        kcVarB2.e = ku9Var2;
        kcVarB2.d = lu9Var;
        map.put("HMAC_SHA256_256BITTAG", kcVarB2.c());
        kc kcVarB3 = mu9.b();
        kcVarB3.b = 32;
        kcVarB3.c = 32;
        kcVarB3.e = ku9Var;
        kcVarB3.d = lu9Var;
        map.put("HMAC_SHA256_256BITTAG_RAW", kcVarB3.c());
        kc kcVarB4 = mu9.b();
        kcVarB4.b = 64;
        kcVarB4.c = 16;
        kcVarB4.e = ku9Var2;
        lu9 lu9Var2 = lu9.f;
        kcVarB4.d = lu9Var2;
        map.put("HMAC_SHA512_128BITTAG", kcVarB4.c());
        kc kcVarB5 = mu9.b();
        kcVarB5.b = 64;
        kcVarB5.c = 16;
        kcVarB5.e = ku9Var;
        kcVarB5.d = lu9Var2;
        map.put("HMAC_SHA512_128BITTAG_RAW", kcVarB5.c());
        kc kcVarB6 = mu9.b();
        kcVarB6.b = 64;
        kcVarB6.c = 32;
        kcVarB6.e = ku9Var2;
        kcVarB6.d = lu9Var2;
        map.put("HMAC_SHA512_256BITTAG", kcVarB6.c());
        kc kcVarB7 = mu9.b();
        kcVarB7.b = 64;
        kcVarB7.c = 32;
        kcVarB7.e = ku9Var;
        kcVarB7.d = lu9Var2;
        map.put("HMAC_SHA512_256BITTAG_RAW", kcVarB7.c());
        map.put("HMAC_SHA512_512BITTAG", pu9.b);
        kc kcVarB8 = mu9.b();
        kcVarB8.b = 64;
        kcVarB8.c = 64;
        kcVarB8.e = ku9Var;
        kcVarB8.d = lu9Var2;
        map.put("HMAC_SHA512_512BITTAG_RAW", kcVarB8.c());
        ws9Var.b(Collections.unmodifiableMap(map));
        ts9 ts9Var = ts9.b;
        ts9Var.b(iu9.e, mu9.class);
        vs9.b.a(iu9.d, mu9.class);
        bs9 bs9Var = bs9.d;
        bs9Var.b(iu9.c, i, true);
        if (po9.a()) {
            return;
        }
        bu9 bu9Var = cu9.a;
        if (!u48.e(1)) {
            m0.h("Registering AES CMAC is not supported in FIPS mode");
            return;
        }
        xs9Var.h(qu9.a);
        xs9Var.g(qu9.b);
        xs9Var.f(qu9.c);
        xs9Var.e(qu9.d);
        ts9Var.b(cu9.a, eu9.class);
        ys9Var.a(cu9.b);
        ys9Var.a(cu9.c);
        HashMap map2 = new HashMap();
        eu9 eu9Var = pu9.c;
        map2.put("AES_CMAC", eu9Var);
        map2.put("AES256_CMAC", eu9Var);
        l22 l22VarB = eu9.b();
        l22VarB.r(32);
        l22VarB.s(16);
        l22VarB.d = du9.f;
        map2.put("AES256_CMAC_RAW", l22VarB.q());
        ws9Var.b(Collections.unmodifiableMap(map2));
        bs9Var.c(cu9.d, true);
    }
}
