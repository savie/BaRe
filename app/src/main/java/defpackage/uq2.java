package defpackage;

import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class uq2 {
    public final boolean a;
    public final String b;
    public final List c;

    public uq2(String str, List list, boolean z) {
        this.a = z;
        this.b = str;
        this.c = list;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof uq2)) {
            return false;
        }
        uq2 uq2Var = (uq2) obj;
        return this.a == uq2Var.a && pe4.d(this.b, uq2Var.b) && pe4.d(this.c, uq2Var.c);
    }

    public final int hashCode() {
        int iHashCode = Boolean.hashCode(this.a) * 31;
        String str = this.b;
        return this.c.hashCode() + ((iHashCode + (str == null ? 0 : str.hashCode())) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("DropboxDeleteBatchResultEntry(isFailure=");
        sb.append(this.a);
        sb.append(", errorSummary=");
        sb.append(this.b);
        sb.append(", errorTagPath=");
        return dj7.o(sb, this.c, ")");
    }

    public /* synthetic */ uq2(boolean z) {
        this(null, ov2.a, z);
    }
}
