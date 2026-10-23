package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class uj2 implements jl0 {
    public final int a;
    public final CharSequence b;
    public final CharSequence c;
    public final mt3 d;

    public uj2(int i, CharSequence charSequence, CharSequence charSequence2, mt3 mt3Var) {
        charSequence2.getClass();
        this.a = i;
        this.b = charSequence;
        this.c = charSequence2;
        this.d = mt3Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof uj2)) {
            return false;
        }
        uj2 uj2Var = (uj2) obj;
        return this.a == uj2Var.a && this.b.equals(uj2Var.b) && pe4.d(this.c, uj2Var.c) && this.d.equals(uj2Var.d);
    }

    @Override // defpackage.jl0
    public final jl0 getCopy() {
        CharSequence charSequence = this.c;
        charSequence.getClass();
        return new uj2(this.a, this.b, charSequence, this.d);
    }

    @Override // defpackage.jl0
    public final String getItemId() {
        return this.b.toString();
    }

    public final int hashCode() {
        return this.d.hashCode() + ((this.c.hashCode() + ((this.b.hashCode() + (Integer.hashCode(this.a) * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "DetailChipItem(iconRes=" + this.a + ", title=" + ((Object) this.b) + ", subtitle=" + ((Object) this.c) + ", onClick=" + this.d + ")";
    }
}
