package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class zd4 {
    public final int a;
    public final String b;
    public final int c;

    public zd4(int i, String str) {
        if (i == 0) {
            f6.n("Null type");
            throw null;
        }
        this.a = i;
        this.b = str;
        this.c = ((dj7.A(i) ^ 1000003) * 1000003) ^ str.hashCode();
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zd4)) {
            return false;
        }
        zd4 zd4Var = (zd4) obj;
        return dj7.a(this.a, zd4Var.a) && this.b.equals(zd4Var.b);
    }

    public final int hashCode() {
        return this.c;
    }

    public final String toString() {
        return this.b;
    }
}
