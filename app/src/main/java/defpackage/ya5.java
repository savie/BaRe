package defpackage;

import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class ya5 {
    public final int a;
    public final long b;
    public final int c;
    public final List d;

    public ya5(int i, long j, int i2, List list) {
        this.a = i;
        this.b = j;
        this.c = i2;
        this.d = list;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ya5)) {
            return false;
        }
        ya5 ya5Var = (ya5) obj;
        return this.a == ya5Var.a && this.b == ya5Var.b && this.c == ya5Var.c && this.d.equals(ya5Var.d);
    }

    public final int hashCode() {
        return this.d.hashCode() + eq3.d(this.c, xs1.f(this.b, Integer.hashCode(this.a) * 31, 31), 31);
    }

    public final String toString() {
        return "DownloadRequest(index=" + this.a + ", position=" + this.b + ", size=" + this.c + ", chunks=" + this.d + ")";
    }
}
