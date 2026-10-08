package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class i76 {
    public static final h76 Companion = new h76();
    public final int a;
    public final String b;

    public /* synthetic */ i76(int i, int i2, String str) {
        if (3 != (i & 3)) {
            nc8.p0(i, 3, g76.a.d());
            throw null;
        }
        this.a = i2;
        this.b = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof i76)) {
            return false;
        }
        i76 i76Var = (i76) obj;
        return this.a == i76Var.a && pe4.d(this.b, i76Var.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (Integer.hashCode(this.a) * 31);
    }

    public final String toString() {
        return "ProcessData(pid=" + this.a + ", uuid=" + this.b + ')';
    }

    public i76(int i, String str) {
        str.getClass();
        this.a = i;
        this.b = str;
    }
}
