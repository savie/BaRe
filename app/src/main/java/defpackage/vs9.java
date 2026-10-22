package defpackage;

import java.security.GeneralSecurityException;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class vs9 {
    public static final vs9 b = new vs9();
    public final ConcurrentHashMap a = new ConcurrentHashMap();

    public final void a(us9 us9Var, Class cls) throws GeneralSecurityException {
        us9 us9Var2 = (us9) this.a.putIfAbsent(cls, us9Var);
        if (us9Var2 == null || us9Var2.equals(us9Var)) {
            return;
        }
        m0.h("Different key creator for parameters class already inserted");
    }
}
