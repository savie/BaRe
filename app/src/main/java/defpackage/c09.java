package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class c09 implements e09 {
    public static final Object c = new Object();
    public volatile e09 a;
    public volatile Object b;

    /* JADX WARN: Multi-variable type inference failed */
    public static c09 b(d09 d09Var) {
        if (d09Var instanceof c09) {
            return (c09) d09Var;
        }
        c09 c09Var = new c09();
        c09Var.b = c;
        c09Var.a = d09Var;
        return c09Var;
    }

    @Override // defpackage.e09
    public final Object a() {
        Object objA;
        Object obj = this.b;
        Object obj2 = c;
        if (obj != obj2) {
            return obj;
        }
        synchronized (this) {
            try {
                objA = this.b;
                if (objA == obj2) {
                    objA = this.a.a();
                    Object obj3 = this.b;
                    if (obj3 != obj2 && obj3 != objA) {
                        throw new IllegalStateException("Scoped provider was invoked recursively returning different results: " + obj3 + " & " + objA + ". This is likely due to a circular dependency.");
                    }
                    this.b = objA;
                    this.a = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return objA;
    }
}
