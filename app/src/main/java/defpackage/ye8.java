package defpackage;

import java.io.Serializable;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ye8 implements os4, Serializable {
    public bt3 a;
    public Object b;

    @Override // defpackage.os4
    public final Object getValue() {
        if (this.b == sl4.e) {
            bt3 bt3Var = this.a;
            bt3Var.getClass();
            this.b = bt3Var.invoke();
            this.a = null;
        }
        return this.b;
    }

    public final String toString() {
        return this.b != sl4.e ? String.valueOf(getValue()) : "Lazy value not initialized yet.";
    }
}
