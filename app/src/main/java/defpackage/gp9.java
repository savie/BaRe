package defpackage;

import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.HashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class gp9 {
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
        ys9Var.b(pe9.d);
        ys9Var.a(pe9.e);
        if (po9.a()) {
            return;
        }
        kt9 kt9Var = xo9.a;
        if (!u48.e(1)) {
            m0.h("Registering AES SIV is not supported in FIPS mode");
            return;
        }
        ht9 ht9Var = lp9.a;
        xs9 xs9Var = xs9.b;
        xs9Var.h(lp9.a);
        xs9Var.g(lp9.b);
        xs9Var.f(lp9.c);
        xs9Var.e(lp9.d);
        ys9Var.a(xo9.a);
        ws9 ws9Var = ws9.b;
        HashMap map = new HashMap();
        map.put("AES256_SIV", ip9.a);
        wc9 wc9VarB = dp9.b();
        wc9VarB.g(64);
        wc9VarB.c = cp9.d;
        map.put("AES256_SIV_RAW", wc9VarB.f());
        ws9Var.b(Collections.unmodifiableMap(map));
        vs9.b.a(xo9.c, dp9.class);
        ts9.b.b(xo9.d, dp9.class);
        bs9.d.c(xo9.b, true);
    }
}
