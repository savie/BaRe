package defpackage;

import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class t15 implements Iterable, bo4 {
    public final long a;
    public final long b;
    public final long c;

    public t15(long j, long j2) {
        this.a = j;
        if (j < j2) {
            long j3 = j2 % 1;
            long j4 = j % 1;
            long j5 = ((j3 < 0 ? j3 + 1 : j3) - (j4 < 0 ? j4 + 1 : j4)) % 1;
            j2 -= j5 < 0 ? j5 + 1 : j5;
        }
        this.b = j2;
        this.c = 1L;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof t15)) {
            return false;
        }
        long j = this.a;
        long j2 = this.b;
        if (j > j2) {
            t15 t15Var = (t15) obj;
            if (t15Var.a > t15Var.b) {
                return true;
            }
        }
        t15 t15Var2 = (t15) obj;
        return j == t15Var2.a && j2 == t15Var2.b;
    }

    public final int hashCode() {
        long j = this.a;
        long j2 = this.b;
        if (j > j2) {
            return -1;
        }
        return (int) ((31 * (j ^ (j >>> 32))) + ((j2 >>> 32) ^ j2));
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return new s15(this.a, this.b, this.c);
    }

    public final String toString() {
        return this.a + ".." + this.b;
    }
}
