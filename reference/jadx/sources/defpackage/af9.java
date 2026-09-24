package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class af9 implements xe9 {
    public volatile xe9 a;
    public Object b;

    public final String toString() {
        Object objK = this.a;
        if (objK == sl4.f) {
            objK = eq3.k("<supplier that returned ", String.valueOf(this.b), ">");
        }
        return eq3.k("Suppliers.memoize(", String.valueOf(objK), ")");
    }

    @Override // defpackage.xe9
    public final Object zza() {
        xe9 xe9Var = this.a;
        sl4 sl4Var = sl4.f;
        if (xe9Var != sl4Var) {
            synchronized (this) {
                try {
                    if (this.a != sl4Var) {
                        Object objZza = this.a.zza();
                        this.b = objZza;
                        this.a = sl4Var;
                        return objZza;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.b;
    }
}
