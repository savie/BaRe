package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ys3 {
    public final fd1 a;
    public final String b;
    public final int c;
    public final String d;
    public final String e;
    public final String f;

    public ys3(fd1 fd1Var, String str, int i, String str2, String str3, String str4) {
        fd1Var.getClass();
        str3.getClass();
        this.a = fd1Var;
        this.b = str;
        this.c = i;
        this.d = str2;
        this.e = str3;
        this.f = str4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ys3)) {
            return false;
        }
        ys3 ys3Var = (ys3) obj;
        return this.a == ys3Var.a && this.b.equals(ys3Var.b) && this.c == ys3Var.c && this.d.equals(ys3Var.d) && pe4.d(this.e, ys3Var.e) && pe4.d(this.f, ys3Var.f);
    }

    public final int hashCode() {
        int iG = fz5.g(fz5.g(eq3.d(this.c, fz5.g(this.a.hashCode() * 31, 31, this.b), 31), 31, this.d), 31, this.e);
        String str = this.f;
        return iG + (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("FtpClientIdentity(protocol=");
        sb.append(this.a);
        sb.append(", host=");
        sb.append(this.b);
        sb.append(", port=");
        sb.append(this.c);
        sb.append(", path=");
        sb.append(this.d);
        sb.append(", username=");
        return eq3.o(sb, this.e, ", password=", this.f, ")");
    }
}
