package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class sg1 extends l73 {
    public final boolean n;

    public sg1(boolean z) {
        this.n = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof sg1) && this.n == ((sg1) obj).n;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.n);
    }

    public final String toString() {
        return "Attempted(started=" + this.n + ")";
    }
}
