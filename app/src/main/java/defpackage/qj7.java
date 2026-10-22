package defpackage;

import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public interface qj7 extends va4 {
    static r86 b(rj7 rj7Var) {
        if (rj7Var != null) {
            return !rj7Var.isValid() ? r86.b : new r86(rj7Var);
        }
        Logger logger = vi8.a;
        vi8.a("context is null", Level.FINEST);
        return r86.b;
    }

    static qj7 c(t40 t40Var) {
        if (t40Var != null) {
            qj7 qj7Var = (qj7) t40Var.b(x13.c);
            return qj7Var == null ? r86.b : qj7Var;
        }
        Logger logger = vi8.a;
        vi8.a("context is null", Level.FINEST);
        return r86.b;
    }

    static qj7 current() {
        qj7 qj7Var = (qj7) t40.a().b(x13.c);
        return qj7Var == null ? r86.b : qj7Var;
    }

    @Override // defpackage.va4
    default t40 a(t40 t40Var) {
        return t40Var.c(x13.c, this);
    }

    rj7 getSpanContext();
}
