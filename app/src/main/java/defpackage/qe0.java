package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class qe0 {
    public final pe0 a;
    public Object b;

    public qe0(pe0 pe0Var, Object obj) {
        this.a = pe0Var;
        this.b = obj;
    }

    public abstract void a(jw0 jw0Var);

    public final String toString() {
        return "AvPair{avId=" + this.a.name() + ", value=" + this.b + '}';
    }

    public qe0(pe0 pe0Var) {
        this.a = pe0Var;
    }
}
