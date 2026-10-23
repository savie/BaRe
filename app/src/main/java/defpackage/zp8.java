package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class zp8 {
    public tp7 a;
    public int b;

    public final boolean equals(Object obj) {
        if (obj instanceof zp8) {
            return ((zp8) obj).a == this.a;
        }
        return ((p5) obj).get() == this.a;
    }

    public final int hashCode() {
        return this.b;
    }
}
