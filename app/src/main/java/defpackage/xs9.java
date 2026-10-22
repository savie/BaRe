package defpackage;

import java.security.GeneralSecurityException;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class xs9 {
    public static final xs9 b;
    public final AtomicReference a = new AtomicReference(new ut9(new lj3()));

    static {
        try {
            xs9 xs9Var = new xs9();
            xs9Var.f(new fs9(ns9.class, new nh4(20)));
            b = xs9Var;
        } catch (Exception e) {
            throw new yt9(e);
        }
    }

    public final vm4 a(pt9 pt9Var) {
        ut9 ut9Var = (ut9) this.a.get();
        ut9Var.getClass();
        wt9 wt9Var = new wt9(pt9.class, pt9Var.b);
        HashMap map = ut9Var.b;
        if (map.containsKey(wt9Var)) {
            return ((ds9) map.get(wt9Var)).b.n(pt9Var);
        }
        throw new GeneralSecurityException(eq3.k("No Key Parser for requested key type ", String.valueOf(wt9Var), " available"));
    }

    public final bd9 b(ot9 ot9Var) throws GeneralSecurityException {
        ut9 ut9Var = (ut9) this.a.get();
        ut9Var.getClass();
        wt9 wt9Var = new wt9(ot9.class, (d2a) ot9Var.a);
        HashMap map = ut9Var.d;
        if (map.containsKey(wt9Var)) {
            return ((ft9) map.get(wt9Var)).b.g(ot9Var);
        }
        throw new GeneralSecurityException(eq3.k("No Parameters Parser for requested key type ", String.valueOf(wt9Var), " available"));
    }

    public final vt9 c(vm4 vm4Var) throws GeneralSecurityException {
        ut9 ut9Var = (ut9) this.a.get();
        ut9Var.getClass();
        xt9 xt9Var = new xt9(vm4Var.getClass(), pt9.class);
        HashMap map = ut9Var.a;
        if (map.containsKey(xt9Var)) {
            return ((fs9) map.get(xt9Var)).b.f(vm4Var);
        }
        throw new GeneralSecurityException(eq3.k("No Key serializer for ", String.valueOf(xt9Var), " available"));
    }

    public final vt9 d(bd9 bd9Var) throws GeneralSecurityException {
        ut9 ut9Var = (ut9) this.a.get();
        ut9Var.getClass();
        xt9 xt9Var = new xt9(bd9Var.getClass(), ot9.class);
        HashMap map = ut9Var.c;
        if (map.containsKey(xt9Var)) {
            return ((ht9) map.get(xt9Var)).b.p(bd9Var);
        }
        throw new GeneralSecurityException(eq3.k("No Key Format serializer for ", String.valueOf(xt9Var), " available"));
    }

    public final synchronized void e(ds9 ds9Var) {
        lj3 lj3Var = new lj3((ut9) this.a.get());
        lj3Var.c(ds9Var);
        this.a.set(new ut9(lj3Var));
    }

    public final synchronized void f(fs9 fs9Var) {
        lj3 lj3Var = new lj3((ut9) this.a.get());
        lj3Var.d(fs9Var);
        this.a.set(new ut9(lj3Var));
    }

    public final synchronized void g(ft9 ft9Var) {
        lj3 lj3Var = new lj3((ut9) this.a.get());
        lj3Var.e(ft9Var);
        this.a.set(new ut9(lj3Var));
    }

    public final synchronized void h(ht9 ht9Var) {
        lj3 lj3Var = new lj3((ut9) this.a.get());
        lj3Var.f(ht9Var);
        this.a.set(new ut9(lj3Var));
    }
}
