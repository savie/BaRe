package defpackage;

import java.util.List;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class y37 implements jl0 {
    public final String a;
    public final w37 b;
    public final boolean c;
    public final boolean d;
    public final int e;
    public final String f;
    public final List k;
    public final Set n;
    public final boolean p;

    public y37(String str, w37 w37Var, boolean z, boolean z2, int i, String str2, List list, Set set, boolean z3) {
        str.getClass();
        w37Var.getClass();
        str2.getClass();
        list.getClass();
        set.getClass();
        this.a = str;
        this.b = w37Var;
        this.c = z;
        this.d = z2;
        this.e = i;
        this.f = str2;
        this.k = list;
        this.n = set;
        this.p = z3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof y37)) {
            return false;
        }
        y37 y37Var = (y37) obj;
        return pe4.d(this.a, y37Var.a) && this.b == y37Var.b && this.c == y37Var.c && this.d == y37Var.d && this.e == y37Var.e && pe4.d(this.f, y37Var.f) && pe4.d(this.k, y37Var.k) && pe4.d(this.n, y37Var.n) && this.p == y37Var.p;
    }

    @Override // defpackage.jl0
    public final jl0 getCopy() {
        String str = this.a;
        str.getClass();
        w37 w37Var = this.b;
        w37Var.getClass();
        String str2 = this.f;
        str2.getClass();
        List list = this.k;
        list.getClass();
        Set set = this.n;
        set.getClass();
        return new y37(str, w37Var, this.c, this.d, this.e, str2, list, set, this.p);
    }

    @Override // defpackage.jl0
    public final String getItemId() {
        return this.a + ":" + this.b;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.p) + ((this.n.hashCode() + fz5.i(this.k, fz5.g(eq3.d(this.e, fz5.h(fz5.h((this.b.hashCode() + (this.a.hashCode() * 31)) * 31, 31, this.c), 31, this.d), 31), 31, this.f), 31)) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("SchedulePropItem(scheduleItemId=");
        sb.append(this.a);
        sb.append(", propType=");
        sb.append(this.b);
        sb.append(", isEnabled=");
        sb.append(this.c);
        sb.append(", isError=");
        sb.append(this.d);
        sb.append(", iconRes=");
        sb.append(this.e);
        sb.append(", title=");
        sb.append(this.f);
        sb.append(", valueItems=");
        sb.append(this.k);
        sb.append(", labels=");
        sb.append(this.n);
        sb.append(", showDivider=");
        return dj7.p(sb, this.p, ")");
    }

    public /* synthetic */ y37(String str, w37 w37Var, boolean z, boolean z2, int i, String str2, List list, Set set, int i2) {
        this(str, w37Var, z, (i2 & 8) != 0 ? false : z2, i, str2, list, (i2 & 128) != 0 ? sv2.a : set, false);
    }
}
