package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ex5 {
    public final int a;
    public int b;

    public ex5(int i) {
        if (7 > i) {
            a6.d("Lower bound cannot be greater then upper bound");
            throw null;
        }
        this.a = i;
        this.b = 7;
    }

    public final void a(int i) {
        if (i < 7) {
            l0.a();
        } else if (i <= this.a) {
            this.b = i;
        } else {
            l0.a();
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(16);
        sb.append("[7>");
        sb.append(this.b);
        sb.append('>');
        return eq3.m(sb, this.a, ']');
    }
}
