package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class xa1 extends jm1 {
    public final Exception g;

    public xa1(Exception exc) {
        exc.getClass();
        this.g = exc;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof xa1) && pe4.d(this.g, ((xa1) obj).g);
    }

    public final int hashCode() {
        return this.g.hashCode();
    }

    public final String toString() {
        return "Error(error=" + this.g + ")";
    }
}
