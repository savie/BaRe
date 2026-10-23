package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class j56 implements jl0 {
    public final int a;
    public final String b;
    public final String c;
    public final String d;
    public final String e;
    public final mt3 f;

    public /* synthetic */ j56(int i, String str, String str2, String str3, w20 w20Var, int i2) {
        this(i, str, str2, (i2 & 8) != 0 ? null : str3, (i2 & 16) != 0 ? null : "https://www.swiftapps.org/configs", (i2 & 32) != 0 ? null : w20Var);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof j56)) {
            return false;
        }
        j56 j56Var = (j56) obj;
        return this.a == j56Var.a && pe4.d(this.b, j56Var.b) && pe4.d(this.c, j56Var.c) && pe4.d(this.d, j56Var.d) && pe4.d(this.e, j56Var.e) && pe4.d(this.f, j56Var.f);
    }

    @Override // defpackage.jl0
    public final jl0 getCopy() {
        String str = this.b;
        str.getClass();
        return new j56(this.a, str, this.c, this.d, this.e, this.f);
    }

    @Override // defpackage.jl0
    public final String getItemId() {
        return this.b;
    }

    public final int hashCode() {
        int iG = fz5.g(Integer.hashCode(this.a) * 31, 31, this.b);
        String str = this.c;
        int iHashCode = (iG + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.d;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.e;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        mt3 mt3Var = this.f;
        return iHashCode3 + (mt3Var != null ? mt3Var.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("PremiumFeatureItem(iconRes=");
        sb.append(this.a);
        sb.append(", title=");
        sb.append(this.b);
        sb.append(", subtitle=");
        xs1.t(sb, this.c, ", highlightMessage=", this.d, ", link=");
        sb.append(this.e);
        sb.append(", setRecyclerViewItems=");
        sb.append(this.f);
        sb.append(")");
        return sb.toString();
    }

    public j56(int i, String str, String str2, String str3, String str4, mt3 mt3Var) {
        str.getClass();
        this.a = i;
        this.b = str;
        this.c = str2;
        this.d = str3;
        this.e = str4;
        this.f = mt3Var;
    }
}
