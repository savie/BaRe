package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class q7 implements jl0 {
    public final int a;
    public final Integer b;
    public final String c;
    public final Integer d;

    public q7(int i, Integer num, String str, Integer num2) {
        this.a = i;
        this.b = num;
        this.c = str;
        this.d = num2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof q7)) {
            return false;
        }
        q7 q7Var = (q7) obj;
        return this.a == q7Var.a && pe4.d(this.b, q7Var.b) && pe4.d(this.c, q7Var.c) && pe4.d(this.d, q7Var.d);
    }

    @Override // defpackage.jl0
    public final jl0 getCopy() {
        return new q7(this.a, this.b, this.c, this.d);
    }

    @Override // defpackage.jl0
    public final String getItemId() {
        return String.valueOf(this.a);
    }

    public final int hashCode() {
        int iHashCode = Integer.hashCode(this.a) * 31;
        Integer num = this.b;
        int iHashCode2 = (iHashCode + (num == null ? 0 : num.hashCode())) * 31;
        String str = this.c;
        int iHashCode3 = (iHashCode2 + (str == null ? 0 : str.hashCode())) * 31;
        Integer num2 = this.d;
        return iHashCode3 + (num2 != null ? num2.hashCode() : 0);
    }

    public final String toString() {
        return "AccountItem(id=" + this.a + ", titleRes=" + this.b + ", title=" + this.c + ", iconRes=" + this.d + ")";
    }
}
