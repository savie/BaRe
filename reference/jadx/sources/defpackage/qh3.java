package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class qh3 implements Comparable {
    public int a;
    public int b;

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        qh3 qh3Var = (qh3) obj;
        int i = this.b;
        int i2 = qh3Var.b;
        return i != i2 ? i - i2 : this.a - qh3Var.a;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Order{order=");
        sb.append(this.b);
        sb.append(", index=");
        return eq3.m(sb, this.a, '}');
    }
}
