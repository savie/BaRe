package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class bn3 implements jl0 {
    public final q63 a;
    public final boolean b;
    public final boolean c;
    public final boolean d;
    public final String e;
    public final String f;
    public final String k;

    public bn3(q63 q63Var, boolean z, boolean z2, boolean z3, String str, String str2, String str3) {
        q63Var.getClass();
        this.a = q63Var;
        this.b = z;
        this.c = z2;
        this.d = z3;
        this.e = str;
        this.f = str2;
        this.k = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof bn3)) {
            return false;
        }
        bn3 bn3Var = (bn3) obj;
        return pe4.d(this.a, bn3Var.a) && this.b == bn3Var.b && this.c == bn3Var.c && this.d == bn3Var.d && this.e.equals(bn3Var.e) && this.f.equals(bn3Var.f) && this.k.equals(bn3Var.k);
    }

    @Override // defpackage.jl0
    public final jl0 getCopy() {
        q63 q63Var = this.a;
        q63Var.getClass();
        return new bn3(q63Var, this.b, this.c, this.d, this.e, this.f, this.k);
    }

    @Override // defpackage.jl0
    public final String getItemId() {
        return this.f;
    }

    public final int hashCode() {
        return this.k.hashCode() + fz5.g(fz5.g(fz5.h(fz5.h(fz5.h(this.a.a.hashCode() * 31, 31, this.b), 31, this.c), 31, this.d), 31, this.e), 31, this.f);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("FolderPickerItem(file=");
        sb.append(this.a);
        sb.append(", isSelectable=");
        sb.append(this.b);
        sb.append(", isFile=");
        sb.append(this.c);
        sb.append(", isDirectory=");
        sb.append(this.d);
        sb.append(", name=");
        xs1.t(sb, this.e, ", path=", this.f, ", displayName=");
        return dj7.n(sb, this.k, ")");
    }
}
