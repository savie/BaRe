package defpackage;

import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class qi4 {
    public abstract Object a(bn4 bn4Var);

    public final Object b(String str) {
        nw0 nw0Var = new nw0();
        nw0Var.Z(str);
        bn4 bn4Var = new bn4(nw0Var);
        Object objA = a(bn4Var);
        if (bn4Var.W() == 10) {
            return objA;
        }
        throw new lj4("JSON document was not fully consumed.");
    }

    public final pp5 c() {
        return this instanceof pp5 ? (pp5) this : new pp5(this);
    }

    public final String d(Object obj) {
        nw0 nw0Var = new nw0();
        try {
            e(new dn4(nw0Var), obj);
            return nw0Var.v();
        } catch (IOException e) {
            e6.e(e);
            return null;
        }
    }

    public abstract void e(dn4 dn4Var, Object obj);
}
