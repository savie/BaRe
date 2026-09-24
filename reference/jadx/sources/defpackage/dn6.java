package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class dn6 {
    public final Object a;
    public final rg5 b;

    public dn6(Object obj) {
        this.a = obj;
        this.b = null;
    }

    public final Object a() throws rg5 {
        rg5 rg5Var = this.b;
        if (rg5Var == null) {
            return this.a;
        }
        throw rg5Var;
    }

    public dn6(rg5 rg5Var) {
        this.a = null;
        this.b = rg5Var;
    }
}
