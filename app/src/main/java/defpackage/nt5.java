package defpackage;

import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class nt5 {
    public final ArrayList a;
    public final Long b;

    public nt5(ArrayList arrayList, Long l) {
        this.a = arrayList;
        this.b = l;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof nt5)) {
            return false;
        }
        nt5 nt5Var = (nt5) obj;
        return this.a.equals(nt5Var.a) && pe4.d(this.b, nt5Var.b);
    }

    public final int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        Long l = this.b;
        return iHashCode + (l == null ? 0 : l.hashCode());
    }

    public final String toString() {
        return "OneDriveBatchDeleteResult(failedPaths=" + this.a + ", retryAfterMillis=" + this.b + ")";
    }
}
