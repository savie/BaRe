package defpackage;

import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class v54 {
    public final String a;
    public final List b;
    public final List c;
    public final List d;
    public final int e;
    public final int f;
    public final int g;
    public final boolean h;
    public final boolean i;

    public v54(String str, List list, List list2, List list3, int i, int i2, int i3, boolean z, boolean z2) {
        this.a = str;
        this.b = list;
        this.c = list2;
        this.d = list3;
        this.e = i;
        this.f = i2;
        this.g = i3;
        this.h = z;
        this.i = z2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof v54)) {
            return false;
        }
        v54 v54Var = (v54) obj;
        return pe4.d(this.a, v54Var.a) && pe4.d(this.b, v54Var.b) && pe4.d(this.c, v54Var.c) && pe4.d(this.d, v54Var.d) && this.e == v54Var.e && this.f == v54Var.f && this.g == v54Var.g && this.h == v54Var.h && this.i == v54Var.i;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.i) + fz5.h(eq3.d(this.g, eq3.d(this.f, eq3.d(this.e, fz5.i(this.d, fz5.i(this.c, fz5.i(this.b, this.a.hashCode() * 31, 31), 31), 31), 31), 31), 31), 31, this.h);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("HomeSearchState(query=");
        sb.append(this.a);
        sb.append(", shortcuts=");
        sb.append(this.b);
        sb.append(", quickActions=");
        sb.append(this.c);
        sb.append(", results=");
        sb.append(this.d);
        sb.append(", quickActionsCount=");
        xs1.s(sb, this.e, ", appsCount=", this.f, ", foldersCount=");
        sb.append(this.g);
        sb.append(", canToggleSystemApps=");
        sb.append(this.h);
        sb.append(", showSystemAppsInSearch=");
        return dj7.p(sb, this.i, ")");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ v54() {
        ov2 ov2Var = ov2.a;
        this("", ov2Var, ov2Var, ov2Var, 0, 0, 0, false, false);
    }
}
