package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class he1 {
    public final String a;
    public final rd1 b;
    public final String c;
    public final Long d;
    public final boolean e;
    public final boolean f;

    public he1(String str, rd1 rd1Var, String str2, Long l, boolean z, boolean z2) {
        rd1Var.getClass();
        this.a = str;
        this.b = rd1Var;
        this.c = str2;
        this.d = l;
        this.e = z;
        this.f = z2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof he1)) {
            return false;
        }
        he1 he1Var = (he1) obj;
        return this.a.equals(he1Var.a) && this.b == he1Var.b && pe4.d(this.c, he1Var.c) && pe4.d(this.d, he1Var.d) && this.e == he1Var.e && this.f == he1Var.f;
    }

    public final int hashCode() {
        int iHashCode = (this.b.hashCode() + (this.a.hashCode() * 31)) * 31;
        String str = this.c;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        Long l = this.d;
        return Boolean.hashCode(this.f) + fz5.h((iHashCode2 + (l != null ? l.hashCode() : 0)) * 31, 31, this.e);
    }

    public final String toString() {
        return "ResultRow(title=" + this.a + ", status=" + this.b + ", detail=" + this.c + ", durationMillis=" + this.d + ", isSelected=" + this.e + ", isAvailable=" + this.f + ")";
    }
}
