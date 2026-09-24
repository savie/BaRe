package defpackage;

import java.io.Serializable;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class gs4 implements au3, Serializable {
    private final int arity;

    public gs4(int i) {
        this.arity = i;
    }

    @Override // defpackage.au3
    public int getArity() {
        return this.arity;
    }

    public String toString() {
        ph6.a.getClass();
        return qh6.a(this);
    }
}
