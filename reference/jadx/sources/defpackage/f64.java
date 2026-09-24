package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class f64 {
    public final String a;
    public final String b;
    public final boolean c;

    public f64(String str, String str2, boolean z) {
        this.a = str;
        this.b = str2;
        this.c = z;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("http");
        sb.append(this.c ? "s" : "");
        sb.append("://");
        sb.append(this.a);
        return sb.toString();
    }
}
