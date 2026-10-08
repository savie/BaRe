package defpackage;

import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class em4 {
    public abstract Class b();

    public boolean c(c87 c87Var, Object obj) {
        return false;
    }

    public boolean d() {
        return this instanceof of8;
    }

    public abstract void e(Object obj, fk4 fk4Var, c87 c87Var);

    public void f(Object obj, fk4 fk4Var, c87 c87Var, rc8 rc8Var) throws ag4 {
        Class<?> clsB = b();
        if (clsB == null) {
            clsB = obj.getClass();
        }
        c87Var.A(clsB, eq3.l("Type id handling not implemented for type ", clsB.getName(), " (by serializer of type ", getClass().getName(), ")"));
        throw null;
    }

    public boolean h() {
        return false;
    }

    public em4 g(fk5 fk5Var) {
        return this;
    }

    public em4 i(Set set) {
        return this;
    }
}
