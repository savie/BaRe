package defpackage;

import java.io.Serializable;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class ye9 implements Serializable, xe9 {
    public final xe9 a;
    public volatile transient boolean b;
    public transient Object c;

    public ye9(xe9 xe9Var) {
        this.a = xe9Var;
    }

    public final String toString() {
        return eq3.k("Suppliers.memoize(", (this.b ? eq3.k("<supplier that returned ", String.valueOf(this.c), ">") : this.a).toString(), ")");
    }

    @Override // defpackage.xe9
    public final Object zza() {
        if (!this.b) {
            synchronized (this) {
                try {
                    if (!this.b) {
                        Object objZza = this.a.zza();
                        this.c = objZza;
                        this.b = true;
                        return objZza;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.c;
    }
}
