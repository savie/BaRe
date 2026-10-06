package defpackage;

import java.security.GeneralSecurityException;
import java.util.concurrent.ConcurrentHashMap;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class bs9 {
    public static final Logger c = Logger.getLogger(bs9.class.getName());
    public static final bs9 d;
    public ConcurrentHashMap a;
    public ConcurrentHashMap b;

    static {
        bs9 bs9Var = new bs9();
        bs9Var.a = new ConcurrentHashMap();
        bs9Var.b = new ConcurrentHashMap();
        d = bs9Var;
    }

    public final gs9 a(String str) {
        gs9 gs9Var;
        synchronized (this) {
            if (!this.a.containsKey(str)) {
                throw new GeneralSecurityException("No key manager found for key type " + str + ", see https://developers.google.com/tink/faq/registration_errors");
            }
            gs9Var = (gs9) this.a.get(str);
        }
        return gs9Var;
    }

    public final synchronized void b(gs9 gs9Var, int i, boolean z) {
        try {
            if (!(i != 1 ? u48.c(i) : u48.e(i))) {
                throw new GeneralSecurityException("Cannot register key manager: FIPS compatibility insufficient");
            }
            d(gs9Var, z);
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void c(gs9 gs9Var, boolean z) {
        b(gs9Var, 1, z);
    }

    public final synchronized void d(gs9 gs9Var, boolean z) {
        try {
            String str = gs9Var.a;
            if (z && this.b.containsKey(str) && !((Boolean) this.b.get(str)).booleanValue()) {
                throw new GeneralSecurityException("New keys are already disallowed for key type ".concat(str));
            }
            gs9 gs9Var2 = (gs9) this.a.get(str);
            if (gs9Var2 != null && !gs9Var2.getClass().equals(gs9Var.getClass())) {
                c.logp(Level.WARNING, "com.google.crypto.tink.internal.KeyManagerRegistry", "insertKeyManager", "Attempted overwrite of a registered key manager for key type ".concat(str));
                throw new GeneralSecurityException("typeUrl (" + str + ") is already registered with " + gs9Var2.getClass().getName() + ", cannot be re-registered with " + gs9Var.getClass().getName());
            }
            this.a.putIfAbsent(str, gs9Var);
            this.b.put(str, Boolean.valueOf(z));
        } catch (Throwable th) {
            throw th;
        }
    }
}
