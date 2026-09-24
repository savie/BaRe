package defpackage;

import java.security.GeneralSecurityException;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ys9 {
    public static final ys9 b = new ys9();
    public final AtomicReference a = new AtomicReference(new lt9(new la(14)));

    public final synchronized void a(kt9 kt9Var) {
        la laVar = new la((lt9) this.a.get());
        laVar.l(kt9Var);
        this.a.set(new lt9(laVar));
    }

    public final synchronized void b(nt9 nt9Var) {
        la laVar = new la((lt9) this.a.get());
        HashMap map = (HashMap) laVar.b;
        Class clsZza = nt9Var.zza();
        if (map.containsKey(clsZza)) {
            nt9 nt9Var2 = (nt9) map.get(clsZza);
            if (!nt9Var2.equals(nt9Var) || !nt9Var.equals(nt9Var2)) {
                throw new GeneralSecurityException("Attempt to register non-equal PrimitiveWrapper object or input class object for already existing object of type".concat(String.valueOf(clsZza)));
            }
        } else {
            map.put(clsZza, nt9Var);
        }
        this.a.set(new lt9(laVar));
    }
}
