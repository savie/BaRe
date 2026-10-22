package defpackage;

import java.security.GeneralSecurityException;
import java.util.HashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ts9 {
    public static final ts9 b;
    public final HashMap a = new HashMap();

    static {
        bf9 bf9Var = new bf9(1);
        ts9 ts9Var = new ts9();
        try {
            ts9Var.b(bf9Var, qs9.class);
            b = ts9Var;
        } catch (GeneralSecurityException e) {
            e6.j("unexpected error.", e);
        }
    }

    public final vm4 a(bd9 bd9Var, Integer num) {
        vm4 vm4VarA;
        synchronized (this) {
            as9 as9Var = (as9) this.a.get(bd9Var.getClass());
            if (as9Var == null) {
                throw new GeneralSecurityException("Cannot create a new key for parameters " + String.valueOf(bd9Var) + ": no key creator for this class was registered.");
            }
            vm4VarA = as9Var.a(bd9Var, num);
        }
        return vm4VarA;
    }

    public final synchronized void b(as9 as9Var, Class cls) {
        try {
            as9 as9Var2 = (as9) this.a.get(cls);
            if (as9Var2 != null && !as9Var2.equals(as9Var)) {
                throw new GeneralSecurityException("Different key creator for parameters class " + String.valueOf(cls) + " already inserted");
            }
            this.a.put(cls, as9Var);
        } catch (Throwable th) {
            throw th;
        }
    }
}
