package defpackage;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class hz6 {
    public final String a;
    public final q63 b;
    public final boolean c;
    public final List d;
    public final List e;

    public hz6(String str, q63 q63Var, boolean z, ArrayList arrayList, ArrayList arrayList2, int i) {
        arrayList = (i & 8) != 0 ? null : arrayList;
        arrayList2 = (i & 16) != 0 ? null : arrayList2;
        str.getClass();
        q63Var.getClass();
        this.a = str;
        this.b = q63Var;
        this.c = z;
        this.d = arrayList;
        this.e = arrayList2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof hz6)) {
            return false;
        }
        hz6 hz6Var = (hz6) obj;
        return pe4.d(this.a, hz6Var.a) && pe4.d(this.b, hz6Var.b) && this.c == hz6Var.c && pe4.d(this.d, hz6Var.d) && pe4.d(this.e, hz6Var.e);
    }

    public final int hashCode() {
        int iH = fz5.h((this.b.a.hashCode() + (this.a.hashCode() * 31)) * 31, 31, this.c);
        List list = this.d;
        int iHashCode = (iH + (list == null ? 0 : list.hashCode())) * 31;
        List list2 = this.e;
        return iHashCode + (list2 != null ? list2.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Entry(name=");
        sb.append(this.a);
        sb.append(", sourceFile=");
        sb.append(this.b);
        sb.append(", includeRootDirectory=");
        sb.append(this.c);
        sb.append(", includePaths=");
        sb.append(this.d);
        sb.append(", excludePaths=");
        return dj7.o(sb, this.e, ")");
    }
}
