package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class r00 implements jl0 {
    public final String a;
    public final String b;

    public r00(String str, String str2) {
        this.a = str;
        this.b = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof r00)) {
            return false;
        }
        r00 r00Var = (r00) obj;
        return this.a.equals(r00Var.a) && this.b.equals(r00Var.b);
    }

    @Override // defpackage.jl0
    public final jl0 getCopy() {
        return new r00(this.a, this.b);
    }

    @Override // defpackage.jl0
    public final String getItemId() {
        return this.b;
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return eq3.l("AppVisibilityPackage(appLabel=", this.a, ", packageName=", this.b, ")");
    }
}
