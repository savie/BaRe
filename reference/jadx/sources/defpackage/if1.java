package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class if1 extends od2 {
    public final Object i;

    public if1(Object obj) {
        obj.getClass();
        this.i = obj;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof if1) && pe4.d(this.i, ((if1) obj).i);
    }

    public final int hashCode() {
        return this.i.hashCode();
    }

    public final String toString() {
        return "Copied(sourceValue=" + this.i + ")";
    }
}
