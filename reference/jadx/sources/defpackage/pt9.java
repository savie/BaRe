package defpackage;

import java.security.GeneralSecurityException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class pt9 implements vt9 {
    public final String a;
    public final d2a b;
    public final t69 c;
    public final int d;
    public final r0a e;
    public final Integer f;

    public pt9(String str, d2a d2aVar, t69 t69Var, int i, r0a r0aVar, Integer num) {
        this.a = str;
        this.b = d2aVar;
        this.c = t69Var;
        this.d = i;
        this.e = r0aVar;
        this.f = num;
    }

    public static pt9 a(String str, t69 t69Var, int i, r0a r0aVar, Integer num) throws GeneralSecurityException {
        if (r0aVar == r0a.RAW) {
            if (num != null) {
                m0.h("Keys with output prefix type raw should not have an id requirement.");
                return null;
            }
        } else if (num == null) {
            m0.h("Keys with output prefix type different from raw should have an id requirement.");
            return null;
        }
        return new pt9(str, au9.a(str), t69Var, i, r0aVar, num);
    }
}
