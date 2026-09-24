package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class sc6 {
    public static final sc6 d = new sc6(0, 0);
    public final /* synthetic */ int a = 1;
    public int b;
    public int c;

    public sc6(int i) {
        if (!(i >= 0)) {
            c6.f("lowerBound cannot be greater than upperBound");
            throw null;
        }
        this.b = i;
        this.c = 0;
    }

    public boolean a() {
        return this.c >= this.b;
    }

    public void b(int i) {
        int i2 = this.b;
        if (!(i >= 0)) {
            c6.f(xs1.h(i, "pos: ", " < lowerBound: 0"));
            return;
        }
        if (i <= i2) {
            this.c = i;
        } else {
            c6.f(dj7.i("pos: ", i, i2, " > upperBound: "));
        }
    }

    public String toString() {
        switch (this.a) {
            case 0:
                StringBuilder sb = new StringBuilder();
                sb.append(sc6.class.getSimpleName());
                sb.append("[position = ");
                sb.append(this.b);
                sb.append(", length = ");
                return xs1.m(sb, this.c, "]");
            case 1:
            default:
                return super.toString();
            case 2:
                StringBuilder sb2 = new StringBuilder("[0>");
                sb2.append(this.c);
                sb2.append('>');
                return eq3.m(sb2, this.b, ']');
        }
    }

    public /* synthetic */ sc6() {
    }

    public sc6(int i, int i2) {
        this.b = i;
        this.c = i2;
    }
}
