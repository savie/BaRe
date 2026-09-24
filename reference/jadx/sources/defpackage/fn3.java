package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class fn3 implements jl0 {
    public final q63 a;
    public final boolean b;
    public final boolean c;
    public final String d;
    public final String e;
    public final String f;

    public fn3(q63 q63Var, boolean z, boolean z2, String str, String str2, String str3) {
        q63Var.getClass();
        str.getClass();
        str2.getClass();
        this.a = q63Var;
        this.b = z;
        this.c = z2;
        this.d = str;
        this.e = str2;
        this.f = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof fn3)) {
            return false;
        }
        fn3 fn3Var = (fn3) obj;
        return pe4.d(this.a, fn3Var.a) && this.b == fn3Var.b && this.c == fn3Var.c && pe4.d(this.d, fn3Var.d) && pe4.d(this.e, fn3Var.e) && pe4.d(this.f, fn3Var.f);
    }

    @Override // defpackage.jl0
    public final jl0 getCopy() {
        q63 q63Var = this.a;
        q63Var.getClass();
        String str = this.d;
        str.getClass();
        String str2 = this.e;
        str2.getClass();
        return new fn3(q63Var, this.b, this.c, str, str2, this.f);
    }

    @Override // defpackage.jl0
    public final String getItemId() {
        return this.d;
    }

    public final int hashCode() {
        int iG = fz5.g(fz5.g(fz5.h(fz5.h(this.a.a.hashCode() * 31, 31, this.b), 31, this.c), 31, this.d), 31, this.e);
        String str = this.f;
        return iG + (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("FolderPickerNavigationItem(folder=");
        sb.append(this.a);
        sb.append(", isSelected=");
        sb.append(this.b);
        sb.append(", isRoot=");
        sb.append(this.c);
        sb.append(", path=");
        sb.append(this.d);
        sb.append(", name=");
        return eq3.o(sb, this.e, ", displayName=", this.f, ")");
    }

    public /* synthetic */ fn3(q63 q63Var, boolean z, boolean z2, String str) {
        this(q63Var, z, z2, q63Var.v(), q63Var.p(), str);
    }
}
