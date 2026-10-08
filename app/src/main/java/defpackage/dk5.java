package defpackage;

import java.io.Serializable;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class dk5 extends fk5 implements Serializable {
    public final fk5 b;
    public final fk5 c;

    public dk5(fk5 fk5Var, fk5 fk5Var2) {
        this.b = fk5Var;
        this.c = fk5Var2;
    }

    @Override // defpackage.fk5
    public final String a(String str) {
        return this.b.a(this.c.a(str));
    }

    public final String toString() {
        return "[ChainedTransformer(" + this.b + ", " + this.c + ")]";
    }
}
