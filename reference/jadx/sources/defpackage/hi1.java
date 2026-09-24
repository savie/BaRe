package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class hi1 extends pe4 {
    public final Exception m;

    public hi1(Exception exc) {
        exc.getClass();
        this.m = exc;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof hi1) && pe4.d(this.m, ((hi1) obj).m);
    }

    public final int hashCode() {
        return this.m.hashCode();
    }

    public final String toString() {
        return "Error(error=" + this.m + ")";
    }
}
