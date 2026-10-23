package defpackage;

import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class eb1 extends xh8 {
    public final Set q;

    public eb1(Set set) {
        this.q = set;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof eb1) && this.q.equals(((eb1) obj).q);
    }

    public final int hashCode() {
        return this.q.hashCode();
    }

    public final String toString() {
        return "Success(references=" + this.q + ")";
    }
}
