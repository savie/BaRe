package defpackage;

import java.io.File;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ey6 {
    public final String a;
    public final File b;
    public final boolean c;
    public final List d;
    public final List e;

    public ey6(String str, File file, boolean z, List list, List list2) {
        str.getClass();
        file.getClass();
        this.a = str;
        this.b = file;
        this.c = z;
        this.d = list;
        this.e = list2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ey6)) {
            return false;
        }
        ey6 ey6Var = (ey6) obj;
        return pe4.d(this.a, ey6Var.a) && pe4.d(this.b, ey6Var.b) && this.c == ey6Var.c && pe4.d(this.d, ey6Var.d) && pe4.d(this.e, ey6Var.e);
    }

    public final int hashCode() {
        int iH = fz5.h((this.b.hashCode() + (this.a.hashCode() * 31)) * 31, 31, this.c);
        List list = this.d;
        int iHashCode = (iH + (list == null ? 0 : list.hashCode())) * 31;
        List list2 = this.e;
        return iHashCode + (list2 != null ? list2.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("SbaArchiveEntry(name=");
        sb.append(this.a);
        sb.append(", source=");
        sb.append(this.b);
        sb.append(", includeRootDirectory=");
        sb.append(this.c);
        sb.append(", includePaths=");
        sb.append(this.d);
        sb.append(", excludePaths=");
        return dj7.o(sb, this.e, ")");
    }
}
