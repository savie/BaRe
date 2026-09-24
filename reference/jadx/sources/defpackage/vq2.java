package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class vq2 implements zq2 {
    public final String a;
    public final String b;
    public final long c;
    public final long d;
    public final long e;
    public final String f;

    public vq2(String str, String str2, long j, long j2, long j3, String str3) {
        this.a = str;
        this.b = str2;
        this.c = j;
        this.d = j2;
        this.e = j3;
        this.f = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof vq2)) {
            return false;
        }
        vq2 vq2Var = (vq2) obj;
        return pe4.d(this.a, vq2Var.a) && this.b.equals(vq2Var.b) && this.c == vq2Var.c && this.d == vq2Var.d && this.e == vq2Var.e && pe4.d(this.f, vq2Var.f);
    }

    public final int hashCode() {
        String str = this.a;
        int iF = xs1.f(this.e, xs1.f(this.d, xs1.f(this.c, fz5.g((str == null ? 0 : str.hashCode()) * 31, 31, this.b), 31), 31), 31);
        String str2 = this.f;
        return iF + (str2 != null ? str2.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbP = u48.p("DropboxFile(id=", this.a, ", name=", this.b, ", size=");
        sbP.append(this.c);
        fz5.r(sbP, ", clientModifiedMillis=", this.d, ", serverModifiedMillis=");
        sbP.append(this.e);
        sbP.append(", pathDisplay=");
        sbP.append(this.f);
        sbP.append(")");
        return sbP.toString();
    }
}
