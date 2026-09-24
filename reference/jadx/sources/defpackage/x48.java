package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class x48 extends qb6 {
    public final StringBuilder c;

    public x48() {
        super(4);
        this.c = new StringBuilder();
    }

    @Override // defpackage.qb6
    public final qb6 f() {
        qb6.g(this.c);
        return this;
    }

    public final String toString() {
        return "<!--" + this.c.toString() + "-->";
    }
}
