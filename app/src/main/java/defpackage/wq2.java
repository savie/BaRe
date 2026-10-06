package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class wq2 implements zq2 {
    public final String a;
    public final String b;
    public final String c;

    public wq2(String str, String str2, String str3) {
        this.a = str;
        this.b = str2;
        this.c = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof wq2)) {
            return false;
        }
        wq2 wq2Var = (wq2) obj;
        return pe4.d(this.a, wq2Var.a) && this.b.equals(wq2Var.b) && pe4.d(this.c, wq2Var.c);
    }

    public final int hashCode() {
        String str = this.a;
        int iG = fz5.g((str == null ? 0 : str.hashCode()) * 31, 31, this.b);
        String str2 = this.c;
        return iG + (str2 != null ? str2.hashCode() : 0);
    }

    public final String toString() {
        return dj7.n(u48.p("DropboxFolder(id=", this.a, ", name=", this.b, ", pathDisplay="), this.c, ")");
    }
}
