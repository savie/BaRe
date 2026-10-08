package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class u55 implements jl0 {
    public final int a;
    public final String b;
    public final Long c;
    public final String d;
    public final boolean e;
    public final boolean f;

    public u55(int i, String str, Long l, String str2, boolean z, boolean z2) {
        str.getClass();
        str2.getClass();
        this.a = i;
        this.b = str;
        this.c = l;
        this.d = str2;
        this.e = z;
        this.f = z2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof u55)) {
            return false;
        }
        u55 u55Var = (u55) obj;
        return this.a == u55Var.a && pe4.d(this.b, u55Var.b) && pe4.d(this.c, u55Var.c) && pe4.d(this.d, u55Var.d) && this.e == u55Var.e && this.f == u55Var.f;
    }

    @Override // defpackage.jl0
    public final jl0 getCopy() {
        String str = this.b;
        str.getClass();
        String str2 = this.d;
        str2.getClass();
        return new u55(this.a, str, this.c, str2, this.e, this.f);
    }

    @Override // defpackage.jl0
    public final String getItemId() {
        return this.b;
    }

    public final int hashCode() {
        int iG = fz5.g(Integer.hashCode(this.a) * 31, 31, this.b);
        Long l = this.c;
        return Boolean.hashCode(this.f) + fz5.h(fz5.g((iG + (l == null ? 0 : l.hashCode())) * 31, 31, this.d), 31, this.e);
    }

    public final String toString() {
        return "ManageSpaceItem(id=" + this.a + ", title=" + this.b + ", size=" + this.c + ", summary=" + this.d + ", isDangerous=" + this.e + ", hideButton=" + this.f + ")";
    }
}
