package defpackage;

import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class y41 implements Iterable, bo4 {
    public final char a;
    public final char b;
    public final int c = 1;

    static {
        new y41((char) 1, (char) 0);
    }

    public y41(char c, char c2) {
        this.a = c;
        this.b = (char) iz1.n(c, c2, 1);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof y41)) {
            return false;
        }
        char c = this.a;
        char c2 = this.b;
        if (pe4.f(c, c2) > 0) {
            y41 y41Var = (y41) obj;
            if (pe4.f(y41Var.a, y41Var.b) > 0) {
                return true;
            }
        }
        y41 y41Var2 = (y41) obj;
        return c == y41Var2.a && c2 == y41Var2.b;
    }

    public final int hashCode() {
        char c = this.a;
        char c2 = this.b;
        if (pe4.f(c, c2) > 0) {
            return -1;
        }
        return (c * 31) + c2;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return new x41(this.a, this.b, this.c);
    }

    public final String toString() {
        return this.a + ".." + this.b;
    }
}
