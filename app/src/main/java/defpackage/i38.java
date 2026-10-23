package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class i38 {
    public static final g38 Companion = new g38();
    public final long a;
    public final long b;
    public final long c;

    public /* synthetic */ i38(int i, long j, long j2, long j3) {
        if (1 != (i & 1)) {
            nc8.p0(i, 1, f38.a.d());
            throw null;
        }
        this.a = j;
        this.b = (i & 2) == 0 ? j * 1000 : j2;
        if ((i & 4) == 0) {
            this.c = j / 1000;
        } else {
            this.c = j3;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof i38) && this.a == ((i38) obj).a;
    }

    public final int hashCode() {
        return Long.hashCode(this.a);
    }

    public final String toString() {
        return "Time(ms=" + this.a + ')';
    }

    public i38(long j) {
        this.a = j;
        this.b = j * 1000;
        this.c = j / 1000;
    }
}
