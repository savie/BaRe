package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ao2 implements ca6 {
    public static final Object c = new Object();
    public volatile w23 a;
    public volatile Object b;

    public static ca6 a(w23 w23Var) {
        if (w23Var instanceof ao2) {
            return w23Var;
        }
        ao2 ao2Var = new ao2();
        ao2Var.b = c;
        ao2Var.a = w23Var;
        return ao2Var;
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
        }
        return obj;
    }
}
