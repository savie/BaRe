package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class fj7 implements jl0 {
    public final sx a;
    public final String b;
    public final int c;
    public boolean d;
    public boolean e;

    public fj7(sx sxVar, String str, int i, boolean z, boolean z2) {
        sxVar.getClass();
        str.getClass();
        this.a = sxVar;
        this.b = str;
        this.c = i;
        this.d = z;
        this.e = z2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof fj7)) {
            return false;
        }
        fj7 fj7Var = (fj7) obj;
        return this.a == fj7Var.a && pe4.d(this.b, fj7Var.b) && this.c == fj7Var.c && this.d == fj7Var.d && this.e == fj7Var.e;
    }

    @Override // defpackage.jl0
    public final jl0 getCopy() {
        boolean z = this.d;
        boolean z2 = this.e;
        sx sxVar = this.a;
        sxVar.getClass();
        String str = this.b;
        str.getClass();
        return new fj7(sxVar, str, this.c, z, z2);
    }

    @Override // defpackage.jl0
    public final String getItemId() {
        return this.b;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.e) + fz5.h(eq3.d(this.c, fz5.g(this.a.hashCode() * 31, 31, this.b), 31), 31, this.d);
    }

    public final String toString() {
        boolean z = this.d;
        boolean z2 = this.e;
        StringBuilder sb = new StringBuilder("SortItem(mode=");
        sb.append(this.a);
        sb.append(", title=");
        sb.append(this.b);
        sb.append(", iconRes=");
        sb.append(this.c);
        sb.append(", isChecked=");
        sb.append(z);
        sb.append(", isAscending=");
        return dj7.p(sb, z2, ")");
    }

    public /* synthetic */ fj7(sx sxVar, String str, int i) {
        this(sxVar, str, i, false, false);
    }
}
