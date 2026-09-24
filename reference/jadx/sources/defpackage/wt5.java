package defpackage;

import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class wt5 {
    public final boolean a;
    public final pt5 b;
    public final List c;

    public wt5(boolean z, pt5 pt5Var, List list) {
        this.a = z;
        this.b = pt5Var;
        this.c = list;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof wt5)) {
            return false;
        }
        wt5 wt5Var = (wt5) obj;
        return this.a == wt5Var.a && pe4.d(this.b, wt5Var.b) && this.c.equals(wt5Var.c);
    }

    public final int hashCode() {
        int iHashCode = Boolean.hashCode(this.a) * 31;
        pt5 pt5Var = this.b;
        return this.c.hashCode() + ((iHashCode + (pt5Var == null ? 0 : pt5Var.hashCode())) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("OneDriveUploadChunkResult(isComplete=");
        sb.append(this.a);
        sb.append(", item=");
        sb.append(this.b);
        sb.append(", nextExpectedRanges=");
        return dj7.o(sb, this.c, ")");
    }
}
