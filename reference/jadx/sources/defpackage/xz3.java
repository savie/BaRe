package defpackage;

import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class xz3 {
    public final ArrayList a;
    public final Long b;
    public final ArrayList c;

    public xz3(ArrayList arrayList, Long l, ArrayList arrayList2) {
        this.a = arrayList;
        this.b = l;
        this.c = arrayList2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof xz3)) {
            return false;
        }
        xz3 xz3Var = (xz3) obj;
        return this.a.equals(xz3Var.a) && pe4.d(this.b, xz3Var.b) && this.c.equals(xz3Var.c);
    }

    public final int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        Long l = this.b;
        return this.c.hashCode() + ((iHashCode + (l == null ? 0 : l.hashCode())) * 31);
    }

    public final String toString() {
        return "GoogleDriveBatchDeleteResult(failedIds=" + this.a + ", retryAfterMillis=" + this.b + ", failures=" + this.c + ")";
    }
}
