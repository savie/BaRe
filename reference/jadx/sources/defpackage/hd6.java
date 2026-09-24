package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class hd6 implements jl0 {
    public final zc6 a;

    public hd6(zc6 zc6Var) {
        zc6Var.getClass();
        this.a = zc6Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof hd6) && pe4.d(this.a, ((hd6) obj).a);
    }

    @Override // defpackage.jl0
    public final jl0 getCopy() {
        zc6 zc6Var = this.a;
        zc6Var.getClass();
        return new hd6(zc6Var);
    }

    @Override // defpackage.jl0
    public final String getItemId() {
        return this.a.a;
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return "AdapterItem(quickActionItem=" + this.a + ")";
    }
}
