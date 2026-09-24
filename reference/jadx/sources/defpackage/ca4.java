package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ca4 {
    public final float a;
    public final String b;

    public ca4(String str, float f) {
        this.a = f;
        this.b = str;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Dimension{value=");
        sb.append(this.a);
        sb.append(", unit='");
        return dj7.n(sb, this.b, "'}");
    }
}
