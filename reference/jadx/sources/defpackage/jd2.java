package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class jd2 implements jl0 {
    public final int a;
    public final String b;

    public jd2(int i, String str) {
        str.getClass();
        this.a = i;
        this.b = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof jd2)) {
            return false;
        }
        jd2 jd2Var = (jd2) obj;
        return this.a == jd2Var.a && pe4.d(this.b, jd2Var.b);
    }

    @Override // defpackage.jl0
    public final jl0 getCopy() {
        String str = this.b;
        str.getClass();
        return new jd2(this.a, str);
    }

    @Override // defpackage.jl0
    public final String getItemId() {
        return String.valueOf(this.a);
    }

    public final int hashCode() {
        return this.b.hashCode() + (Integer.hashCode(this.a) * 31);
    }

    public final String toString() {
        return "DayItem(dayOfWeek=" + this.a + ", title=" + this.b + ")";
    }
}
