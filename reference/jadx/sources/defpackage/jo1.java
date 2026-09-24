package defpackage;

import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public interface jo1 {
    default Set a(nc6 nc6Var) {
        return (Set) d(nc6Var).get();
    }

    default Object b(Class cls) {
        return g(nc6.a(cls));
    }

    default ga6 c(Class cls) {
        return f(nc6.a(cls));
    }

    ga6 d(nc6 nc6Var);

    lu5 e(nc6 nc6Var);

    ga6 f(nc6 nc6Var);

    default Object g(nc6 nc6Var) {
        ga6 ga6VarF = f(nc6Var);
        if (ga6VarF == null) {
            return null;
        }
        return ga6VarF.get();
    }

    default lu5 h(Class cls) {
        return e(nc6.a(cls));
    }
}
