package defpackage;

import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class dd0 extends xz1 {
    public final List a;

    public dd0(List list) {
        this.a = list;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof xz1)) {
            return false;
        }
        return this.a.equals(((dd0) ((xz1) obj)).a);
    }

    public final int hashCode() {
        return this.a.hashCode() ^ 1000003;
    }

    public final String toString() {
        return dj7.o(new StringBuilder("RolloutsState{rolloutAssignments="), this.a, "}");
    }
}
