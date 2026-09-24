package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class jp2 implements jl0 {
    public final String a;
    public final String b;
    public final String c;
    public final int d;
    public final boolean e;
    public final boolean f;
    public final bt3 k;

    public /* synthetic */ jp2(String str, String str2, String str3, int i, boolean z, bt3 bt3Var, int i2) {
        this(str, (i2 & 2) != 0 ? null : str2, (i2 & 4) != 0 ? null : str3, i, (i2 & 16) != 0 ? false : z, (i2 & 32) == 0, bt3Var);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof jp2)) {
            return false;
        }
        jp2 jp2Var = (jp2) obj;
        return pe4.d(this.a, jp2Var.a) && pe4.d(this.b, jp2Var.b) && pe4.d(this.c, jp2Var.c) && this.d == jp2Var.d && this.e == jp2Var.e && this.f == jp2Var.f && pe4.d(this.k, jp2Var.k);
    }

    @Override // defpackage.jl0
    public final jl0 getCopy() {
        String str = this.a;
        str.getClass();
        bt3 bt3Var = this.k;
        bt3Var.getClass();
        return new jp2(str, this.b, this.c, this.d, this.e, this.f, bt3Var);
    }

    @Override // defpackage.jl0
    public final String getItemId() {
        return this.a;
    }

    public final int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        String str = this.b;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.c;
        return this.k.hashCode() + fz5.h(fz5.h(eq3.d(this.d, (iHashCode2 + (str2 != null ? str2.hashCode() : 0)) * 31, 31), 31, this.e), 31, this.f);
    }

    public final String toString() {
        StringBuilder sbP = u48.p("DrawerItem(title=", this.a, ", subtitle=", this.b, ", subtitle2=");
        sbP.append(this.c);
        sbP.append(", iconRes=");
        sbP.append(this.d);
        sbP.append(", isRootOrShizukuNeeded=");
        sbP.append(this.e);
        sbP.append(", showTopDivider=");
        sbP.append(this.f);
        sbP.append(", onClick=");
        sbP.append(this.k);
        sbP.append(")");
        return sbP.toString();
    }

    public jp2(String str, String str2, String str3, int i, boolean z, boolean z2, bt3 bt3Var) {
        str.getClass();
        bt3Var.getClass();
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = i;
        this.e = z;
        this.f = z2;
        this.k = bt3Var;
    }
}
