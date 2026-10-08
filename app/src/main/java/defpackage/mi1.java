package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class mi1 {
    public final int a;
    public final String b;
    public final int c;

    public mi1(int i, int i2, String str) {
        str.getClass();
        this.a = i;
        this.b = str;
        this.c = i2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof mi1)) {
            return false;
        }
        mi1 mi1Var = (mi1) obj;
        return this.a == mi1Var.a && pe4.d(this.b, mi1Var.b) && this.c == mi1Var.c;
    }

    public final int hashCode() {
        return Integer.hashCode(this.c) + fz5.g(Integer.hashCode(this.a) * 31, 31, this.b);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("CloudProviderPresetDetails(labelRes=");
        sb.append(this.a);
        sb.append(", title=");
        sb.append(this.b);
        sb.append(", iconRes=");
        return xs1.m(sb, this.c, ")");
    }
}
