package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class bo2 implements ea6 {
    public static final Object c = new Object();
    public volatile z23 a;
    public volatile Object b;

    public static ea6 a(z23 z23Var) {
        if (z23Var instanceof bo2) {
            return z23Var;
        }
        bo2 bo2Var = new bo2();
        bo2Var.b = c;
        bo2Var.a = z23Var;
        return bo2Var;
    }

    @Override // defpackage.ea6
    public final Object get() {
        Object obj;
        Object obj2 = this.b;
        Object obj3 = c;
        if (obj2 != obj3) {
            return obj2;
        }
        synchronized (this) {
            try {
                obj = this.b;
                if (obj == obj3) {
                    obj = this.a.get();
                    Object obj4 = this.b;
                    if (obj4 != obj3 && obj4 != obj) {
                        throw new IllegalStateException("Scoped provider was invoked recursively returning different results: " + obj4 + " & " + obj + ". This is likely due to a circular dependency.");
                    }
                    this.b = obj;
                    this.a = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return obj;
    }
}
