package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class l10 implements jl0 {
    public final String a;
    public final nd3 b;

    public l10(String str, nd3 nd3Var) {
        str.getClass();
        this.a = str;
        this.b = nd3Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof l10)) {
            return false;
        }
        l10 l10Var = (l10) obj;
        return pe4.d(this.a, l10Var.a) && this.b.equals(l10Var.b);
    }

    @Override // defpackage.jl0
    public final jl0 getCopy() {
        String str = this.a;
        str.getClass();
        return new l10(str, this.b);
    }

    @Override // defpackage.jl0
    public final String getItemId() {
        return this.a;
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "AppliedFilterItem(title=" + this.a + ", mode=" + this.b + ")";
    }
}
