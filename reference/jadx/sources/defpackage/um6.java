package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class um6 {
    public final int a;
    public final String b;
    public final String c;

    public um6(int i, String str, String str2) {
        this.a = i;
        this.b = str;
        this.c = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof um6)) {
            return false;
        }
        um6 um6Var = (um6) obj;
        return this.a == um6Var.a && this.b.equals(um6Var.b) && this.c.equals(um6Var.c);
    }

    public final int hashCode() {
        return this.c.hashCode() + fz5.g(Integer.hashCode(this.a) * 31, 31, this.b);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("DetailItem(iconRes=");
        sb.append(this.a);
        sb.append(", title=");
        sb.append(this.b);
        sb.append(", subtitle=");
        return dj7.n(sb, this.c, ")");
    }
}
